#!/usr/bin/perl
#**********************************************************************************
#
# Makefile generation for SILAM
#
#**********************************************************************************
# J. Vira 2008
#
# usage: depend.pl FILELIST MAIN_PROGRAM PLATFORM
#
# example: depend.pl source_list.txt silam_main linux_intel
#
# The source file silam_main.f90 will be taken as the main program.
#
# The script scans the fortran source files contained in the text file FILELIST, and
# uses the information to write the files source_build_rules and all_object_codes.
# These are in turn included into the SILAM makefile. Two versions of source_build_rules
# are generated: the full version lists the actual dependencies of each module,
# while in the simple version each module is considered to only depende on its own
# source code. The machine-dependent (md) file corresponding to PLATFORM
# will be used.

#use warnings;
use File::Spec;

#my $rootfile = "silam_main.f90"; # The topmost object is specified here.
die(usage()) if (@ARGV < 2);
my ($filelist, $rootfile) = @ARGV;

my $srcdirname = '$(SRCDIR)';

# The "external" modules. Dependency to these is not included in the
# resulting makefile.

my @external = qw(iflport ifport omp_lib netcdf pnetcdf ifcore grib_api iso_c_binding iso_fortran_env mpi omp_lib_kinds eccodes psapi);

# Fixed form source files

my @fixed_files = qw(fortran_libraries bfgs m1qn3);

# Special compiler options

my %specials = (qr/cbm4_integrator/i => '-O1',
                qr/netcdf/ => '-O0',
                qr/fishpack.silam/i => '-fno-fast-math',
    );


# Instead of using two lines for the compilation and 'mv *.o ...' commands,
# we can use one line. The difference is that this permits using the -j
# switch to compile in parallel.

my $use_semicolon = 1;

open(my $fh, "<$filelist") or die;

# Additional files: comment in or out:

# print the direct dependencies of each module.
#open(my $fhex, ">dependences.ex") or die;
# print the list of objects, starting from the bottom
#open(our $fhtree, ">dependences.hr") or die;
# make dot description
open(our $fhdot, ">$rootfile.dot") or die;

print $fhdot "digraph silam \{\nnode [shape=box, width=3]\n" if defined($fhdot);

open(my $fmake, ">$rootfile.rules.full") or die;
open(my $fh_objects, ">$rootfile.objects") or die;
open(my $fh_make_simple, ">$rootfile.rules.simple") or die;

my @sourcefiles = <$fh>;
close($fh);

# Just for fun (mostly), we actually build the dependence network
# into memory to later find the real order of dependence.

our %deptree;
my %modname2fn; # this translates the module names to file names.
my ($modname, $uses, $root_module, $makef_itemcounter, $fixed, $modname_lc);
our @stack;
$in_type_def = 0;
SOURCEFILE: foreach my $file_path(@sourcefiles) {
    $makef_itemcounter = 1;
    my $is_program = 0;
    my $openmp = '';
    chop $file_path;
    $fixed = ''; # a special flag for fortran_libraries
    $special = '';
    my ($vol, $dir, $fn) = File::Spec->splitpath($file_path); # get the basename of the file

    open (my $fh2,"<$file_path") or die $!;
    #print "$fn: \n";
    foreach (@fixed_files) {
        $fixed = '$(FIXED)' if ($fn =~ /$_/i);
    }
    foreach (keys(%specials)) {
        $special = sprintf("%s %s", $special, $specials{$_}) if ($fn =~ $_);
    }

    $modname = "";
    my $use_array = [];

    while (my $line = <$fh2>) {
        if (($line =~ /(^\s*)module/i || $line =~ /^\s*program/i) && !$modname) {
            # The header line of a module (or the program)
            $is_program = ($line =~ /^\s*program/i);
            ($modname) = ($line =~ /^\s*(?:module|program) +(\w*)/i);
            $modname =~ s/ //g;
            $modname = lc($modname);
            print $fhex "$modname \n" if (defined($fhex));
            if (defined($fmake)) {
                # write the name of object and its source file.
                if ($is_program) {
                    print $fmake "\$(OBJDIR)${modname}.o : ${srcdirname}$fn ";
                    print $fh_make_simple "\$(OBJDIR)${modname}.o : ${srcdirname}$fn ";
                } else {
                    print $fmake "\$(OBJDIR)${modname}.mod.o : ${srcdirname}$fn ";
                    print $fh_make_simple "\$(OBJDIR)${modname}.mod.o : ${srcdirname}$fn ";
                }
            }

            $modname2fn{$modname} = $fn;
            $deptree{$modname} = {'links',[], 'visited', 0};
            if ($fn eq "$rootfile.f90") { $root_module = $modname; }
        }
        elsif  ($line =~ /^ *(?:\!\$)? *use /i) {
            # Then check the USE statements (note the !$ conditional before possible omp_lib).
            ($uses) = ($line =~ /^ *(?:\!\$)? *use +(\w*)/i);
            $uses = lc($uses);
            $openmp = '$(OPENMP)' if ($uses =~ /omp_lib/i);
            next if (grep(/$uses/, @external));
            print $fhex "  $uses \n" if (defined($fhex));
            if (defined($fmake)) {
                print $fmake "\$(OBJDIR)${uses}.mod.o "; # write the additional dependencies.
            }
            if (defined($fhdot) && !(grep(/$uses/, @$use_array))) {
              print $fhdot "$modname -> $uses \n";
            }
            #print $fmake "\\ \n" if !($makef_itemcounter % 3);
            push @$use_array, $uses;
            $makef_itemcounter++;
        }# elsif ($line =~ /implicit/i) {
         #   last; # no USE statements will occur after this.
        #}

        # Check if this module has default private visibility - scan
        # for the lone 'private' keyword - but it must be outside a
        # derived type definition.

        # check for the beginning of typedef
        $in_type_def = $in_type_def || ($line =~ /^\s*type +\w+\s*$/i);
        # check for the end of typedef
        if ($in_type_def && $line =~ /^\s*end *type/i) { $in_type_def = 0; }

        if (defined($fhdot) && !$in_type_def && ($line =~ /^\s*private\s*$/i || $line =~ /^\s*private\s*\!/i)) {
            #print "private: $modname\n";
            print $fhdot "$modname [style=bold]\n";
        }
    }

    $deptree{$modname}->{'links'} = $use_array;
    close($fh2);
    # Now write the commands.
    if (defined($fmake)) {
        unless ($is_program) {
            print $fmake "\n\t\$(F90C) \$(FFLAGS) \$(PREPROCESS) -c $special $fixed $openmp -o \$(OBJDIR)${modname}.mod.o \$(SRCDIR)${fn}";
            #print $fmake "|revision \n\t\$(F90C) \$(FFLAGS) -c $special $fixed $openmp -o \$(OBJDIR)${modname}.mod.o \$(SRCDIR)${fn}";
            #print $fh_make_simple "|revision \n\t\$(F90C) \$(FFLAGS) -c $special $fixed $openmp -o \$(OBJDIR)${modname}.mod.o \$(SRCDIR)${fn}";
            print $fh_make_simple "\n\t\$(F90C) \$(FFLAGS) \$(PREPROCESS) -c $special $fixed $openmp -o \$(OBJDIR)${modname}.mod.o \$(SRCDIR)${fn}";
            if ($use_semicolon) {
                print $fmake "&& mv ${modname}.mod \$(OBJDIR)";
                print $fh_make_simple "&& mv ${modname}.mod \$(OBJDIR)";
            } else {
                print $fmake "\n\tmv *.mod \$(OBJDIR)";
                print $fh_make_simple "\n\tmv *.mod \$(OBJDIR)";
            }
        } else {
            print $fmake "\n\t\$(F90C) \$(FFLAGS) \$(PREPROCESS)  -c $special $fixed $openmp -o \$(OBJDIR)${modname}.o \$(SRCDIR)${fn}";
            print $fh_make_simple "\n\t\$(F90C) \$(FFLAGS) \$(PREPROCESS) -c $special $fixed $openmp -o \$(OBJDIR)${modname}.o \$(SRCDIR)${fn}";
        }
        print $fh_make_simple "\n\n";
        print $fmake "\n\n";
    }
}

print $fhdot '}' if defined($fhdot);
# alternative way to write the makefile

#foreach $modname(keys %modname2fn) {
#    #print $fh_objects "\n  \$(OBJDIR)${modname}.mod.o";
#    next;
#    $fixed = '-fixed' if ($modname =~ /fortran_libraries/);
#    my $depend_ptr = $deptree{$modname}->{'links'};
#    $fn = $modname2fn{$modname};
#    (my $module_object = $fn) =~ s/f90/o/;
#    #print $module_object;
#    printf $fmake "%s : ${srcdirname}%s","\$(OBJDIR)${module_object}", $modname2fn{$modname};
#    foreach my $dependency(@$depend_ptr) {
#        (my $module_object2 = $modname2fn{$dependency}) =~ s/f90/o/;
#        print "Dependecy $modname not found, assuming external....\n" if !$module_object2;
#        print $fmake " \$(OBJDIR)${module_object2}"
#    }
#    print $fmake "\n\t\$(F90C) $fixed -o \$(OBJDIR)${module_object} \$(SRCDIR_MIKHAIL)${fn} \n\t\mv *.mod \$(OBJDIR)";
#    print $fmake "\n\n";
#    $fixed = '';
#}

# write the object file list
print $fh_objects 'COMMON_OBJS =' if (defined($fh_objects));

# We traverse the graph of dependecies, described by the %deptree.
# This way, the all_object_codes lists the objects in order of
# dependency.

visit($root_module);

foreach $fh(($fmake, $fhex, $fhtree, $fh_objects)) {
    (close $fh or die) if defined($fh);
}

#*******************************************************************************************************************
# End of the main program.
#*******************************************************************************************************************

sub visit($) {
    my $node = shift;
    my $children_ptr = $deptree{$node}->{'links'};
    my @children = @$children_ptr;
    my $child;
    # perform the depth-first search, recursively.

    $deptree{$node}->{'visited'} = 1;
    if (!@children) {
        print $fhtree "$node \n" if defined($fhtree);
        print $fh_objects  " \\\n\$(OBJDIR)${node}.mod.o" if defined($fh_objects);
        push @stack, $node;
        return;
    } else {
        while ($child = pop @children) {
            next unless $deptree{$child};
            visit($child) unless $deptree{$child}->{'visited'};
        }
    }

    print $fhtree "$node \n" if defined($fhtree);
    if ($node eq $root_module) {
        print $fh_objects  " \\\n\$(OBJDIR)${node}.o" if defined($fh_objects);
    } else {
        print $fh_objects  " \\\n\$(OBJDIR)${node}.mod.o" if defined($fh_objects);
    }
    push @stack, $node;
}

sub usage() {
    print "Usage: depend.pl FILELIST MAIN_FILE PLATFORM \n";
    exit(1);
}




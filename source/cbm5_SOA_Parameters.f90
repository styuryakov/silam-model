! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! Parameter Module File
! 
! Generated by KPP-2.2.3 symbolic chemistry Kinetics PreProcessor
!       (http://www.cs.vt.edu/~asandu/Software/KPP)
! KPP is distributed under GPL, the general public licence
!       (http://www.gnu.org/copyleft/gpl.html)
! (C) 1995-1997, V. Damian & A. Sandu, CGRER, Univ. Iowa
! (C) 1997-2005, A. Sandu, Michigan Tech, Virginia Tech
!     With important contributions from:
!        M. Damian, Villanova University, USA
!        R. Sander, Max-Planck Institute for Chemistry, Mainz, Germany
! 
! File                 : cbm5_SOA_Parameters.f90
! Time                 : Fri Apr 23 11:28:11 2021
! Working directory    : /fmi/scratch/project_2001411/risto/silam_dev-risto-CESM-test/kpp/cbm5_SOA
! Equation file        : cbm5_SOA.kpp
! Output root filename : cbm5_SOA
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



MODULE cbm5_SOA_Parameters

  USE cbm5_SOA_Precision
  PUBLIC
  SAVE


! NSPEC - Number of chemical species
  INTEGER, PARAMETER :: NSPEC = 69 
! NVAR - Number of Variable species
  INTEGER, PARAMETER :: NVAR = 64 
! NVARACT - Number of Active species
  INTEGER, PARAMETER :: NVARACT = 62 
! NFIX - Number of Fixed species
  INTEGER, PARAMETER :: NFIX = 5 
! NREACT - Number of reactions
  INTEGER, PARAMETER :: NREACT = 198 
! NVARST - Starting of variables in conc. vect.
  INTEGER, PARAMETER :: NVARST = 1 
! NFIXST - Starting of fixed in conc. vect.
  INTEGER, PARAMETER :: NFIXST = 65 
! NONZERO - Number of nonzero entries in Jacobian
  INTEGER, PARAMETER :: NONZERO = 603 
! LU_NONZERO - Number of nonzero entries in LU factoriz. of Jacobian
  INTEGER, PARAMETER :: LU_NONZERO = 669 
! CNVAR - (NVAR+1) Number of elements in compressed row format
  INTEGER, PARAMETER :: CNVAR = 65 
! NHESS - Length of Sparse Hessian
  INTEGER, PARAMETER :: NHESS = 636 
! NLOOKAT - Number of species to look at
  INTEGER, PARAMETER :: NLOOKAT = 69 
! NMONITOR - Number of species to monitor
  INTEGER, PARAMETER :: NMONITOR = 1 
! NMASS - Number of atoms to check mass balance
  INTEGER, PARAMETER :: NMASS = 1 

! Index declaration for variable species in C and VAR
!   VAR(ind_spc) = C(ind_spc)

  INTEGER, PARAMETER :: ind_AVB0 = 1 
  INTEGER, PARAMETER :: ind_AVB1e0 = 2 
  INTEGER, PARAMETER :: ind_AVB1e1 = 3 
  INTEGER, PARAMETER :: ind_AVB1e2 = 4 
  INTEGER, PARAMETER :: ind_AVB1e3 = 5 
  INTEGER, PARAMETER :: ind_BENZENE = 6 
  INTEGER, PARAMETER :: ind_AVB1e4 = 7 
  INTEGER, PARAMETER :: ind_AVB1e5 = 8 
  INTEGER, PARAMETER :: ind_AVB1e6 = 9 
  INTEGER, PARAMETER :: ind_BVB0 = 10 
  INTEGER, PARAMETER :: ind_BVB1e0 = 11 
  INTEGER, PARAMETER :: ind_BVB1e1 = 12 
  INTEGER, PARAMETER :: ind_BVB1e2 = 13 
  INTEGER, PARAMETER :: ind_BVB1e3 = 14 
  INTEGER, PARAMETER :: ind_SESQ = 15 
  INTEGER, PARAMETER :: ind_O1D = 16 
  INTEGER, PARAMETER :: ind_TOL = 17 
  INTEGER, PARAMETER :: ind_ETHA = 18 
  INTEGER, PARAMETER :: ind_MEOH = 19 
  INTEGER, PARAMETER :: ind_ETOH = 20 
  INTEGER, PARAMETER :: ind_N2O5 = 21 
  INTEGER, PARAMETER :: ind_XYL = 22 
  INTEGER, PARAMETER :: ind_PAN = 23 
  INTEGER, PARAMETER :: ind_HONO = 24 
  INTEGER, PARAMETER :: ind_H2O2 = 25 
  INTEGER, PARAMETER :: ind_FACD = 26 
  INTEGER, PARAMETER :: ind_AACD = 27 
  INTEGER, PARAMETER :: ind_PACD = 28 
  INTEGER, PARAMETER :: ind_PNA = 29 
  INTEGER, PARAMETER :: ind_TO2 = 30 
  INTEGER, PARAMETER :: ind_HCO3 = 31 
  INTEGER, PARAMETER :: ind_ROOH = 32 
  INTEGER, PARAMETER :: ind_MGLY = 33 
  INTEGER, PARAMETER :: ind_CRO = 34 
  INTEGER, PARAMETER :: ind_PANX = 35 
  INTEGER, PARAMETER :: ind_ROR5 = 36 
  INTEGER, PARAMETER :: ind_MEPX = 37 
  INTEGER, PARAMETER :: ind_CO = 38 
  INTEGER, PARAMETER :: ind_OPEN = 39 
  INTEGER, PARAMETER :: ind_HNO3 = 40 
  INTEGER, PARAMETER :: ind_ETH = 41 
  INTEGER, PARAMETER :: ind_IOLE = 42 
  INTEGER, PARAMETER :: ind_OLE5 = 43 
  INTEGER, PARAMETER :: ind_C5H8_2 = 44 
  INTEGER, PARAMETER :: ind_CRES = 45 
  INTEGER, PARAMETER :: ind_C5H8 = 46 
  INTEGER, PARAMETER :: ind_ISPD = 47 
  INTEGER, PARAMETER :: ind_NTR = 48 
  INTEGER, PARAMETER :: ind_ALDX = 49 
  INTEGER, PARAMETER :: ind_ALD2 = 50 
  INTEGER, PARAMETER :: ind_HCHO = 51 
  INTEGER, PARAMETER :: ind_O3 = 52 
  INTEGER, PARAMETER :: ind_MEO2 = 53 
  INTEGER, PARAMETER :: ind_CXO3 = 54 
  INTEGER, PARAMETER :: ind_XO2 = 55 
  INTEGER, PARAMETER :: ind_NO3 = 56 
  INTEGER, PARAMETER :: ind_C2O3 = 57 
  INTEGER, PARAMETER :: ind_O = 58 
  INTEGER, PARAMETER :: ind_NO2 = 59 
  INTEGER, PARAMETER :: ind_HO2 = 60 
  INTEGER, PARAMETER :: ind_PAR5 = 61 
  INTEGER, PARAMETER :: ind_XO2N = 62 
  INTEGER, PARAMETER :: ind_NO = 63 
  INTEGER, PARAMETER :: ind_OH = 64 

! Index declaration for fixed species in C
!   C(ind_spc)

  INTEGER, PARAMETER :: ind_H2O = 65 
  INTEGER, PARAMETER :: ind_H2 = 66 
  INTEGER, PARAMETER :: ind_O2 = 67 
  INTEGER, PARAMETER :: ind_CH4 = 68 
  INTEGER, PARAMETER :: ind_M = 69 

! Index declaration for fixed species in FIX
!    FIX(indf_spc) = C(ind_spc) = C(NVAR+indf_spc)

  INTEGER, PARAMETER :: indf_H2O = 1 
  INTEGER, PARAMETER :: indf_H2 = 2 
  INTEGER, PARAMETER :: indf_O2 = 3 
  INTEGER, PARAMETER :: indf_CH4 = 4 
  INTEGER, PARAMETER :: indf_M = 5 

END MODULE cbm5_SOA_Parameters


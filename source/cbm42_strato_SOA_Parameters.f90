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
! File                 : cbm42_strato_SOA_Parameters.f90
! Time                 : Fri Apr 23 11:28:33 2021
! Working directory    : /fmi/scratch/project_2001411/risto/silam_dev-risto-CESM-test/kpp/cbm42_strato_SOA
! Equation file        : cbm42_strato_SOA.kpp
! Output root filename : cbm42_strato_SOA
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



MODULE cbm42_strato_SOA_Parameters

  USE cbm42_strato_SOA_Precision
  PUBLIC
  SAVE


! NSPEC - Number of chemical species
  INTEGER, PARAMETER :: NSPEC = 82 
! NVAR - Number of Variable species
  INTEGER, PARAMETER :: NVAR = 76 
! NVARACT - Number of Active species
  INTEGER, PARAMETER :: NVARACT = 73 
! NFIX - Number of Fixed species
  INTEGER, PARAMETER :: NFIX = 6 
! NREACT - Number of reactions
  INTEGER, PARAMETER :: NREACT = 247 
! NVARST - Starting of variables in conc. vect.
  INTEGER, PARAMETER :: NVARST = 1 
! NFIXST - Starting of fixed in conc. vect.
  INTEGER, PARAMETER :: NFIXST = 77 
! NONZERO - Number of nonzero entries in Jacobian
  INTEGER, PARAMETER :: NONZERO = 664 
! LU_NONZERO - Number of nonzero entries in LU factoriz. of Jacobian
  INTEGER, PARAMETER :: LU_NONZERO = 718 
! CNVAR - (NVAR+1) Number of elements in compressed row format
  INTEGER, PARAMETER :: CNVAR = 77 
! NHESS - Length of Sparse Hessian
  INTEGER, PARAMETER :: NHESS = 659 
! NLOOKAT - Number of species to look at
  INTEGER, PARAMETER :: NLOOKAT = 82 
! NMONITOR - Number of species to monitor
  INTEGER, PARAMETER :: NMONITOR = 1 
! NMASS - Number of atoms to check mass balance
  INTEGER, PARAMETER :: NMASS = 1 

! Index declaration for variable species in C and VAR
!   VAR(ind_spc) = C(ind_spc)

  INTEGER, PARAMETER :: ind_BrNO2 = 1 
  INTEGER, PARAMETER :: ind_CCl3F = 2 
  INTEGER, PARAMETER :: ind_CCl2F2 = 3 
  INTEGER, PARAMETER :: ind_CCl4 = 4 
  INTEGER, PARAMETER :: ind_NTR = 5 
  INTEGER, PARAMETER :: ind_AVB0 = 6 
  INTEGER, PARAMETER :: ind_AVB1e0 = 7 
  INTEGER, PARAMETER :: ind_AVB1e1 = 8 
  INTEGER, PARAMETER :: ind_AVB1e2 = 9 
  INTEGER, PARAMETER :: ind_AVB1e3 = 10 
  INTEGER, PARAMETER :: ind_AVB1e4 = 11 
  INTEGER, PARAMETER :: ind_AVB1e5 = 12 
  INTEGER, PARAMETER :: ind_AVB1e6 = 13 
  INTEGER, PARAMETER :: ind_BVB0 = 14 
  INTEGER, PARAMETER :: ind_BVB1e0 = 15 
  INTEGER, PARAMETER :: ind_BVB1e1 = 16 
  INTEGER, PARAMETER :: ind_BVB1e2 = 17 
  INTEGER, PARAMETER :: ind_BVB1e3 = 18 
  INTEGER, PARAMETER :: ind_Br2 = 19 
  INTEGER, PARAMETER :: ind_CH3CCl3 = 20 
  INTEGER, PARAMETER :: ind_MEOH = 21 
  INTEGER, PARAMETER :: ind_ETOH = 22 
  INTEGER, PARAMETER :: ind_CRO = 23 
  INTEGER, PARAMETER :: ind_BrONO2 = 24 
  INTEGER, PARAMETER :: ind_BrCl = 25 
  INTEGER, PARAMETER :: ind_PAN = 26 
  INTEGER, PARAMETER :: ind_CH3Br = 27 
  INTEGER, PARAMETER :: ind_TOL = 28 
  INTEGER, PARAMETER :: ind_Cl2O2 = 29 
  INTEGER, PARAMETER :: ind_N2O5 = 30 
  INTEGER, PARAMETER :: ind_XYL = 31 
  INTEGER, PARAMETER :: ind_N = 32 
  INTEGER, PARAMETER :: ind_N2O = 33 
  INTEGER, PARAMETER :: ind_HONO = 34 
  INTEGER, PARAMETER :: ind_TO2 = 35 
  INTEGER, PARAMETER :: ind_ClNO2 = 36 
  INTEGER, PARAMETER :: ind_HOBr = 37 
  INTEGER, PARAMETER :: ind_PNA = 38 
  INTEGER, PARAMETER :: ind_CH3Cl = 39 
  INTEGER, PARAMETER :: ind_ROR4 = 40 
  INTEGER, PARAMETER :: ind_MGLY = 41 
  INTEGER, PARAMETER :: ind_H2O2 = 42 
  INTEGER, PARAMETER :: ind_CRES = 43 
  INTEGER, PARAMETER :: ind_ETH = 44 
  INTEGER, PARAMETER :: ind_HNO3 = 45 
  INTEGER, PARAMETER :: ind_CO = 46 
  INTEGER, PARAMETER :: ind_OPEN = 47 
  INTEGER, PARAMETER :: ind_Cl2 = 48 
  INTEGER, PARAMETER :: ind_XO2N = 49 
  INTEGER, PARAMETER :: ind_ClONO2 = 50 
  INTEGER, PARAMETER :: ind_HOCl = 51 
  INTEGER, PARAMETER :: ind_HBr = 52 
  INTEGER, PARAMETER :: ind_HCl = 53 
  INTEGER, PARAMETER :: ind_OLE4 = 54 
  INTEGER, PARAMETER :: ind_C5H8_2 = 55 
  INTEGER, PARAMETER :: ind_XO2 = 56 
  INTEGER, PARAMETER :: ind_PAR4 = 57 
  INTEGER, PARAMETER :: ind_C2O3 = 58 
  INTEGER, PARAMETER :: ind_ISPD = 59 
  INTEGER, PARAMETER :: ind_C5H8 = 60 
  INTEGER, PARAMETER :: ind_ALD2 = 61 
  INTEGER, PARAMETER :: ind_H = 62 
  INTEGER, PARAMETER :: ind_OClO = 63 
  INTEGER, PARAMETER :: ind_NO3 = 64 
  INTEGER, PARAMETER :: ind_Br = 65 
  INTEGER, PARAMETER :: ind_OH = 66 
  INTEGER, PARAMETER :: ind_O3 = 67 
  INTEGER, PARAMETER :: ind_HO2 = 68 
  INTEGER, PARAMETER :: ind_Cl = 69 
  INTEGER, PARAMETER :: ind_O = 70 
  INTEGER, PARAMETER :: ind_O1D = 71 
  INTEGER, PARAMETER :: ind_NO = 72 
  INTEGER, PARAMETER :: ind_NO2 = 73 
  INTEGER, PARAMETER :: ind_ClO = 74 
  INTEGER, PARAMETER :: ind_BrO = 75 
  INTEGER, PARAMETER :: ind_HCHO = 76 

! Index declaration for fixed species in C
!   C(ind_spc)

  INTEGER, PARAMETER :: ind_H2O = 77 
  INTEGER, PARAMETER :: ind_H2 = 78 
  INTEGER, PARAMETER :: ind_O2 = 79 
  INTEGER, PARAMETER :: ind_CH4 = 80 
  INTEGER, PARAMETER :: ind_CO2 = 81 
  INTEGER, PARAMETER :: ind_M = 82 

! Index declaration for fixed species in FIX
!    FIX(indf_spc) = C(ind_spc) = C(NVAR+indf_spc)

  INTEGER, PARAMETER :: indf_H2O = 1 
  INTEGER, PARAMETER :: indf_H2 = 2 
  INTEGER, PARAMETER :: indf_O2 = 3 
  INTEGER, PARAMETER :: indf_CH4 = 4 
  INTEGER, PARAMETER :: indf_CO2 = 5 
  INTEGER, PARAMETER :: indf_M = 6 

END MODULE cbm42_strato_SOA_Parameters


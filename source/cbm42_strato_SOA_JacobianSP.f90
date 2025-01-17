! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! Sparse Jacobian Data Structures File
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
! File                 : cbm42_strato_SOA_JacobianSP.f90
! Time                 : Fri Apr 23 11:28:33 2021
! Working directory    : /fmi/scratch/project_2001411/risto/silam_dev-risto-CESM-test/kpp/cbm42_strato_SOA
! Equation file        : cbm42_strato_SOA.kpp
! Output root filename : cbm42_strato_SOA
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



MODULE cbm42_strato_SOA_JacobianSP

  PUBLIC
  SAVE


! Sparse Jacobian Data


  INTEGER, PARAMETER, DIMENSION(360) :: LU_IROW_0 = (/ &
       1,  2,  3,  4,  5,  5,  5,  5,  5,  5,  5,  5, &
       5,  5,  6,  6,  6,  7,  7,  7,  7,  7,  8,  8, &
       8,  8,  8,  9,  9,  9,  9,  9, 10, 10, 10, 10, &
      10, 11, 11, 11, 12, 12, 12, 13, 13, 14, 14, 14, &
      15, 15, 15, 15, 15, 15, 15, 15, 16, 16, 16, 16, &
      16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 17, &
      18, 18, 18, 18, 18, 18, 19, 19, 20, 20, 21, 21, &
      22, 22, 23, 23, 23, 23, 23, 24, 24, 24, 25, 25, &
      25, 26, 26, 26, 27, 27, 28, 28, 29, 29, 29, 30, &
      30, 30, 31, 31, 32, 32, 32, 33, 33, 33, 33, 33, &
      34, 34, 34, 34, 35, 35, 35, 35, 35, 36, 36, 36, &
      36, 37, 37, 37, 37, 38, 38, 38, 38, 39, 39, 39, &
      40, 40, 40, 40, 41, 41, 41, 41, 41, 41, 42, 42, &
      42, 42, 42, 43, 43, 43, 43, 43, 43, 43, 44, 44, &
      44, 44, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, &
      45, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, &
      46, 46, 46, 46, 46, 46, 47, 47, 47, 47, 47, 47, &
      47, 48, 48, 48, 48, 48, 48, 48, 48, 49, 49, 49, &
      49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 50, &
      50, 50, 50, 50, 50, 51, 51, 51, 51, 51, 51, 51, &
      51, 51, 51, 51, 51, 52, 52, 52, 52, 52, 52, 52, &
      52, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 54, &
      54, 54, 54, 54, 55, 55, 55, 55, 55, 56, 56, 56, &
      56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, &
      56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, &
      57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, &
      58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, &
      58, 58, 59, 59, 59, 59, 59, 59, 59, 60, 60, 60, &
      60, 60, 60, 61, 61, 61, 61, 61, 61, 61, 61, 61, &
      61, 61, 61, 61, 61, 61, 61, 62, 62, 62, 62, 62 /)
  INTEGER, PARAMETER, DIMENSION(358) :: LU_IROW_1 = (/ &
      62, 62, 62, 62, 62, 62, 62, 62, 62, 63, 63, 63, &
      63, 63, 63, 63, 63, 63, 64, 64, 64, 64, 64, 64, &
      64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, &
      64, 64, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, &
      65, 65, 65, 65, 65, 65, 65, 65, 66, 66, 66, 66, &
      66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, &
      66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, &
      66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, &
      66, 66, 66, 66, 66, 67, 67, 67, 67, 67, 67, 67, &
      67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, &
      67, 67, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, &
      68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, &
      68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, &
      68, 68, 68, 68, 69, 69, 69, 69, 69, 69, 69, 69, &
      69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, &
      69, 69, 69, 69, 69, 69, 69, 70, 70, 70, 70, 70, &
      70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, &
      70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 71, &
      71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, &
      71, 71, 71, 71, 71, 71, 72, 72, 72, 72, 72, 72, &
      72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, &
      72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 73, 73, &
      73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, &
      73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, &
      73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 74, &
      74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, &
      74, 74, 74, 74, 74, 74, 75, 75, 75, 75, 75, 75, &
      75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 76, 76, &
      76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, &
      76, 76, 76, 76, 76, 76, 76, 76, 76, 76 /)
  INTEGER, PARAMETER, DIMENSION(718) :: LU_IROW = (/&
    LU_IROW_0, LU_IROW_1 /)

  INTEGER, PARAMETER, DIMENSION(360) :: LU_ICOL_0 = (/ &
       1,  2,  3,  4,  5, 23, 35, 40, 49, 59, 60, 64, &
      72, 73,  6,  7, 66,  7,  8, 28, 31, 66,  8,  9, &
      28, 31, 66,  9, 10, 28, 31, 66, 10, 11, 28, 31, &
      66, 11, 12, 66, 12, 13, 66, 13, 66, 14, 15, 66, &
      15, 16, 55, 60, 64, 66, 67, 70, 16, 17, 55, 60, &
      64, 66, 67, 70, 17, 18, 55, 60, 64, 66, 67, 70, &
      18, 55, 64, 66, 67, 70, 19, 75, 20, 66, 21, 66, &
      22, 66, 23, 43, 64, 66, 73, 24, 73, 75, 25, 74, &
      75, 26, 58, 73, 27, 66, 28, 66, 29, 69, 74, 30, &
      64, 73, 31, 66, 32, 72, 73, 32, 33, 71, 72, 73, &
      34, 66, 72, 73, 28, 31, 35, 66, 72, 36, 66, 69, &
      73, 37, 68, 70, 75, 38, 66, 68, 73, 39, 66, 69, &
      40, 57, 66, 73, 31, 41, 47, 59, 66, 67, 42, 66, &
      68, 69, 70, 28, 31, 35, 43, 64, 66, 72, 44, 66, &
      67, 70, 30, 43, 45, 59, 61, 64, 66, 68, 72, 73, &
      76, 39, 41, 44, 46, 47, 54, 55, 59, 60, 61, 64, &
      65, 66, 67, 69, 70, 76, 35, 43, 47, 64, 66, 67, &
      72, 29, 48, 50, 51, 66, 69, 71, 74, 40, 49, 54, &
      55, 56, 57, 60, 64, 66, 67, 68, 70, 72, 73, 50, &
      66, 69, 70, 73, 74, 36, 48, 50, 51, 63, 66, 68, &
      69, 70, 71, 73, 74, 52, 65, 66, 68, 70, 71, 75, &
      76, 39, 42, 53, 66, 68, 69, 70, 71, 74, 76, 54, &
      64, 66, 67, 70, 55, 64, 66, 67, 70, 27, 28, 31, &
      39, 40, 41, 43, 44, 47, 49, 54, 55, 56, 57, 58, &
      59, 60, 61, 64, 66, 67, 68, 69, 70, 71, 72, 73, &
      31, 40, 54, 55, 57, 59, 60, 64, 66, 67, 70, 73, &
      26, 41, 47, 58, 59, 60, 61, 64, 66, 67, 68, 70, &
      72, 73, 59, 60, 64, 66, 67, 70, 73, 60, 64, 66, &
      67, 70, 73, 22, 40, 44, 47, 54, 55, 57, 59, 60, &
      61, 64, 66, 67, 70, 72, 73, 52, 53, 62, 65, 66 /)
  INTEGER, PARAMETER, DIMENSION(358) :: LU_ICOL_1 = (/ &
      67, 68, 69, 70, 71, 73, 74, 75, 76, 63, 65, 66, &
      67, 69, 70, 72, 74, 75, 30, 38, 43, 45, 50, 54, &
      55, 59, 60, 61, 64, 66, 67, 68, 69, 70, 72, 73, &
      74, 76,  1, 19, 25, 27, 37, 52, 63, 65, 66, 67, &
      68, 69, 70, 71, 72, 74, 75, 76, 20, 21, 22, 27, &
      28, 31, 34, 36, 37, 38, 39, 41, 42, 43, 44, 45, &
      46, 47, 48, 50, 51, 52, 53, 54, 55, 57, 58, 59, &
      60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, &
      72, 73, 74, 75, 76, 44, 47, 54, 55, 59, 60, 62, &
      63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, &
      75, 76, 21, 22, 27, 28, 31, 35, 38, 39, 40, 41, &
      42, 43, 44, 46, 47, 49, 54, 55, 56, 57, 58, 59, &
      60, 61, 62, 64, 65, 66, 67, 68, 69, 70, 71, 72, &
      73, 74, 75, 76,  2,  3,  4, 20, 25, 29, 36, 39, &
      42, 48, 50, 51, 53, 63, 64, 65, 66, 67, 68, 69, &
      70, 71, 72, 73, 74, 75, 76, 32, 33, 37, 42, 44, &
      50, 51, 52, 53, 54, 55, 60, 61, 62, 63, 64, 65, &
      66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 33, &
      48, 50, 51, 52, 53, 63, 65, 66, 67, 68, 69, 70, &
      71, 72, 73, 74, 75, 76, 32, 33, 34, 35, 49, 54, &
      55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, &
      67, 68, 69, 70, 71, 72, 73, 74, 75, 76,  1, 23, &
      24, 26, 30, 32, 34, 35, 36, 38, 40, 43, 45, 50, &
      54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, &
      66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 29, &
      48, 50, 51, 53, 63, 64, 65, 66, 67, 68, 69, 70, &
      71, 72, 73, 74, 75, 76, 24, 37, 52, 63, 65, 66, &
      67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 21, 27, &
      39, 44, 47, 54, 55, 58, 59, 60, 61, 64, 65, 66, &
      67, 68, 69, 70, 71, 72, 73, 74, 75, 76 /)
  INTEGER, PARAMETER, DIMENSION(718) :: LU_ICOL = (/&
    LU_ICOL_0, LU_ICOL_1 /)

  INTEGER, PARAMETER, DIMENSION(77) :: LU_CROW = (/ &
       1,  2,  3,  4,  5, 15, 18, 23, 28, 33, 38, 41, &
      44, 46, 49, 57, 65, 73, 79, 81, 83, 85, 87, 92, &
      95, 98,101,103,105,108,111,113,116,121,125,130, &
     134,138,142,145,149,155,160,167,171,182,199,206, &
     214,228,234,246,254,264,269,274,301,313,327,334, &
     340,356,370,379,399,417,462,483,521,548,576,595, &
     623,660,679,695,719 /)

  INTEGER, PARAMETER, DIMENSION(77) :: LU_DIAG = (/ &
       1,  2,  3,  4,  5, 15, 18, 23, 28, 33, 38, 41, &
      44, 46, 49, 57, 65, 73, 79, 81, 83, 85, 87, 92, &
      95, 98,101,103,105,108,111,113,117,121,127,130, &
     134,138,142,145,150,155,163,167,173,185,201,207, &
     215,228,237,246,256,264,269,286,305,316,327,334, &
     349,358,370,389,406,451,473,512,540,569,589,618, &
     656,676,693,718,719 /)


END MODULE cbm42_strato_SOA_JacobianSP


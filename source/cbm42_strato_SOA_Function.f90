! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! The ODE Function of Chemical Model File
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
! File                 : cbm42_strato_SOA_Function.f90
! Time                 : Fri Apr 23 11:28:33 2021
! Working directory    : /fmi/scratch/project_2001411/risto/silam_dev-risto-CESM-test/kpp/cbm42_strato_SOA
! Equation file        : cbm42_strato_SOA.kpp
! Output root filename : cbm42_strato_SOA
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



MODULE cbm42_strato_SOA_Function

!$use omp_lib
  USE cbm42_strato_SOA_Parameters
  IMPLICIT NONE

! A - Rate for each equation
  REAL(kind=sp) , save ::  A(NREACT)

!$OMP THREADPRIVATE(A)

CONTAINS


! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! Fun - time derivatives of variables - Agregate form
!   Arguments :
!      V         - Concentrations of variable species (local)
!      F         - Concentrations of fixed species (local)
!      RCT       - Rate constants (local)
!      Vdot      - Time derivative of variable species concentrations
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SUBROUTINE Fun ( V, F, RCT, Vdot )

! V - Concentrations of variable species (local)
  REAL(kind=sp) :: V(NVAR)
! F - Concentrations of fixed species (local)
  REAL(kind=sp) :: F(NFIX)
! RCT - Rate constants (local)
  REAL(kind=sp) :: RCT(NREACT)
! Vdot - Time derivative of variable species concentrations
  REAL(kind=sp) :: Vdot(NVAR)


! Computation of equation rates
  A(1) = RCT(1)*V(73)
  A(2) = RCT(2)*V(70)*F(3)
  A(3) = RCT(3)*V(67)*V(72)
  A(4) = RCT(4)*V(70)*V(73)
  A(5) = RCT(5)*V(70)*V(73)
  A(6) = RCT(6)*V(70)*V(72)
  A(7) = RCT(7)*V(67)*V(73)
  A(8) = RCT(8)*V(67)
  A(9) = RCT(9)*V(67)
  A(10) = RCT(10)*V(71)*F(6)
  A(11) = 2.14e-10*V(71)*F(1)
  A(12) = RCT(12)*V(66)*V(67)
  A(13) = RCT(13)*V(67)*V(68)
  A(14) = RCT(14)*V(64)
  A(15) = RCT(15)*V(64)
  A(16) = RCT(16)*V(64)*V(72)
  A(17) = RCT(17)*V(64)*V(73)
  A(18) = RCT(18)*V(64)*V(73)
  A(19) = 1e-22*V(30)*F(1)
  A(20) = RCT(20)*V(30)
  A(21) = RCT(21)*V(72)*V(72)*F(3)
  A(22) = 4.41e-40*V(72)*V(73)*F(1)
  A(23) = RCT(23)*V(66)*V(72)
  A(24) = RCT(24)*V(34)
  A(25) = RCT(25)*V(34)*V(66)
  A(26) = 1e-20*V(34)*V(34)
  A(27) = RCT(27)*V(66)*V(73)
  A(28) = RCT(28)*V(45)*V(66)
  A(29) = RCT(29)*V(68)*V(72)
  A(30) = RCT(30)*V(68)*V(73)
  A(31) = RCT(31)*V(38)
  A(32) = RCT(32)*V(38)*V(66)
  A(33) = RCT(33)*V(68)*V(68)
  A(34) = RCT(34)*V(68)*V(68)*F(6)
  A(35) = RCT(35)*V(42)
  A(36) = RCT(36)*V(42)*V(66)
  A(37) = RCT(37)*V(46)*V(66)
  A(38) = RCT(38)*V(66)*V(76)
  A(39) = RCT(39)*V(76)
  A(40) = RCT(40)*V(76)
  A(41) = RCT(41)*V(70)*V(76)
  A(42) = 5.5e-16*V(64)*V(76)
  A(43) = RCT(43)*V(61)*V(70)
  A(44) = RCT(44)*V(61)*V(66)
  A(45) = RCT(45)*V(61)*V(64)
  A(46) = RCT(46)*V(61)
  A(47) = RCT(47)*V(58)*V(72)
  A(48) = RCT(48)*V(58)*V(73)
  A(49) = RCT(49)*V(26)
  A(50) = RCT(50)*V(58)*V(58)
  A(51) = RCT(51)*V(58)*V(68)
  A(52) = RCT(52)*V(66)*F(4)
  A(53) = RCT(53)*V(57)*V(66)
  A(54) = RCT(54)*V(40)
  A(55) = 1600*V(40)
  A(56) = 1.5e-11*V(40)*V(73)
  A(57) = RCT(57)*V(54)*V(70)
  A(58) = RCT(58)*V(54)*V(66)
  A(59) = RCT(59)*V(54)*V(67)
  A(60) = RCT(60)*V(54)*V(64)
  A(61) = RCT(61)*V(44)*V(70)
  A(62) = RCT(62)*V(44)*V(66)
  A(63) = RCT(63)*V(44)*V(67)
  A(64) = RCT(64)*V(28)*V(66)
  A(65) = RCT(65)*V(35)*V(72)
  A(66) = 4.2*V(35)
  A(67) = RCT(67)*V(43)*V(66)
  A(68) = 1e-11*V(43)*V(64)
  A(69) = 2.1e-12*V(23)*V(73)
  A(70) = 1.51e-11*V(31)*V(66)
  A(71) = 4.4e-11*V(47)*V(66)
  A(72) = RCT(72)*V(47)
  A(73) = RCT(73)*V(47)*V(67)
  A(74) = RCT(74)*V(41)*V(66)
  A(75) = RCT(75)*V(41)
  A(76) = 3.6e-11*V(60)*V(70)
  A(77) = RCT(77)*V(60)*V(66)
  A(78) = RCT(78)*V(60)*V(67)
  A(79) = RCT(79)*V(60)*V(64)
  A(80) = RCT(80)*V(56)*V(72)
  A(81) = 6.8e-14*V(56)*V(56)
  A(82) = RCT(82)*V(49)*V(72)
  A(83) = 3.36e-11*V(59)*V(66)
  A(84) = 7.1e-18*V(59)*V(67)
  A(85) = 1e-15*V(59)*V(64)
  A(86) = RCT(86)*V(59)
  A(87) = 1.5e-19*V(60)*V(73)
  A(88) = RCT(88)*V(56)*V(68)
  A(89) = RCT(89)*V(49)*V(68)
  A(90) = 6.8e-14*V(49)*V(49)
  A(91) = 6.8e-14*V(49)*V(56)
  A(92) = RCT(92)*V(21)*V(66)
  A(93) = RCT(93)*V(22)*V(66)
  A(94) = RCT(94)*V(67)*V(69)
  A(95) = RCT(95)*V(70)*V(74)
  A(96) = RCT(96)*V(72)*V(74)
  A(97) = RCT(97)*V(69)*F(4)
  A(98) = RCT(98)*V(69)*F(2)
  A(99) = RCT(99)*V(68)*V(69)
  A(100) = RCT(100)*V(66)*V(74)
  A(101) = RCT(101)*V(69)*V(76)
  A(102) = RCT(102)*V(53)*V(66)
  A(103) = RCT(103)*V(73)*V(74)
  A(104) = RCT(104)*V(50)*V(70)
  A(105) = RCT(105)*V(68)*V(74)
  A(106) = 5e-13*V(51)*V(66)
  A(107) = 1.7e-13*V(51)*V(70)
  A(108) = RCT(108)*V(69)*V(73)
  A(109) = RCT(109)*V(51)*V(69)
  A(110) = RCT(110)*V(66)*V(74)
  A(111) = RCT(111)*V(74)*V(74)
  A(112) = RCT(112)*V(74)*V(74)
  A(113) = RCT(113)*V(74)*V(74)
  A(114) = RCT(114)*V(74)*V(74)
  A(115) = RCT(115)*V(29)
  A(116) = RCT(116)*V(63)*V(66)
  A(117) = RCT(117)*V(63)*V(69)
  A(118) = RCT(118)*V(63)*V(70)
  A(119) = RCT(119)*V(63)*V(67)
  A(120) = RCT(120)*V(63)*V(72)
  A(121) = 2.7e-10*V(48)*V(71)
  A(122) = RCT(122)*V(29)*V(69)
  A(123) = 2.4e-11*V(64)*V(69)
  A(124) = 3.4e-13*V(64)*V(74)
  A(125) = 1.5e-10*V(53)*V(71)
  A(126) = RCT(126)*V(48)*V(66)
  A(127) = RCT(127)*V(50)*V(69)
  A(128) = RCT(128)*V(68)*V(69)
  A(129) = RCT(129)*V(42)*V(69)
  A(130) = RCT(130)*V(53)*V(70)
  A(131) = RCT(131)*V(50)*V(66)
  A(132) = RCT(132)*V(36)*V(66)
  A(133) = RCT(133)*V(67)*V(70)
  A(134) = 2.4e-10*V(67)*V(71)
  A(135) = RCT(135)*V(71)*F(6)
  A(136) = 1.2e-10*V(71)*F(2)
  A(137) = RCT(137)*V(68)*V(70)
  A(138) = RCT(138)*V(66)*V(68)
  A(139) = RCT(139)*V(42)*V(70)
  A(140) = RCT(140)*V(66)*V(66)
  A(141) = RCT(141)*V(66)*V(66)
  A(142) = RCT(142)*V(33)*V(71)
  A(143) = RCT(143)*V(64)*V(70)
  A(144) = RCT(144)*V(64)*V(66)
  A(145) = 4e-12*V(64)*V(68)
  A(146) = RCT(146)*V(64)*V(64)
  A(147) = RCT(147)*F(3)
  A(148) = RCT(148)*V(33)
  A(149) = RCT(149)*V(30)
  A(150) = RCT(150)*V(45)
  A(151) = RCT(151)*V(51)
  A(152) = RCT(152)*V(50)
  A(153) = RCT(153)*V(50)
  A(154) = RCT(154)*V(63)
  A(155) = RCT(155)*V(29)
  A(156) = RCT(156)*V(53)
  A(157) = RCT(157)*V(48)
  A(158) = RCT(158)*V(36)
  A(159) = RCT(159)*V(65)*V(67)
  A(160) = RCT(160)*V(70)*V(75)
  A(161) = RCT(161)*V(72)*V(75)
  A(162) = RCT(162)*V(74)*V(75)
  A(163) = RCT(163)*V(74)*V(75)
  A(164) = RCT(164)*V(74)*V(75)
  A(165) = 2.7e-12*V(75)*V(75)
  A(166) = RCT(166)*V(75)*V(75)
  A(167) = RCT(167)*V(65)*V(68)
  A(168) = RCT(168)*V(63)*V(65)
  A(169) = RCT(169)*V(65)*V(76)
  A(170) = RCT(170)*V(52)*V(66)
  A(171) = RCT(171)*V(73)*V(75)
  A(172) = RCT(172)*V(68)*V(75)
  A(173) = 1.5e-10*V(52)*V(71)
  A(174) = RCT(174)*V(66)*V(75)
  A(175) = RCT(175)*V(52)*V(70)
  A(176) = RCT(176)*V(37)*V(70)
  A(177) = RCT(177)*V(24)
  A(178) = RCT(178)*V(25)
  A(179) = RCT(179)*V(37)
  A(180) = RCT(180)*V(75)
  A(181) = RCT(181)*V(19)
  A(182) = RCT(182)*V(1)
  A(183) = RCT(183)*V(38)
  A(184) = RCT(184)*V(38)
  A(185) = RCT(185)*F(1)
  A(186) = RCT(186)*F(4)
  A(187) = RCT(187)*F(5)
  A(188) = RCT(188)*V(72)
  A(189) = RCT(189)*V(66)*V(70)
  A(190) = RCT(190)*V(66)*F(2)
  A(191) = RCT(191)*V(71)*F(4)
  A(192) = RCT(192)*V(32)*V(72)
  A(193) = RCT(193)*V(32)*F(3)
  A(194) = RCT(194)*V(32)*V(73)
  A(195) = RCT(195)*V(62)*F(3)
  A(196) = RCT(196)*V(62)*V(67)
  A(197) = RCT(197)*V(62)*V(68)
  A(198) = RCT(198)*V(62)*V(73)
  A(199) = RCT(199)*V(39)
  A(200) = RCT(200)*V(39)*V(66)
  A(201) = RCT(201)*V(39)*V(69)
  A(202) = RCT(202)*V(27)
  A(203) = RCT(203)*V(27)*V(66)
  A(204) = RCT(204)*V(2)
  A(205) = RCT(205)*V(3)
  A(206) = RCT(206)*V(4)
  A(207) = RCT(207)*V(20)
  A(208) = RCT(208)*V(20)*V(66)
  A(209) = RCT(209)*V(55)*V(70)
  A(210) = RCT(210)*V(55)*V(66)
  A(211) = RCT(211)*V(55)*V(67)
  A(212) = RCT(212)*V(55)*V(64)
  A(213) = RCT(213)*V(55)*V(70)
  A(214) = RCT(214)*V(55)*V(66)
  A(215) = RCT(215)*V(55)*V(67)
  A(216) = RCT(216)*V(55)*V(64)
  A(217) = RCT(217)*V(28)*V(66)
  A(218) = RCT(218)*V(31)*V(66)
  A(219) = RCT(219)*V(60)*V(70)
  A(220) = RCT(220)*V(60)*V(66)
  A(221) = RCT(221)*V(60)*V(67)
  A(222) = RCT(222)*V(60)*V(64)
  A(223) = RCT(223)*V(55)*V(70)
  A(224) = RCT(224)*V(55)*V(66)
  A(225) = RCT(225)*V(55)*V(67)
  A(226) = RCT(226)*V(55)*V(64)
  A(227) = RCT(227)*V(28)*V(66)
  A(228) = RCT(228)*V(31)*V(66)
  A(229) = RCT(229)*V(60)*V(70)
  A(230) = RCT(230)*V(60)*V(66)
  A(231) = RCT(231)*V(60)*V(67)
  A(232) = RCT(232)*V(60)*V(64)
  A(233) = RCT(233)*V(55)*V(70)
  A(234) = RCT(234)*V(55)*V(66)
  A(235) = RCT(235)*V(55)*V(67)
  A(236) = RCT(236)*V(55)*V(64)
  A(237) = RCT(237)*V(7)*V(66)
  A(238) = RCT(238)*V(8)*V(66)
  A(239) = RCT(239)*V(9)*V(66)
  A(240) = RCT(240)*V(10)*V(66)
  A(241) = RCT(241)*V(11)*V(66)
  A(242) = RCT(242)*V(12)*V(66)
  A(243) = RCT(243)*V(13)*V(66)
  A(244) = RCT(244)*V(15)*V(66)
  A(245) = RCT(245)*V(16)*V(66)
  A(246) = RCT(246)*V(17)*V(66)
  A(247) = RCT(247)*V(18)*V(66)

! Aggregate function
  Vdot(1) = -A(182)
  Vdot(2) = -A(204)
  Vdot(3) = -A(205)
  Vdot(4) = -A(206)
  Vdot(5) = A(56)+0.1*A(65)+A(69)+0.8*A(79)+A(82)+0.85*A(85)+0.8*A(87)
  Vdot(6) = 1.075*A(237)
  Vdot(7) = 0.001012*A(217)+0.000159*A(218)+0.001012*A(227)+0.00795*A(228)-A(237)+1.075*A(238)
  Vdot(8) = 0.022816*A(217)+0.02067*A(218)+0.022816*A(227)+0.0318*A(228)-A(238)+1.075*A(239)
  Vdot(9) = 0.042872*A(217)+0.0318*A(218)+0.0667*A(227)+0.03975*A(228)-A(239)+1.075*A(240)
  Vdot(10) = 0.063848*A(217)+0.04611*A(218)+0.041584*A(227)+0.05565*A(228)-A(240)+1.075*A(241)
  Vdot(11) = -A(241)+1.075*A(242)
  Vdot(12) = -A(242)+1.075*A(243)
  Vdot(13) = -A(243)
  Vdot(14) = 1.075*A(244)
  Vdot(15) = 2.04e-05*A(219)+2.04e-05*A(220)+2.04e-05*A(221)+2.04e-05*A(222)+0.001632*A(223)+0.001632*A(224)+0.001632&
               &*A(225)+0.001632*A(226)+0.000612*A(229)+0.000612*A(230)+0.000612*A(231)+0.000612*A(232)+0.014593*A(233)&
               &+0.014593*A(234)+0.014593*A(235)+0.014593*A(236)-A(244)+1.075*A(245)
  Vdot(16) = 0.00153*A(219)+0.00153*A(220)+0.00153*A(221)+0.00153*A(222)+0.016524*A(223)+0.016524*A(224)+0.016524*A(225)&
               &+0.016524*A(226)+0.00204*A(229)+0.00204*A(230)+0.00204*A(231)+0.00204*A(232)+0.012485*A(233)+0.012485*A(234)&
               &+0.012485*A(235)+0.012485*A(236)-A(245)+1.075*A(246)
  Vdot(17) = 0.00102*A(219)+0.00102*A(220)+0.00102*A(221)+0.00102*A(222)+0.027336*A(223)+0.027336*A(224)+0.027336*A(225)&
               &+0.027336*A(226)+0.00102*A(229)+0.00102*A(230)+0.00102*A(231)+0.00102*A(232)+0.048783*A(233)+0.048783*A(234)&
               &+0.048783*A(235)+0.048783*A(236)-A(246)+1.075*A(247)
  Vdot(18) = 0.068952*A(223)+0.068952*A(224)+0.068952*A(225)+0.068952*A(226)+0.08262*A(233)+0.08262*A(234)+0.08262&
               &*A(235)+0.08262*A(236)-A(247)
  Vdot(19) = A(166)-A(181)
  Vdot(20) = -A(207)-A(208)
  Vdot(21) = -A(92)
  Vdot(22) = -A(93)
  Vdot(23) = 0.4*A(67)+A(68)-A(69)
  Vdot(24) = A(171)-A(177)
  Vdot(25) = A(164)-A(178)
  Vdot(26) = A(48)-A(49)
  Vdot(27) = -A(202)-A(203)
  Vdot(28) = -A(64)
  Vdot(29) = A(114)-A(115)-A(122)-A(155)
  Vdot(30) = A(18)-A(19)-A(20)-A(149)
  Vdot(31) = -A(70)
  Vdot(32) = A(188)-A(192)-A(193)-A(194)
  Vdot(33) = A(135)-0.952*A(142)-A(148)+A(194)
  Vdot(34) = 2*A(22)+A(23)-A(24)-A(25)-2*A(26)
  Vdot(35) = 0.56*A(64)-A(65)-A(66)+0.3*A(70)
  Vdot(36) = A(108)-A(132)-A(158)
  Vdot(37) = A(172)-A(176)-A(179)
  Vdot(38) = A(30)-A(31)-A(32)-A(183)-A(184)
  Vdot(39) = -A(199)-A(200)-A(201)
  Vdot(40) = 0.76*A(53)-0.98*A(54)-A(55)-A(56)
  Vdot(41) = 0.8*A(70)+0.2*A(73)-A(74)-A(75)+0.168*A(83)+0.85*A(84)
  Vdot(42) = A(33)+A(34)-A(35)-A(36)-A(129)-A(139)+A(141)
  Vdot(43) = 0.36*A(64)+A(66)-A(67)-A(68)+0.2*A(70)
  Vdot(44) = -A(61)-A(62)-A(63)
  Vdot(45) = 2*A(19)+A(27)-A(28)+A(42)+A(45)+A(68)+0.15*A(85)+0.15*A(145)-A(150)
  Vdot(46) = -A(37)+A(38)+A(39)+A(40)+A(41)+A(42)+A(46)+0.3*A(57)+0.33*A(59)+A(61)+0.42*A(63)+2*A(71)+A(72)+0.69*A(73)&
               &+A(75)+0.066*A(78)+0.334*A(83)+0.225*A(84)+0.643*A(85)+0.333*A(86)+A(101)+A(169)+A(187)+A(200)+A(201)+0.001&
               &*A(211)
  Vdot(47) = 0.9*A(65)+0.3*A(67)-A(71)-A(72)-A(73)
  Vdot(48) = A(109)+A(112)-A(121)+A(122)-A(126)+A(127)-A(157)
  Vdot(49) = 0.13*A(53)+0.04*A(54)+0.02*A(57)+0.09*A(60)+0.088*A(77)-A(82)-A(89)-2*A(90)-A(91)+0.25*A(210)+0.18*A(211)&
               &+0.25*A(212)
  Vdot(50) = A(103)-A(104)-A(127)-A(131)-A(152)-A(153)
  Vdot(51) = A(105)-A(106)-A(107)-A(109)+A(116)+A(126)+A(131)+A(132)-A(151)
  Vdot(52) = A(167)+A(169)-A(170)-0.8*A(173)+0.02*A(174)-A(175)
  Vdot(53) = A(97)+A(98)+A(99)+A(101)-A(102)+A(110)-0.88*A(125)+A(129)-A(130)-A(156)+A(201)
  Vdot(54) = -A(57)-A(58)-A(59)-A(60)
  Vdot(55) = -A(209)-A(210)-A(211)-A(212)-A(213)-A(214)-A(215)-A(216)
  Vdot(56) = A(46)+A(47)+2*A(50)+0.79*A(51)+A(52)+0.87*A(53)+0.96*A(54)+0.28*A(57)+A(58)+0.22*A(59)+0.91*A(60)+0.7*A(61)&
               &+A(62)+0.08*A(64)+0.6*A(67)+0.5*A(70)+A(71)+0.03*A(73)+A(74)+0.25*A(76)+0.991*A(77)+0.2*A(78)+A(79)-A(80)-2&
               &*A(81)+0.713*A(83)+0.064*A(84)+0.075*A(85)+0.7*A(86)+A(87)-A(88)-A(91)+A(97)+A(186)+A(191)+A(199)+A(200)&
               &+A(201)+A(202)+A(203)+1.25*A(210)+0.76*A(211)+1.03*A(212)
  Vdot(57) = -2.739*A(53)+2.143*A(55)+2.143*A(56)+1.22*A(57)+1.1*A(70)+0.25*A(76)+0.35*A(78)+2.4*A(79)+1.565*A(83)+0.36&
               &*A(84)+1.282*A(85)+0.832*A(86)+2.4*A(87)+5.12*A(209)+1.66*A(210)+7*A(211)
  Vdot(58) = A(43)+A(44)+A(45)-A(47)-A(48)+A(49)-2*A(50)-A(51)+A(71)+A(72)+0.62*A(73)+A(74)+A(75)+0.25*A(76)+0.2*A(78)&
               &+0.498*A(83)+0.114*A(84)+0.075*A(85)+0.967*A(86)
  Vdot(59) = 0.75*A(76)+0.912*A(77)+0.65*A(78)+0.2*A(79)-A(83)-A(84)-A(85)-A(86)+0.2*A(87)
  Vdot(60) = -A(76)-A(77)-A(78)-A(79)-A(87)
  Vdot(61) = -A(43)-A(44)-A(45)-A(46)+0.11*A(53)+1.1*A(54)+0.63*A(57)+A(58)+0.5*A(59)+A(60)+0.22*A(62)+0.03*A(73)+0.15&
               &*A(78)+0.8*A(79)+0.273*A(83)+0.02*A(84)+0.357*A(85)+0.067*A(86)+0.8*A(87)+A(93)+0.15*A(209)+0.47*A(210)+0.21&
               &*A(211)+0.47*A(212)
  Vdot(62) = A(39)+A(98)+0.22*A(125)+A(136)+A(156)+0.2*A(173)+A(185)+A(186)+A(189)+A(190)-A(195)-A(196)-A(197)-A(198)
  Vdot(63) = A(111)-A(116)-A(117)-A(118)-A(119)-A(120)-A(154)+A(162)-A(168)
  Vdot(64) = A(5)+A(7)-A(14)-A(15)-A(16)-A(17)-A(18)+A(20)+A(28)-A(42)-A(45)-A(60)-A(68)-A(79)-A(85)+A(104)-A(123)&
               &-A(124)+A(127)+A(131)-A(143)-A(144)-A(145)-2*A(146)+A(149)+A(152)+A(184)-A(212)
  Vdot(65) = -A(159)+A(160)+A(161)+A(162)+A(163)+2*A(165)-A(167)-A(168)-A(169)+A(170)+0.6*A(173)+0.98*A(174)+A(175)&
               &+A(178)+A(179)+A(180)+2*A(181)+A(182)+A(202)+A(203)
  Vdot(66) = 2*A(11)-A(12)+A(13)-A(23)+A(24)-A(25)-A(27)-A(28)+A(29)-A(32)+2*A(35)-A(36)-A(37)-A(38)+A(41)+A(43)-A(44)&
               &+0.79*A(51)-A(52)-A(53)+0.2*A(57)-A(58)+0.1*A(59)+0.3*A(61)-A(62)-A(64)-A(67)-A(70)-A(71)+0.08*A(73)-A(74)&
               &-A(77)+0.266*A(78)-A(83)+0.268*A(84)-A(92)-A(93)-A(100)-A(102)-A(106)+A(107)+A(109)-A(110)-A(116)+0.66&
               &*A(125)-A(126)+A(128)+A(130)-A(131)-A(132)+A(136)+A(137)-A(138)+A(139)-2*A(140)-2*A(141)-A(144)+0.85*A(145)&
               &+A(150)+A(151)-A(170)+0.6*A(173)-A(174)+A(175)+A(176)+A(179)+A(184)+A(185)-A(189)-A(190)+A(191)+A(196)+1.8&
               &*A(197)+A(198)-A(200)-A(203)-A(208)-A(210)+0.57*A(211)
  Vdot(67) = A(2)-A(3)-A(7)-A(8)-A(9)-A(12)-A(13)-A(59)-A(63)-A(73)-A(78)-A(84)-A(94)-A(119)-A(133)-A(134)-A(159)-A(196)&
               &-A(211)
  Vdot(68) = A(12)-A(13)-A(29)-A(30)+A(31)-2*A(33)-2*A(34)+A(36)+A(37)+A(38)+A(39)+A(41)+A(42)+2*A(46)+A(47)+2*A(50)&
               &-0.21*A(51)+A(52)+0.11*A(53)+0.94*A(54)+A(55)+0.38*A(57)+A(58)+0.44*A(59)+1.7*A(61)+A(62)+0.12*A(63)+0.44&
               &*A(64)+0.9*A(65)+A(66)+0.6*A(67)+0.7*A(70)+2*A(71)+A(72)+0.76*A(73)+A(75)+0.25*A(76)+0.912*A(77)+0.066*A(78)&
               &+0.8*A(79)+0.503*A(83)+0.154*A(84)+0.925*A(85)+1.033*A(86)+0.8*A(87)-A(88)-A(89)+A(92)+A(93)+A(97)-A(99)&
               &+A(100)+A(101)-A(105)-A(128)+A(129)-A(137)-A(138)+A(139)+A(144)-A(145)-A(167)+A(169)-A(172)+0.98*A(174)&
               &+A(183)+A(186)+A(191)+A(195)-A(197)+A(199)+2*A(200)+2*A(201)+A(202)+0.75*A(210)+0.07*A(211)+0.28*A(212)
  Vdot(69) = -A(94)+A(95)+A(96)-A(97)-A(98)-A(99)+A(100)-A(101)+A(102)-A(108)-A(109)+A(111)+2*A(113)-A(117)+A(121)&
               &-A(123)+A(124)+0.66*A(125)+A(126)-A(127)-A(128)-A(129)+A(130)+A(151)+A(152)+2*A(155)+A(156)+2*A(157)+A(158)&
               &+A(163)+A(178)+A(199)+A(200)+3*A(204)+2*A(205)+4*A(206)+3*A(207)+3*A(208)
  Vdot(70) = A(1)-A(2)-A(4)-A(5)-A(6)+A(8)+A(10)+A(14)-A(41)-A(43)-A(57)-A(61)-A(76)-A(95)-A(104)-A(107)-A(118)+0.12&
               &*A(125)-A(130)-A(133)+A(134)-A(137)-A(139)+A(140)+0.048*A(142)-A(143)+2*A(147)+A(154)-A(160)+0.2*A(173)&
               &-A(175)-A(176)+A(180)+A(187)+A(188)-A(189)+A(192)+A(193)+A(194)+0.03*A(197)-A(209)
  Vdot(71) = A(9)-A(10)-A(11)-A(121)-A(125)-A(134)-A(135)-A(136)-A(142)+A(148)-A(173)-A(191)
  Vdot(72) = A(1)-A(3)+A(4)-A(6)+A(15)-A(16)+A(17)-2*A(21)-A(22)-A(23)+A(24)+A(26)-A(29)-A(47)-A(65)-A(80)-A(82)+0.2&
               &*A(87)-A(96)-A(120)+1.216*A(142)-A(161)-A(188)-A(192)+A(193)+A(198)
  Vdot(73) = -A(1)+A(3)-A(4)-A(5)+A(6)-A(7)+A(14)+2*A(16)-A(18)+A(20)+2*A(21)-A(22)+A(25)+A(26)-A(27)+A(29)-A(30)+A(31)&
               &+A(32)+A(47)-A(48)+A(49)-A(56)+A(60)+0.9*A(65)-A(69)+0.2*A(79)+A(80)-A(87)+A(96)-A(103)-A(108)+A(120)+A(123)&
               &+A(124)+A(132)+A(143)+A(144)+0.85*A(145)+2*A(146)+A(149)+A(150)+A(153)+A(158)+A(161)-A(171)+A(177)+A(182)&
               &+A(183)-A(194)-A(198)+0.47*A(212)
  Vdot(74) = A(94)-A(95)-A(96)-A(100)-A(103)+A(104)-A(105)+A(106)+A(107)-A(110)-2*A(111)-2*A(112)-2*A(113)-2*A(114)+2&
               &*A(115)+2*A(117)+A(118)+A(119)+A(120)+A(121)+A(123)-A(124)+0.22*A(125)+A(128)+A(153)+A(154)-A(162)-A(163)&
               &-A(164)+A(168)
  Vdot(75) = A(159)-A(160)-A(161)-A(162)-A(163)-A(164)-2*A(165)-2*A(166)+A(168)-A(171)-A(172)+0.2*A(173)-A(174)+A(176)&
               &+A(177)-A(180)
  Vdot(76) = -A(38)-A(39)-A(40)-A(41)-A(42)+A(46)+A(47)+2*A(50)+0.79*A(51)+A(52)+0.2*A(57)+A(58)+0.74*A(59)+A(60)+A(61)&
               &+1.56*A(62)+A(63)+A(71)+0.7*A(73)+0.5*A(76)+0.629*A(77)+0.6*A(78)+0.167*A(83)+0.15*A(84)+0.282*A(85)+0.9&
               &*A(86)+A(92)+A(97)-A(101)-A(169)+A(186)+A(191)+A(199)+A(202)+A(203)+0.28*A(210)+0.24*A(211)
      
END SUBROUTINE Fun

! End of Fun function
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



END MODULE cbm42_strato_SOA_Function


function [residual, g1, g2, g3] = constant_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(13, 1);
paibar__ = params(9);
T14 = params(1)*y(5)^params(2);
T25 = (y(6)/y(17))^params(3);
T43 = y(10)*y(3)^params(6);
T45 = y(5)^(1-params(6));
T55 = y(4)^(1-params(6));
T59 = (1-params(6))^(1-params(6));
T61 = params(6)^params(6);
T62 = T55*y(13)^params(6)*T59*T61;
T85 = y(19)/paibar__-1;
T88 = y(19)*T25*y(18)*params(7)*T85/paibar__;
T103 = 1-params(7)*0.5*(y(9)/paibar__-1)^2;
T112 = (steady_state(4))*(y(9)/(steady_state(6)))^params(10);
T115 = (y(11)/(steady_state(8)))^params(11);
T120 = y(10)/params(12);
T124 = y(2)/params(12);
T137 = params(4)*(y(1)/params(4))^params(14);
T147 = T61*T59*y(13)^params(6)*getPowerDeriv(y(4),1-params(6),1);
T156 = getPowerDeriv(y(5),1-params(6),1);
T166 = getPowerDeriv(y(6)/y(17),params(3),1);
T167 = 1/y(17)*T166;
T183 = (-y(6))/(y(17)*y(17));
T184 = T166*T183;
T204 = params(4)*1/params(4)*getPowerDeriv(y(1)/params(4),params(14),1);
T217 = 1/paibar__;
T231 = (steady_state(4))*1/(steady_state(6))*getPowerDeriv(y(9)/(steady_state(6)),params(10),1);
T245 = 1/params(12);
T263 = 1/(steady_state(8))*getPowerDeriv(y(11)/(steady_state(8)),params(11),1);
T272 = T61*T59*T55*getPowerDeriv(y(13),params(6),1);
T299 = getPowerDeriv(y(6)/y(17),params(3),2);
T300 = 1/y(17)*T299;
T308 = T183*T300+T166*(-1)/(y(17)*y(17));
T320 = T183*T183*T299+T166*(-((-y(6))*(y(17)+y(17))))/(y(17)*y(17)*y(17)*y(17));
lhs =y(4);
rhs =T14*y(6)^params(3);
residual(1)= lhs-rhs;
lhs =1;
rhs =y(7)*y(18)*T25/y(19);
residual(2)= lhs-rhs;
lhs =1;
rhs =T25*params(4)*(1+y(21)-params(5));
residual(3)= lhs-rhs;
lhs =y(11);
rhs =T43*T45;
residual(4)= lhs-rhs;
lhs =y(15);
rhs =y(3)*(1-params(5))+y(14);
residual(5)= lhs-rhs;
lhs =y(12);
rhs =T62/y(10);
residual(6)= lhs-rhs;
lhs =y(3)/y(5);
rhs =y(4)*params(6)/(1-params(6))/y(13);
residual(7)= lhs-rhs;
lhs =y(9)*params(7)*(y(9)/paibar__-1)/paibar__;
rhs =1-params(8)+y(12)*params(8)+T88*y(20)/y(11);
residual(8)= lhs-rhs;
lhs =y(6)+y(14)+params(18)*(steady_state(8));
rhs =y(11)*T103;
residual(9)= lhs-rhs;
lhs =y(16);
rhs =T112*T115;
residual(10)= lhs-rhs;
lhs =y(7);
rhs =y(16);
residual(11)= lhs-rhs;
lhs =log(T120);
rhs =params(13)*log(T124)+params(16)*x(it_, 1);
residual(12)= lhs-rhs;
lhs =y(8);
rhs =T137*exp(params(15)*x(it_, 2));
residual(13)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(13, 23);

  %
  % Jacobian matrix
  %

  g1(1,4)=1;
  g1(1,5)=(-(y(6)^params(3)*params(1)*getPowerDeriv(y(5),params(2),1)));
  g1(1,6)=(-(T14*getPowerDeriv(y(6),params(3),1)));
  g1(2,6)=(-(y(7)*y(18)*T167/y(19)));
  g1(2,17)=(-(y(7)*y(18)*T184/y(19)));
  g1(2,7)=(-(y(18)*T25/y(19)));
  g1(2,18)=(-(y(7)*T25/y(19)));
  g1(2,19)=(-((-(y(7)*y(18)*T25))/(y(19)*y(19))));
  g1(3,6)=(-((1+y(21)-params(5))*params(4)*T167));
  g1(3,17)=(-((1+y(21)-params(5))*params(4)*T184));
  g1(3,21)=(-(T25*params(4)));
  g1(4,5)=(-(T43*T156));
  g1(4,10)=(-(y(3)^params(6)*T45));
  g1(4,11)=1;
  g1(4,3)=(-(T45*y(10)*getPowerDeriv(y(3),params(6),1)));
  g1(5,14)=(-1);
  g1(5,3)=(-(1-params(5)));
  g1(5,15)=1;
  g1(6,4)=(-(T147/y(10)));
  g1(6,10)=(-((-T62)/(y(10)*y(10))));
  g1(6,12)=1;
  g1(6,13)=(-(T272/y(10)));
  g1(7,4)=(-(params(6)/(1-params(6))/y(13)));
  g1(7,5)=(-y(3))/(y(5)*y(5));
  g1(7,13)=(-((-(y(4)*params(6)/(1-params(6))))/(y(13)*y(13))));
  g1(7,3)=1/y(5);
  g1(8,6)=(-(y(20)*y(19)*T85*y(18)*params(7)*T167/paibar__/y(11)));
  g1(8,17)=(-(y(20)*y(19)*T85*y(18)*params(7)*T184/paibar__/y(11)));
  g1(8,18)=(-(y(20)*y(19)*T85*T25*params(7)/paibar__/y(11)));
  g1(8,9)=(params(7)*(y(9)/paibar__-1)+y(9)*params(7)*T217)/paibar__;
  g1(8,19)=(-(y(20)*(T25*y(18)*params(7)*T85+y(19)*T25*y(18)*params(7)*T217)/paibar__/y(11)));
  g1(8,11)=(-((-(T88*y(20)))/(y(11)*y(11))));
  g1(8,20)=(-(T88/y(11)));
  g1(8,12)=(-params(8));
  g1(9,6)=1;
  g1(9,9)=(-(y(11)*(-(params(7)*0.5*T217*2*(y(9)/paibar__-1)))));
  g1(9,11)=(-T103);
  g1(9,14)=1;
  g1(10,9)=(-(T115*T231));
  g1(10,11)=(-(T112*T263));
  g1(10,16)=1;
  g1(11,7)=1;
  g1(11,16)=(-1);
  g1(12,2)=(-(params(13)*T245/T124));
  g1(12,10)=T245/T120;
  g1(12,22)=(-params(16));
  g1(13,1)=(-(exp(params(15)*x(it_, 2))*T204));
  g1(13,8)=1;
  g1(13,23)=(-(T137*params(15)*exp(params(15)*x(it_, 2))));
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  v2 = zeros(106,3);
  v2(1,1)=1;
  v2(1,2)=97;
  v2(1,3)=(-(y(6)^params(3)*params(1)*getPowerDeriv(y(5),params(2),2)));
  v2(2,1)=1;
  v2(2,2)=120;
  v2(2,3)=(-(params(1)*getPowerDeriv(y(5),params(2),1)*getPowerDeriv(y(6),params(3),1)));
  v2(3,1)=1;
  v2(3,2)=98;
  v2(3,3)=  v2(2,3);
  v2(4,1)=1;
  v2(4,2)=121;
  v2(4,3)=(-(T14*getPowerDeriv(y(6),params(3),2)));
  v2(5,1)=2;
  v2(5,2)=121;
  v2(5,3)=(-(y(7)*y(18)*1/y(17)*T300/y(19)));
  v2(6,1)=2;
  v2(6,2)=374;
  v2(6,3)=(-(y(7)*y(18)*T308/y(19)));
  v2(7,1)=2;
  v2(7,2)=132;
  v2(7,3)=  v2(6,3);
  v2(8,1)=2;
  v2(8,2)=385;
  v2(8,3)=(-(y(7)*y(18)*T320/y(19)));
  v2(9,1)=2;
  v2(9,2)=144;
  v2(9,3)=(-(y(18)*T167/y(19)));
  v2(10,1)=2;
  v2(10,2)=122;
  v2(10,3)=  v2(9,3);
  v2(11,1)=2;
  v2(11,2)=155;
  v2(11,3)=(-(y(18)*T184/y(19)));
  v2(12,1)=2;
  v2(12,2)=375;
  v2(12,3)=  v2(11,3);
  v2(13,1)=2;
  v2(13,2)=397;
  v2(13,3)=(-(y(7)*T167/y(19)));
  v2(14,1)=2;
  v2(14,2)=133;
  v2(14,3)=  v2(13,3);
  v2(15,1)=2;
  v2(15,2)=408;
  v2(15,3)=(-(y(7)*T184/y(19)));
  v2(16,1)=2;
  v2(16,2)=386;
  v2(16,3)=  v2(15,3);
  v2(17,1)=2;
  v2(17,2)=398;
  v2(17,3)=(-(T25/y(19)));
  v2(18,1)=2;
  v2(18,2)=156;
  v2(18,3)=  v2(17,3);
  v2(19,1)=2;
  v2(19,2)=420;
  v2(19,3)=(-((-(y(7)*y(18)*T167))/(y(19)*y(19))));
  v2(20,1)=2;
  v2(20,2)=134;
  v2(20,3)=  v2(19,3);
  v2(21,1)=2;
  v2(21,2)=431;
  v2(21,3)=(-((-(y(7)*y(18)*T184))/(y(19)*y(19))));
  v2(22,1)=2;
  v2(22,2)=387;
  v2(22,3)=  v2(21,3);
  v2(23,1)=2;
  v2(23,2)=421;
  v2(23,3)=(-((-(y(18)*T25))/(y(19)*y(19))));
  v2(24,1)=2;
  v2(24,2)=157;
  v2(24,3)=  v2(23,3);
  v2(25,1)=2;
  v2(25,2)=432;
  v2(25,3)=(-((-(y(7)*T25))/(y(19)*y(19))));
  v2(26,1)=2;
  v2(26,2)=410;
  v2(26,3)=  v2(25,3);
  v2(27,1)=2;
  v2(27,2)=433;
  v2(27,3)=(-((-((-(y(7)*y(18)*T25))*(y(19)+y(19))))/(y(19)*y(19)*y(19)*y(19))));
  v2(28,1)=3;
  v2(28,2)=121;
  v2(28,3)=(-((1+y(21)-params(5))*params(4)*1/y(17)*T300));
  v2(29,1)=3;
  v2(29,2)=374;
  v2(29,3)=(-((1+y(21)-params(5))*params(4)*T308));
  v2(30,1)=3;
  v2(30,2)=132;
  v2(30,3)=  v2(29,3);
  v2(31,1)=3;
  v2(31,2)=385;
  v2(31,3)=(-((1+y(21)-params(5))*params(4)*T320));
  v2(32,1)=3;
  v2(32,2)=466;
  v2(32,3)=(-(params(4)*T167));
  v2(33,1)=3;
  v2(33,2)=136;
  v2(33,3)=  v2(32,3);
  v2(34,1)=3;
  v2(34,2)=477;
  v2(34,3)=(-(params(4)*T184));
  v2(35,1)=3;
  v2(35,2)=389;
  v2(35,3)=  v2(34,3);
  v2(36,1)=4;
  v2(36,2)=97;
  v2(36,3)=(-(T43*getPowerDeriv(y(5),1-params(6),2)));
  v2(37,1)=4;
  v2(37,2)=212;
  v2(37,3)=(-(y(3)^params(6)*T156));
  v2(38,1)=4;
  v2(38,2)=102;
  v2(38,3)=  v2(37,3);
  v2(39,1)=4;
  v2(39,2)=51;
  v2(39,3)=(-(T156*y(10)*getPowerDeriv(y(3),params(6),1)));
  v2(40,1)=4;
  v2(40,2)=95;
  v2(40,3)=  v2(39,3);
  v2(41,1)=4;
  v2(41,2)=56;
  v2(41,3)=(-(T45*getPowerDeriv(y(3),params(6),1)));
  v2(42,1)=4;
  v2(42,2)=210;
  v2(42,3)=  v2(41,3);
  v2(43,1)=4;
  v2(43,2)=49;
  v2(43,3)=(-(T45*y(10)*getPowerDeriv(y(3),params(6),2)));
  v2(44,1)=6;
  v2(44,2)=73;
  v2(44,3)=(-(T61*T59*y(13)^params(6)*getPowerDeriv(y(4),1-params(6),2)/y(10)));
  v2(45,1)=6;
  v2(45,2)=211;
  v2(45,3)=(-((-T147)/(y(10)*y(10))));
  v2(46,1)=6;
  v2(46,2)=79;
  v2(46,3)=  v2(45,3);
  v2(47,1)=6;
  v2(47,2)=217;
  v2(47,3)=(-((-((-T62)*(y(10)+y(10))))/(y(10)*y(10)*y(10)*y(10))));
  v2(48,1)=6;
  v2(48,2)=280;
  v2(48,3)=(-(T61*T59*getPowerDeriv(y(4),1-params(6),1)*getPowerDeriv(y(13),params(6),1)/y(10)));
  v2(49,1)=6;
  v2(49,2)=82;
  v2(49,3)=  v2(48,3);
  v2(50,1)=6;
  v2(50,2)=286;
  v2(50,3)=(-((-T272)/(y(10)*y(10))));
  v2(51,1)=6;
  v2(51,2)=220;
  v2(51,3)=  v2(50,3);
  v2(52,1)=6;
  v2(52,2)=289;
  v2(52,3)=(-(T61*T59*T55*getPowerDeriv(y(13),params(6),2)/y(10)));
  v2(53,1)=7;
  v2(53,2)=97;
  v2(53,3)=(-((-y(3))*(y(5)+y(5))))/(y(5)*y(5)*y(5)*y(5));
  v2(54,1)=7;
  v2(54,2)=280;
  v2(54,3)=(-((-(params(6)/(1-params(6))))/(y(13)*y(13))));
  v2(55,1)=7;
  v2(55,2)=82;
  v2(55,3)=  v2(54,3);
  v2(56,1)=7;
  v2(56,2)=289;
  v2(56,3)=(-((-((-(y(4)*params(6)/(1-params(6))))*(y(13)+y(13))))/(y(13)*y(13)*y(13)*y(13))));
  v2(57,1)=7;
  v2(57,2)=51;
  v2(57,3)=(-1)/(y(5)*y(5));
  v2(58,1)=7;
  v2(58,2)=95;
  v2(58,3)=  v2(57,3);
  v2(59,1)=8;
  v2(59,2)=121;
  v2(59,3)=(-(y(20)*y(19)*T85*y(18)*params(7)*1/y(17)*T300/paibar__/y(11)));
  v2(60,1)=8;
  v2(60,2)=374;
  v2(60,3)=(-(y(20)*y(19)*T85*y(18)*params(7)*T308/paibar__/y(11)));
  v2(61,1)=8;
  v2(61,2)=132;
  v2(61,3)=  v2(60,3);
  v2(62,1)=8;
  v2(62,2)=385;
  v2(62,3)=(-(y(20)*y(19)*T85*y(18)*params(7)*T320/paibar__/y(11)));
  v2(63,1)=8;
  v2(63,2)=397;
  v2(63,3)=(-(y(20)*y(19)*T85*params(7)*T167/paibar__/y(11)));
  v2(64,1)=8;
  v2(64,2)=133;
  v2(64,3)=  v2(63,3);
  v2(65,1)=8;
  v2(65,2)=408;
  v2(65,3)=(-(y(20)*y(19)*T85*params(7)*T184/paibar__/y(11)));
  v2(66,1)=8;
  v2(66,2)=386;
  v2(66,3)=  v2(65,3);
  v2(67,1)=8;
  v2(67,2)=193;
  v2(67,3)=(params(7)*T217+params(7)*T217)/paibar__;
  v2(68,1)=8;
  v2(68,2)=420;
  v2(68,3)=(-(y(20)*(T85*y(18)*params(7)*T167+y(19)*y(18)*params(7)*T167*T217)/paibar__/y(11)));
  v2(69,1)=8;
  v2(69,2)=134;
  v2(69,3)=  v2(68,3);
  v2(70,1)=8;
  v2(70,2)=431;
  v2(70,3)=(-(y(20)*(T85*y(18)*params(7)*T184+y(19)*y(18)*params(7)*T184*T217)/paibar__/y(11)));
  v2(71,1)=8;
  v2(71,2)=387;
  v2(71,3)=  v2(70,3);
  v2(72,1)=8;
  v2(72,2)=432;
  v2(72,3)=(-(y(20)*(T85*T25*params(7)+y(19)*T25*params(7)*T217)/paibar__/y(11)));
  v2(73,1)=8;
  v2(73,2)=410;
  v2(73,3)=  v2(72,3);
  v2(74,1)=8;
  v2(74,2)=433;
  v2(74,3)=(-(y(20)*(T25*y(18)*params(7)*T217+T25*y(18)*params(7)*T217)/paibar__/y(11)));
  v2(75,1)=8;
  v2(75,2)=236;
  v2(75,3)=(-((-(y(20)*y(19)*T85*y(18)*params(7)*T167/paibar__))/(y(11)*y(11))));
  v2(76,1)=8;
  v2(76,2)=126;
  v2(76,3)=  v2(75,3);
  v2(77,1)=8;
  v2(77,2)=247;
  v2(77,3)=(-((-(y(20)*y(19)*T85*y(18)*params(7)*T184/paibar__))/(y(11)*y(11))));
  v2(78,1)=8;
  v2(78,2)=379;
  v2(78,3)=  v2(77,3);
  v2(79,1)=8;
  v2(79,2)=248;
  v2(79,3)=(-((-(y(20)*y(19)*T85*T25*params(7)/paibar__))/(y(11)*y(11))));
  v2(80,1)=8;
  v2(80,2)=402;
  v2(80,3)=  v2(79,3);
  v2(81,1)=8;
  v2(81,2)=249;
  v2(81,3)=(-((-(y(20)*(T25*y(18)*params(7)*T85+y(19)*T25*y(18)*params(7)*T217)/paibar__))/(y(11)*y(11))));
  v2(82,1)=8;
  v2(82,2)=425;
  v2(82,3)=  v2(81,3);
  v2(83,1)=8;
  v2(83,2)=241;
  v2(83,3)=(-((-((-(T88*y(20)))*(y(11)+y(11))))/(y(11)*y(11)*y(11)*y(11))));
  v2(84,1)=8;
  v2(84,2)=443;
  v2(84,3)=(-(y(19)*T85*y(18)*params(7)*T167/paibar__/y(11)));
  v2(85,1)=8;
  v2(85,2)=135;
  v2(85,3)=  v2(84,3);
  v2(86,1)=8;
  v2(86,2)=454;
  v2(86,3)=(-(y(19)*T85*y(18)*params(7)*T184/paibar__/y(11)));
  v2(87,1)=8;
  v2(87,2)=388;
  v2(87,3)=  v2(86,3);
  v2(88,1)=8;
  v2(88,2)=455;
  v2(88,3)=(-(y(19)*T85*T25*params(7)/paibar__/y(11)));
  v2(89,1)=8;
  v2(89,2)=411;
  v2(89,3)=  v2(88,3);
  v2(90,1)=8;
  v2(90,2)=456;
  v2(90,3)=(-((T25*y(18)*params(7)*T85+y(19)*T25*y(18)*params(7)*T217)/paibar__/y(11)));
  v2(91,1)=8;
  v2(91,2)=434;
  v2(91,3)=  v2(90,3);
  v2(92,1)=8;
  v2(92,2)=448;
  v2(92,3)=(-((-T88)/(y(11)*y(11))));
  v2(93,1)=8;
  v2(93,2)=250;
  v2(93,3)=  v2(92,3);
  v2(94,1)=9;
  v2(94,2)=193;
  v2(94,3)=(-(y(11)*(-(params(7)*0.5*T217*2*T217))));
  v2(95,1)=9;
  v2(95,2)=239;
  v2(95,3)=params(7)*0.5*T217*2*(y(9)/paibar__-1);
  v2(96,1)=9;
  v2(96,2)=195;
  v2(96,3)=  v2(95,3);
  v2(97,1)=10;
  v2(97,2)=193;
  v2(97,3)=(-(T115*(steady_state(4))*1/(steady_state(6))*1/(steady_state(6))*getPowerDeriv(y(9)/(steady_state(6)),params(10),2)));
  v2(98,1)=10;
  v2(98,2)=239;
  v2(98,3)=(-(T231*T263));
  v2(99,1)=10;
  v2(99,2)=195;
  v2(99,3)=  v2(98,3);
  v2(100,1)=10;
  v2(100,2)=241;
  v2(100,3)=(-(T112*1/(steady_state(8))*1/(steady_state(8))*getPowerDeriv(y(11)/(steady_state(8)),params(11),2)));
  v2(101,1)=12;
  v2(101,2)=25;
  v2(101,3)=(-(params(13)*(-(T245*T245))/(T124*T124)));
  v2(102,1)=12;
  v2(102,2)=217;
  v2(102,3)=(-(T245*T245))/(T120*T120);
  v2(103,1)=13;
  v2(103,2)=1;
  v2(103,3)=(-(exp(params(15)*x(it_, 2))*params(4)*1/params(4)*1/params(4)*getPowerDeriv(y(1)/params(4),params(14),2)));
  v2(104,1)=13;
  v2(104,2)=507;
  v2(104,3)=(-(T204*params(15)*exp(params(15)*x(it_, 2))));
  v2(105,1)=13;
  v2(105,2)=23;
  v2(105,3)=  v2(104,3);
  v2(106,1)=13;
  v2(106,2)=529;
  v2(106,3)=(-(T137*params(15)*params(15)*exp(params(15)*x(it_, 2))));
  g2 = sparse(v2(:,1),v2(:,2),v2(:,3),13,529);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],13,12167);
end
end

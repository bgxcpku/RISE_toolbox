%% Code automagically generated by rise on 02-Sep-2013 14:51:53

function [G1]=StaticEndogenous___(y,x,ss,param,def,s0,s1)

ref_0_7_=y(2)/y(2);
ref_0_8_=ref_0_7_^param(22);
ref_0_19_=1-param(1);
ref_0_42_=(y(6)/def(1))-1;
if nargout>0;
G1=sparse(13,13);
G1(2,1)=-((ref_0_8_*y(8))/y(6));
G1(8,1)=-((((((ref_0_8_*param(26))*ref_0_42_)*y(6))/def(1))*y(12))/y(12));
G1(13,1)=1-(exp((param(23)*x(1)))*((((1/param(2))*param(20))*(y(1)/param(2))^(param(20)-1))*param(2)));
ref_1_111_=param(22)-1;
G1(1,2)=-((y(2)^ref_1_111_*param(22))*(y(5)^param(6)*param(4)));
G1(4,4)=-(((y(4)^(param(1)-1)*param(1))*y(13))*y(5)^ref_0_19_);
G1(5,4)=1-(1-param(5));
G1(7,4)=1/y(5);
G1(1,5)=-(((y(5)^(param(6)-1)*param(6))*param(4))*y(2)^param(22));
G1(4,5)=-((ref_0_19_*y(5)^(ref_0_19_-1))*(y(4)^param(1)*y(13)));
G1(7,5)=(-y(4))/y(5)^2;
G1(2,6)=-((-((y(8)*y(1))*ref_0_8_))/y(6)^2);
G1(8,6)=(((((1/def(1))*param(26))*y(6))+(ref_0_42_*param(26)))/def(1))-(((((((1/def(1))*((param(26)*y(1))*ref_0_8_))*y(6))+(((param(26)*y(1))*ref_0_8_)*ref_0_42_))/def(1))*y(12))/y(12));
G1(9,6)=-((-(((2*(1/def(1)))*ref_0_42_^1)*(0.5*param(26))))*y(12));
G1(10,6)=-(((((1/ss(6))*param(17))*(y(6)/ss(6))^(param(17)-1))*ss(8))*(y(12)/ss(12))^param(18));
G1(8,7)=-param(25);
G1(2,8)=-((ref_0_8_*y(1))/y(6));
G1(3,9)=-(ref_0_8_*param(2));
G1(6,9)=-(((((y(9)^(param(1)-1)*param(1))*y(11)^ref_0_19_)*ref_0_19_^ref_0_19_)*param(1)^param(1))/y(13));
G1(7,9)=-((-((param(1)/ref_0_19_)*y(11)))/y(9)^2);
G1(11,10)=-(1-param(28));
G1(6,11)=-(((((ref_0_19_*y(11)^(ref_0_19_-1))*y(9)^param(1))*ref_0_19_^ref_0_19_)*param(1)^param(1))/y(13));
G1(7,11)=-((param(1)/ref_0_19_)/y(9));
G1(9,12)=-(1-((0.5*param(26))*ref_0_42_^2));
G1(10,12)=-((((1/ss(12))*param(18))*(y(12)/ss(12))^(param(18)-1))*((y(6)/ss(6))^param(17)*ss(8)));
G1(4,13)=-(y(4)^param(1)*y(5)^ref_0_19_);
G1(6,13)=-((-(((y(11)^ref_0_19_*y(9)^param(1))*ref_0_19_^ref_0_19_)*param(1)^param(1)))/y(13)^2);
G1(12,13)=1-(exp((param(24)*x(2)))*((((1/param(27))*param(21))*(y(13)/param(27))^(param(21)-1))*param(27)));
G1(9,2)=1;
G1(5,3)=-1;
G1(9,3)=1;
G1(6,7)=1;
G1(11,8)=1;
G1(10,10)=1;
G1(1,11)=1;
G1(4,12)=1;
end;

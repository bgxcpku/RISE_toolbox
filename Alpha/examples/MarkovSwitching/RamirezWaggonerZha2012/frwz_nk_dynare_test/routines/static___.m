%% Code automagically generated by rise on 14-Aug-2013 12:04:43

function [RES]=static___(y,x,ss,param,def,s0,s1)

RES=zeros(3,1);
RES(1)=1-param(1)*(1-.5*param(3)*(y(1)-1)^2)*y(3)*y(2)/((1-.5*param(3)*(y(1)-1)^2)*y(3)*exp(param(4))*y(1));
RES(2)=1-param(2)+param(2)*(1-.5*param(3)*(y(1)-1)^2)*y(3)+param(1)*param(3)*(1-.5*param(3)*(y(1)-1)^2)*(y(1)-1)*y(1)/(1-.5*param(3)*(y(1)-1)^2)-param(3)*(y(1)-1)*y(1);
RES(3)=(y(2)/ss(2))^param(7)*(y(1)/ss(1))^((1-param(7))*param(6))*exp(param(8)*x(1))-y(2)/ss(2);

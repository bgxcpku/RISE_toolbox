%% Code automagically generated by rise on 20-Aug-2013 15:52:36

function [RES]=vectorized_dynamic_params___(z,x,ss,param,def,s0,s1)

RES=zeros(3,10);
RES(1,:)=1-param(3,:).*(1-.5.*param(5,:).*(z(3,:)-1).^2).*z(5,:).*z(4,:)./((1-.5.*param(5,:).*(z(1,:)-1).^2).*z(2,:).*exp(param(6,:)).*z(1,:));
RES(2,:)=1-param(4,:)+param(4,:).*(1-.5.*param(5,:).*(z(3,:)-1).^2).*z(5,:)+param(3,:).*param(5,:).*(1-.5.*param(5,:).*(z(3,:)-1).^2).*(z(1,:)-1).*z(1,:)./(1-.5.*param(5,:).*(z(1,:)-1).^2)-param(5,:).*(z(3,:)-1).*z(3,:);
RES(3,:)=(z(6,:)./ss(2)).^param(9,:).*(z(3,:)./ss(1)).^((1-param(9,:)).*param(8,:)).*exp(param(10,:).*z(7,:))-z(4,:)./ss(2);

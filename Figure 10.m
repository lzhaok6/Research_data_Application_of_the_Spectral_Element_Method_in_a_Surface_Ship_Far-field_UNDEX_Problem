%Fix DOF
%close all
clear
NINT=[2:11]; %upto element order 10
NEL=1;
NNODE=NINT.^3;
a = NEL*(2*NINT.^6-NINT.^3);   %SEM with no tensor contraction (direct matrix product)
b = NEL*(12*NINT.^4+15*NINT.^3); %SEM with tensor contraction
NELFEM=(NINT-1).^3*NEL; %Total element number for h refinement (CAFE)
c=NELFEM*(2*2^6-2^3); %linear FEM/SEM with no tensor factorization (direct matrix product)
d=NELFEM*(12*2^4+15*2^3); %linear FEM/SEM with tensor factorization
plot(NINT-1,a,'-*r');
hold on 
plot(NINT-1,b,'-.ob');
hold on 
plot(NINT-1,c,'--dg');
hold on 
plot(NINT-1,d,'-+m');
lg=legend('High-order CASE direct matrix','High-order CASE tensor product','Linear CASE/CAFE direct matrix','Linear CASE/CAFE tensor product','Location','northwest');
set(lg,'FontSize',5)
lb1=xlabel('h/p refinement level');
lb2=ylabel('FLOP/element');
% set(lb1,'FontSize',20);
% set(lb2,'FontSize',20);
axis square
set(gca,'fontsize',10)
set(gcf,'PaperPosition',[0 0 3 2.62]);
set(gcf,'PaperSize',[3 2.62])
print(1,'-r300', '-dpdf',strcat('1'))
close all 
NINT=[4:8]; % Refinement level from 3 to 7
N8bench=[0.036263492040220,0.027551477879473,0.019753145927593,0.015023438422813,0.012317065304608;0.064794423362128,0.051802318238374,0.043613520187149,0.037987302138569,0.034656284250918;0.091690568746068,0.074268552291392,0.062154801229703,0.052514900065207,0.046469364318648];
%High-order SEM; Linear SEM; Linear FEM
nnode=[210226,490637,949336,1630195,2577086]';
loglog(nnode(:),N8bench(1,:),'-*r','LineWidth',1.0);
hold on
loglog(nnode(:),N8bench(2,:),'-xm','LineWidth',1.0);
hold on
loglog(nnode(:),N8bench(3,:),'-+g','LineWidth',1.0);
hold on 
lg=legend('High-order CASE','Linear CASE','Linear CAFE','Location','northeast');
set(lg,'FontSize',5)
lb1=xlabel('DOF');
lb2=ylabel('Error norm');
ylim([0.01,0.15]);
% set(lb1,'FontSize',20);
% set(lb2,'FontSize',20);
axis square
set(gca,'fontsize',10)
set(gcf,'PaperPosition',[0 0 3 2.62]);
set(gcf,'PaperSize',[3 2.62])
print(1,'-r300', '-dpdf',strcat('1'))

close all
plot(ref4(:,1)+1.2192,ref4(:,2),':b','LineWidth',1.0);
hold on
plot(ref4FEM(:,1)+1.2192,ref4FEM(:,2),'-.c','LineWidth',1.0);
hold on 
plot(N4(:,1)+1.2192,N4(:,2),'--r','LineWidth',1.0);
hold on 
plot(N8(:,1)+1.2192,N8(:,2),'-g','LineWidth',1.0);
lg=legend('CASE N=1','CAFE N=1','CASE N=4','CASE N=8','Location','southwest');
set(lg,'FontSize',10)
lb1=xlabel('Depth (m)');
lb2=ylabel('Dynamic Condensation (kg/m^3)');
%set(lb1,'FontSize',20);
%set(lb2,'FontSize',20);
axis square

set(gca,'fontsize',10)
set(gcf,'PaperPosition',[0 0 3 2.62]);
set(gcf,'PaperSize',[3 2.62])
print(1,'-r300', '-dpdf',strcat('1'))


close all
BASEELE=7312;
pdt=[8.70518e-06,5.29987e-06,3.56347e-06,2.55908e-06,1.92626e-06];
hdt=[1.59649e-05,1.19737e-05,9.57894e-06,7.98245e-06,6.8421e-06];
hdt_fem=[2.39473e-05,1.79605e-05,1.43684e-05,1.19737e-05,1.02631e-05]; 
NINT=[4:8]; % Refinement level from 3 to 7
N8bench=[0.036263492040220,0.027551477879473,0.019753145927593,0.015023438422813,0.012317065304608;0.064794423362128,0.051802318238374,0.043613520187149,0.037987302138569,0.034656284250918;0.091690568746068,0.074268552291392,0.062154801229703,0.052514900065207,0.046469364318648];
%High-order SEM; Linear SEM; Linear FEM
nnode=[210226,490637,949336,1630195,2577086]';
SEMnotensor = BASEELE*(2*NINT.^6-NINT.^3);   %SEM before tensor contraction
SEMtensor = (12*BASEELE*NINT.^4+15*NINT.^3*BASEELE); %SEM after tensor contraction
BASEELE=(NINT-1).^3*BASEELE;
SEM_linear=BASEELE*(2*2^6-2^3);  
FEM=BASEELE*(2*2^6-2^3); 
tterm=0.08;
pndt=round(tterm./pdt);
hndt=round(tterm./hdt);
hndt_fem=round(tterm./hdt_fem);
SEMnotensoroc=SEMnotensor.*pndt;
SEMtensoroc=SEMtensor.*pndt;
SEM_linearoc=SEM_linear.*hndt;
FEMoc=FEM.*hndt_fem;
loglog(SEMnotensoroc(:),N8bench(1,:),'-*r','LineWidth',1.0);
hold on
loglog(SEMtensoroc(:),N8bench(1,:),'-ob','LineWidth',1.0);
hold on
loglog(SEM_linearoc(:),N8bench(2,:),'-xm','LineWidth',1.0);
hold on
loglog(FEMoc(:),N8bench(3,:),'-+g','LineWidth',1.0);
hold on 
%xlim([1e10,5e14]);
ylim([1e-2,0.25]);
% yconst(1:10000)=0.1; 
% xconst(1:10000)=linspace(0,max(SEMnotensoroc),10000);
% plot(xconst(:),yconst(:),'-.k','LineWidth',1.0);
lg=legend('High-order CASE','High-order CASE with T.F.','Linear CASE','Linear CAFE','Location','northeast');
set(lg,'FontSize',5)
lb1=xlabel('FLOP');
lb2=ylabel('Error norm');
% set(lb1,'FontSize',20);
% set(lb2,'FontSize',20);
axis square
set(gca,'fontsize',10)
set(gcf,'PaperPosition',[0 0 3 2.62]);
set(gcf,'PaperSize',[3 2.62])
print(1,'-r300', '-dpdf',strcat('1'))

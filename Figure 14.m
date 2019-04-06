close all
BASEELE2=[7312,26136,58496,121000,197424];
BASEELE3=[968,7312,26136,58496,121000];
BASEELE4=[968,7312,26136,58496];
N2dt=[1.69333e-05,1.12889e-05,8.46667e-06,6.77333e-06,5.64444e-06];
N3dt=[1.74104e-05,8.70518e-06,5.80345e-06,4.35259e-06,3.48207e-06];
N4dt=[1.05997e-05,5.29987e-06,3.53325e-06,2.64993e-06]; 
benchN2=[0.058272795080481,0.044367529815922,0.039132573108024,0.035745989653197,0.033610032546029];
benchN3=[0.050891083901382,0.037804979394320,0.031099164182267,0.028741446678764,0.022701905656832];
benchN4=[0.033289301788752,0.029125226721864,0.021585348733235,0.019486797499789];
nnode2=[64231,222325,490637,1004541,1630195]';
nnode3=[29497,210226,735301,1630195,3348961,]';
nnode4=[67881,490637,1725241,3833881]';
N2 = (12*BASEELE2*3.^4+15*3.^3*BASEELE2); %SEM after tensor contraction
N3 = (12*BASEELE3*4.^4+15*4.^3*BASEELE3);
N4 = (12*BASEELE4*5.^4+15*5.^3*BASEELE4);
tterm=0.08;
N2ndt=round(tterm./N2dt);
N3ndt=round(tterm./N3dt);
N4ndt=round(tterm./N4dt);
N2oc=N2.*N2ndt;
N3oc=N3.*N3ndt;
N4oc=N4.*N4ndt;
loglog(N2oc,benchN2,'-*r','LineWidth',1.0);
hold on
loglog(N3oc,benchN3,'-ob','LineWidth',1.0);
hold on
loglog(N4oc,benchN4,'-xm','LineWidth',1.0);
%xlim([1e10,5e14]);
ylim([0.017,0.07]);
lg=legend('N=2','N=3','N=4','Location','northeast');
set(lg,'FontSize',7)
lb1=xlabel('FLOP');
lb2=ylabel('Error norm');
% set(lb1,'FontSize',20);
% set(lb2,'FontSize',20);
axis square
set(gca,'fontsize',10)
set(gcf,'PaperPosition',[0 0 3 2.62]);
set(gcf,'PaperSize',[3 2.62])
print(1,'-r300', '-dpdf',strcat('1'))











close all
% figure(1)
% plot(Abaqus_loc3_2_srs(:,1),Abaqus_loc3_2_srs(:,2),'-r','LineWidth',1.0);
% hold on 
% plot(SEM_TFM_loc3_srs(:,1),SEM_TFM_loc3_srs(:,2),'-b','LineWidth',1.0);
% hold on 
% plot(SEM_SFM_loc3_srs(:,1),SEM_SFM_loc3_srs(:,2),'-m','LineWidth',1.0);
% %hold on 
% %plot(Clements_loc5(:,1),Clements_loc5(:,2)*0.3048,'-k','LineWidth',1.0);
% grid on 
% lg=legend('Abaqus\_TFM','SEM\_TFM','SEM\_SFM','experiment');
% %lg=legend('SEM\_TFM','SEM\_SFM');
% xlim([10,500]);
% set(lg,'FontSize',15)
% %lb1=xlabel('time (ms)');
% lb1=xlabel('frequency (Hz)');m
% lb2=ylabel('velocity (m/s)');
% %lb2=ylabel('acceleration (m/s^2)');
% set(lb1,'FontSize',20);
% set(lb2,'FontSize',20);

% figure (2)
% count=1;
% for i=1:size(aba_vel_srs,1)
%     if aba_vel_100ms_srs(i,1)<=150
%         aba_vel_srs_max(count,1)=aba_vel_100ms_srs(count,1);
%         aba_vel_srs_max(count,2)=aba_vel_100ms_srs(count,2);
%         count=count+1;
%     end
% end
% count=1;
% for i=1:size(sem_vel_srs,1)
%     if sem_vel_srs(i,1)<=2000
%         sem_vel_srs_max(count,1)=sem_vel_srs(count,1);
%         sem_vel_srs_max(count,2)=max(sem_vel_srs(count,2),sem_vel_srs(count,3));
%         count=count+1;
%     end
% end
% count=1;  
% for i=1:size(sem_sfm_vel_srs,1)
%     if sem_sfm_vel_srs(i,1)<=2000
%         sem_sfm_vel_srs_max(count,1)=sem_sfm_vel_srs(count,1);
%         sem_sfm_vel_srs_max(count,2)=max(sem_sfm_vel_srs(count,2),sem_sfm_vel_srs(count,3));
%         count=count+1;
%     end
% end
plot(BS_new(:,1)/1000,BS_new(:,2),'-r','LineWidth',1);
hold on 
plot(BSTFM(:,1),BSTFM(:,2),'-.b','LineWidth',1);
% hold on 
% plot(SEM_TFM_100ms_srs(:,1),SEM_TFM_100ms_srs(:,2),'-b','LineWidth',1);
% hold on
% plot(Clements_srs(:,1),Clements_srs(:,2)*0.3048,'-k','LineWidth',1);
% hold on 
% plot(Abaqus_HG_100ms_srs(:,1),Abaqus_HG_100ms_srs(:,2),'-m','LineWidth',1);
% grid on
% %lg=legend('Abaqus\_TFM','SEM\_TFM','Experiment','Abaqus\_TFM\_HG');
% %lg=legend('Abaqus\_TFM','SEM\_TFM','SEM\_SFM');
lg=legend('Benchmark','Inhouse','Location','northeast');
set(lg,'FontSize',7)
lb1=xlabel('time (s)');
lb2=ylabel('velocity (m/s)');
% set(lb1,'FontSize',20);
% set(lb2,'FontSize',20);
xlim([0,0.012]);
axis square
set(gca,'fontsize',10)
set(gcf,'PaperPosition',[0 0 3 2.62]);
set(gcf,'PaperSize',[3 2.62])
print(1,'-r300', '-dpdf',strcat('1'))
% figure(1)
% plot(nosub_0_025(:,1),nosub_0_025(:,2),'-r','LineWidth',0.5);
% hold on 
% plot(nosub_0_05(:,1),nosub_0_05(:,2),'-b','LineWidth',0.5);
% hold on 
% plot(nosub_0_1(:,1),nosub_0_1(:,2),'-k','LineWidth',0.5);
% hold on 
% plot(nosub_0_2(:,1),nosub_0_2(:,2),'-m','LineWidth',0.5);
% % hold on 
% % plot(subcyc_0_4(:,1),subcyc_0_4(:,2),'-g','LineWidth',0.5);
% % hold on 
% % plot(set6BS(:,1)*1000,set6BS(:,2),'-r','LineWidth',0.5);
% % hold on 
% % plot(set7BS(:,1)*1000,set7BS(:,2),'.-m','LineWidth',0.5);
% % plot(BS(:,1)*1000+3.81/1450*1000,BS(:,2),'*r','LineWidth',1.0);
% grid on 
% lg=legend('0.025dt','0.05dt','0.1dt','0.2dt');
% set(lg,'FontSize',15)
% lb1=xlabel('time (s)');
% lb2=ylabel('velocity (m/s)');
% set(lb1,'FontSize',20);
% set(lb2,'FontSize',20);
% %xlim([0,16]);
% L2=sqrt(sum((interp1(nosub_0_5(:,1),nosub_0_5(:,2),nosub_0_025(:,1))-nosub_0_025(:,2)).^2)/size(nosub_0_025,1))

% figure(1)
% plot(ref1N8_algo1(1:30000,1),ref1N8_algo1(1:30000,2),'-r','LineWidth',1.0);
% hold on
% plot(ref4N1_algo1(1:30000,1),ref4N1_algo1(1:30000,2),'-.b','LineWidth',1.0);
% hold on
% plot(ref4N1_algo5(:,1),ref4N1_algo5(:,2),'--c','LineWidth',1.0);
% % hold on
% % plot(ref1N7(:,1),ref1N7(:,2),'-m','LineWidth',1.0);
% % hold on
% % plot(ref1N8(:,1),ref1N8(:,2),':g','LineWidth',1.0);
% lg=legend('ref1N8','ref4N1-conservative','ref4N1-consistent');
% set(lg,'FontSize',15)
% lb1=xlabel('time (s)');
% lb2=ylabel('velocity (m/s)');
% set(lb1,'FontSize',20);
% set(lb2,'FontSize',20);
% axis square
% xlim([0,500]);
% plot(refine15N1(:,1),refine15N1(:,2),'-.g','LineWidth',1.0);
% hold on 
% plot(refine1N4(:,1),refine1N4(:,2),'-r','LineWidth',1.0);
% hold on 
% plot(refine4N1(:,1),refine4N1(:,2),'--b','LineWidth',1.0);
% %xlim([0,0.03]);
% % hold on 
% hold on 
% plot(Nastran(:,1),Nastran(:,2),'-g','LineWidth',1.0);
% hold on
% plot(N5res(:,1),N5res(:,2),'--m','LineWidth',1.0);
% hold on 
% plot(ref7FEM(:,1),ref7FEM(:,2),':c','LineWidth',1.0);
% hold on 
% plot(ref8FEM(:,1),ref8FEM(:,2),'-r','LineWidth',1.0);
% hold on 
% plot(N7(:,1),N7(:,2),'-g','LineWidth',1.0);
% hold on 
%xlim([0,0.06]);
% % grid on 
%  %100000 Elements (a,b and c are linear w.r.t BASEELE)
% %a = (2*BASEELE+2)+(BASEELE*(2*NINT.^3+2))+(BASEELE*NINT.^3)+BASEELE*(2*NINT.^3+2)+BASEELE*NINT.^3+BASEELE*NINT.^3.*(2*NINT.^3+2)+3*BASEELE*NINT.^6+BASEELE*(2*NINT.^3+2)+2*NINT.^3*BASEELE;   %SEM before tensor contraction
% %b = (2*BASEELE+2)+(BASEELE*(2*NINT+2))+(BASEELE*NINT.*(2*NINT+2))+(BASEELE*NINT.^2.*(2*NINT+2))+(NINT.^3*BASEELE)+ (BASEELE*(2*NINT+2))+(BASEELE*NINT.*(2*NINT+2))+BASEELE*NINT.^2.*(2*NINT+2)+BASEELE*NINT.^3*(2*3+2)+3*NINT.^3*BASEELE+BASEELE*(2*NINT+2)+BASEELE*NINT.*(2*NINT+2)+BASEELE*NINT.^2.*(2*NINT+2)+BASEELE*NINT.^3.*(2*NINT+2)+9*BASEELE*NINT.^4+BASEELE*(2 * NINT + 2)+BASEELE*NINT.*(2*NINT + 2)+BASEELE*NINT.^2.*(2*NINT+2)+18*NINT.^3*BASEELE+BASEELE*(2*NINT+2)+BASEELE*NINT.*(2*NINT+2)+BASEELE*NINT.^2.*(2*NINT+2)+BASEELE*NINT.^3.*(2*NINT+2)+7*NINT.^4*BASEELE+ BASEELE*(2 * NINT + 2)+BASEELE*NINT.*(2*NINT + 2)+BASEELE*NINT.^2.*(2*NINT+2)+BASEELE*2*NINT.^3; %SEM after tensor contraction
% %BASEELE=(NINT-1).^3*BASEELE;
% %c=2*BASEELE+2+BASEELE*(2*2.^3+2)+BASEELE*2.^3+BASEELE*(2*2.^3+2)+BASEELE*2.^3+BASEELE*2.^3.*(2*2.^3+2)+3*BASEELE*2.^6+BASEELE*(2*2.^3+2)+2*2.^3*BASEELE;   %SEM before tensor contraction
% %if only floating point operation is considered (i.e. assignment and comparison is not considered)
% % BASEELE=2752;
% % nnode=2*BASEELE*(NINT-1).^3; 
% % NINT=[3:8]; % Refinement level from 2 to 7
% % SEMnotensor = 1*nnode+((BASEELE*NINT.^3)+2*BASEELE*NINT.^6+1*NINT.^3*BASEELE);   %SEM before tensor contraction
% % SEMtensor = 1*nnode+(6*BASEELE*NINT.^4+15*NINT.^3*BASEELE+6*NINT.^4*BASEELE + BASEELE*1*NINT.^3); %SEM after tensor contraction
% % BASEELE = (NINT-1).^3*BASEELE;
% % FEM = 1*nnode+((BASEELE*2^3)+2*BASEELE*2^6+1*2^3*BASEELE); 
% % tterm=0.01;
% % pndt=round(tterm./pdt);
% % hndt=round(tterm./hdt);
% % SEMnotensoroc=SEMnotensor'.*pndt;
% % SEMtensoroc=SEMtensor'.*pndt;
% % FEMoc=FEM'.*hndt;
% % loglog(SEMnotensoroc(:),N8bench(2,:),'-*r','LineWidth',1.0);
% % hold on
% % loglog(SEMtensoroc(:),N8bench(2,:),'-ob','LineWidth',1.0);
% % hold on
% % loglog(FEMoc(:),N8bench(1,:),'-xm','LineWidth',1.0);
% % hold on
% %L2=sqrt(sum((BS_0_0125TFM'-interp1(Benchmark(:,1),Benchmark(:,2),linspace(0.0,0.012,size(BS_0_0125TFM,1)))).^2)/size(BS_0_0125TFM,1))
% %L2=sqrt(sum((BS_nonm3_1GS(:,2)-interp1(Benchmark2(:,1)/1000,Benchmark2(:,2),BS_nonm3_1GS(:,1))).^2)/size(BS_nonm3_1GS,1))
% 
% %Bleich Sandler case comparison
% % plot(BS_N7ref1_aba(:,1),BS_N7ref1_aba(:,2),'-g','LineWidth',1.0);
% % hold on
% % plot(BS_N7ref1(:,1),BS_N7ref1(:,2),'-m','LineWidth',1.0);
% % grid on
% % hold on 
% % plot(linspace(0,0.012,size(BS_N7ref1_3DSFM,1)),BS_N7ref1_3DSFM,'-r','LineWidth',1.0);
% % grid on
% % hold on 
% % plot(linspace(0,0.012,size(BS_N7ref1_2DSFM,1)),BS_N7ref1_2DSFM,'-b','LineWidth',1.0);
% % %plot(BS_N3ref1_aba(:,1),BS_N3ref1_aba(:,2),'-c','LineWidth',1.0); 
% % lg=legend('refine=1, N=7 3D TFM Abaqus','refine=1, N=7 3D TFM','refine=1, N=7 3D SFM','refine=1, N=7 2D SFM');
% % set(lg,'FontSize',15)
% % lb1=xlabel('time (s)');
% % lb2=ylabel('velocity (m/s)');
% % set(lb1,'FontSize',20);
% % set(lb2,'FontSize',20);
% %xlim([0,0.02]);
% 
% % % %Refinement=[4,5,6,7];
% % Refinement=[29809, 96805, 225025, 434341, 744625, 1175749];
% % % % Ref12bench=[0.076590678836025,0.054308743577976,0.035796244937316,0.025597481259343,0.017026144460511,0.013057311341055];
% N8benchP=[0.136287453637875, 0.080981731366191, 0.052027338135303, 0.043609234820034, 0.031433576316893, 0.027450874948235];
% N8benchH=[0.169847387010948, 0.128754276791305, 0.100226771427551,0.084149465517375,0.072977838554708,0.063852637591006];
% % % % N7bench=[0.061332763529240,0.049250595077172,0.042514809726469,0.039749680156367;0.03080540139707,0.020836205074109,0.021692059465490,0];
% % % % N6bench=[0.059006037022640,0.048270919002849,0.040735070251617,0.036264722913343];
% % % % Ref8bench=[0.071789646142082,0.047844829872627,0.029645710806052,0.018870648897359,0.009766465994946,0.005382543326308];
% % % % plot(withoutpre(:,1),withoutpre(:,2),'-b','LineWidth',1);
% % % % hold on
% % % % plot(withpre(:,1),withpre(:,2),'-.r','LineWidth',1);
% % % % hold on
% loglog(Refinement,N8benchP,'-or','LineWidth',1);
% hold on
% loglog(Refinement,N8benchH,'-*b','LineWidth',1);
% % % %loglog(Refinement,N8benchH(1,:),'-*b','LineWidth',1);
% % % % plot(N4strupre(:,1),N4strupre(:,2),'-.r','LineWidth',1);
% % % % hold on
% % % % plot(mesh0_5ft_srs(:,1),mesh0_5ft_srs(:,2),'--b','LineWidth',1);
% % % % hold on
% % % % plot(mesh_0_25ft_srs(:,1),mesh_0_25ft_srs(:,2),':g','LineWidth',1);
% % % % hold on
% % % % plot(Ref4N1_conv(:,1),Ref4N1_conv(:,2),'--r','LineWidth',1);
% % % % plot(linspace(0,0.012,size(BS_N8_SFM_2D,1)),BS_N8_SFM_2D,'-m','LineWidth',0.5);
% % % % hold on 
% % % % hold on 
% % % % plot(alg4(:,1),alg4(:,2),'--r','LineWidth',2);
% % % % grid on
% % % %hold on
% % % % grid ond
% % % %plot(Clements(:,1)/1000+0.001,Clements(:,2)*0.3048,'-.r','LineWidth',1);
% % % % hold on
% % % % plot(shell_sml_rig_N7ref1_al1(:,1),shell_sml_rig_N7ref1_al1(:,2),'-m','LineWidth',1);
% % % % %plot(shell_sml_N6ref1_al1_new_5_7_fix(:,1),shell_sml_N6ref1_al1_new_5_7_fix(:,2),'-c','LineWidth',1);
% % % % %plot(shell_sml_N7ref1_al1_new_5_7_fix(:,1),shell_sml_N7ref1_al1_new_5_7_fix(:,2),'-m','LineWidth',1);
% % % %lg=legend('N=2','N=3','N=4','N=5','N=6','N=7','N=8');
% lg=legend('P refinement (SEM)','H refinement (FEM)');
% % % %lg=legend('5th P sefinement','6th P refinement','7th P refinement');
% set(lg,'FontSize',15)
% lb1=xlabel('DOF');
% lb2=ylabel('L2 error norm');
% set(lb1,'FontSize',20);
% set(lb2,'FontSize',20);
% % % % %xlim([0,250]);
% % % % %ylim([0.012,0.08]);
% % % % %L2=sqrt(sum((shell_sml_N3ref1_al1_new(:,2)-interp1(shell_sml_N1ref12_al1_new(:,1),shell_sml_N1ref12_al1_new(:,2),shell_sml_N3ref1_al1_new(:,1))).^2)/size(shell_sml_N3ref1_al1_new,1))
% % % % %L2=sqrt(sum((BS_N6ref1(:,2)-interp1(BS_N7ref1(:,1),BS_N7ref1(:,2),BS_N6ref1(:,1))).^2)/size(BS_N6ref1,1))
% axis square
% % % %grid on
% % % %xlim([0.2e6,2e6]);
% txt1 = '\rightarrow Ref = 4';
% txt2 = '\rightarrow Ref = 5';
% txt3 = '\rightarrow Ref = 6';
% txt4 = '\rightarrow Ref = 7';
% text(Refinement(3),N8benchH(3),txt1)
% text(Refinement(4),N8benchH(4),txt2)
% text(Refinement(5),N8benchH(5),txt3)
% text(Refinement(6),N8benchH(6),txt4)
% txt5 = '\rightarrow N = 4';
% txt6 = '\rightarrow N = 5';
% txt7 = '\rightarrow N = 6';
% txt8 = '\rightarrow N = 7';
% text(Refinement(3),N8benchP(3),txt5)
% text(Refinement(4),N8benchP(4),txt6)
% text(Refinement(5),N8benchP(5),txt7)
% text(Refinement(6),N8benchP(6),txt8)
% tex9 = '\rightarrow Ref = 2';
% tex10 = '\rightarrow N = 2';
% tex11 = '\rightarrow Ref = 3';
% tex12 = '\rightarrow N = 3';
% text(Refinement(1),N8benchH(1),tex9);
% text(Refinement(1),N8benchP(1),tex10);
% text(Refinement(2),N8benchH(2),tex11);
% text(Refinement(2),N8benchP(2),tex12);

% %new error norm derivation method
% clear bench;
% clear app;
% bench=TFM;
% app=SFM;
% %bench(:,2)=bench(:,1);
% %bench(:,1)=linspace(0,0.012,size(bench,1));
% %app(:,2)=app(:,1);
% %app(:,1)=linspace(0,0.012,size(app,1));
% %dt1=app(2,1)-app(1,1); %only for fixed time step size
% dt1=abs(app(2:end,1)-app(1:end-1,1));
% dt2=abs(bench(2:end,1)-bench(1:end-1,1));
% fbc=(app(:,2)-interp1(bench(:,1),bench(:,2),app(:,1))).^2;
% fb=bench;
% L2=sqrt(sum((fbc(1:end-1)+fbc(2:end)).*dt1/2))/sqrt(sum((fb(1:(end-1),2).^2+fb(2:end,2).^2).*dt2/2))
% %Old L2 error norm definition
% %L2=sqrt(sum((app(:,2)-interp1(bench(:,1),bench(:,2),app(:,1))).^2)/size(app,1))

% BS_ini_slop=BS(1,2)/BS(1,1);
% BS_ini(:,1)=linspace(0,BS(1,1),round(BS(1,1)/(BS(2,1)-BS(1,1))));
% BS_ini(:,2)=BS_ini(:,1)*BS_ini_slop;re
% BS_new(:,2)=BS_new(:,2)*1.444752;


%condensation plot
% a=load('PT_line_result_3.500167ms 28-08-2017 14-07-28.txt');
% plot(a(:,1),a(:,2),'-r','LineWidth',1);
% grid on

% %the difference of time step size of h and p refinement
% href=[4.12885e-06, 3.30308e-06, 2.75257e-06, 2.35934e-06];
% pref=[1.82754e-06, 1.22878e-06, 8.8244e-07, 6.64228e-07];
% plot([4,5,6,7],href,'-or','LineWidth',1);
% hold on 
% plot([4,5,6,7],pref,'-*b','LineWidth',1);
% hold on 
% grid on
% lg=legend('h refinement','p refinement');
% set(lg,'FontSize',15)
% lb1=xlabel('refinement level');
% lb2=ylabel('time step size (s)');
% set(lb1,'FontSize',20);
% set(lb2,'FontSize',20);













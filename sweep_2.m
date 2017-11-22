gain=0:0.05:0.5;
control_lab_2;
print('-scontrol_lab_2','-dpng','control_lab_2')

 for x=1:length(gain)
  K=gain(x);
  fname = ['K_' num2str(x) '.mat'];
  set_param('control_lab_2/output','Filename',fname);
  
  sim('control_lab_2');
  
  load(fname);
  plot(ans);
  x0=10;
  y0=10;
  width=400;
  height=250;
  set(gcf,'units','points','position',[x0,y0,width,height]);
  title(['Response of system to Step input with K =' num2str(K)]);
  ylabel('Amplitude');

  
  sname = ['K_' num2str(K) '.png'];
  saveas(gcf, sname);
  

 end

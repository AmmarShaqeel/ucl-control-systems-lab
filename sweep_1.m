gain=1:9;
control_lab_1;
print('-scontrol_lab_1','-dpng','model')

 for x=1:length(gain)
  K=gain(x);
  fname = ['K_' num2str(x) '.mat'];
  set_param('control_lab_1/output','Filename',fname);
  
  sim('control_lab_1');
  
  load(fname);
  plot(ans);
  x0=10;
  y0=10;
  width=400;
  height=250;
  set(gcf,'units','points','position',[x0,y0,width,height]);
  title(['Response of system to Step input with K =' num2str(K)]);
  ylabel('Amplitude');
  legend('Input','Response');

  
  sname = ['K_' num2str(x) '.png'];
  saveas(gcf, sname);
  

 end

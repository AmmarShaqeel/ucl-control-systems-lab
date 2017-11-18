gain=[1:8];
control_lab_1;
print('-scontrol_lab_1','-dpng','model')

 for x=1:length(gain)
  K=gain(x);
  fname = ['K_' num2str(x) '.mat'];
  set_param('control_lab_1/output','Filename',fname);
  
  sim('control_lab_1');
  
  load(fname);
  plot(ans);
  title(['Response of system to Step input with K =' num2str(x)]);
  
  sname = ['K_' num2str(x) '.png'];
  saveas(gcf, sname);
  

 end

gain=0.002:0.005:0.5;
radar_sensitivity;
print('-sradar_sensitivity','-dpng','model')

 for x=1:length(gain)
  K=gain(x);
  fname = ['K_' num2str(x) '.mat'];
  set_param('radar_sensitivity/output','Filename',fname);
  
  sim('radar_sensitivity');
  
  load(fname);
  plot(ans);
  title(['Response of system with K = ' num2str(K/2)]);
  
  sname = ['K_' num2str(x) '.png'];
  saveas(gcf, sname);
  

 end

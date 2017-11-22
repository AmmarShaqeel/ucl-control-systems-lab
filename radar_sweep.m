gain=0:0.020:1.20;
radar_sensitivity;
print('-sradar_sensitivity','-dpng','model')

 for x=1:length(gain)
  K=gain(x);
  fname = ['K_' num2str(K) '.mat'];
  set_param('radar_sensitivity/output','Filename',fname);
  
  sim('radar_sensitivity');
  
  load(fname);
  plot(ans);
  title(['Response of system with K = ' num2str(K/2)]);
  
  sname = ['K_' num2str(K) '.png'];
  saveas(gcf, sname);
  

 end

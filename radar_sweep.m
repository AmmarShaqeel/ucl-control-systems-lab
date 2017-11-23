gain=0:0.02:1.20;
radar_sensitivity;
print('-sradar_sensitivity','-dpng','model')

 for x=1:length(gain)
  K=gain(x);
  fname = ['K_' num2str(x) '.mat'];
  set_param('radar_sensitivity/output','Filename',fname);
  
  sim('radar_sensitivity');
  
  load(fname);
  plot(ans);
  x0=10;
  y0=10;
  width=400;
  height=250;
  set(gcf,'units','points','position',[x0,y0,width,height]);
  title(['Response of Er(s) with K = ' num2str(K/2)]);
  ylabel('Amplitude');
  legend('Response','Input');

  
  sname = ['K_' num2str(x) '.png'];
  saveas(gcf, sname);
  

 end

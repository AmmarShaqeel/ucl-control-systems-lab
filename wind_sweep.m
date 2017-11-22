gain=0:0.020:1.20;
wind_sensitivity;
print('-swind_sensitivity','-dpng','model')

 for x=1:length(gain)
  K=gain(x);
  fname = ['K_' num2str(K) '.mat'];
  set_param('wind_sensitivity/output','Filename',fname);
  
  sim('wind_sensitivity');
  
  load(fname);
  plot(ans);
  title(['Response of Ew(s) with K = ' num2str(K/2)]);
  
  sname = ['K_' num2str(K) '.png'];
  saveas(gcf, sname);
  

 end

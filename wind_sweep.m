gain=0.001:0.001:0.010;
wind_sensitivity;
print('-swind_sensitivity','-dpng','model')

 for x=1:length(gain)
  K=gain(x);
  K
  fname = ['K_' num2str(x) '.mat'];
  set_param('wind_sensitivity/output','Filename',fname);
  
  sim('wind_sensitivity');
  
  load(fname);
  plot(ans);
  title(['Response of system with K = ' num2str(K)]);
  
  sname = ['K_' num2str(x) '.png'];
  saveas(gcf, sname);
  

 end

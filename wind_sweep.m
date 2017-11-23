gain=0:0.020:1.20;
wind_sensitivity;
print('-swind_sensitivity','-dpng','model')

 for x=1:length(gain)
  K=gain(x);
  fname = ['K_' num2str(x) '.mat'];
  set_param('wind_sensitivity/output','Filename',fname);
  
  sim('wind_sensitivity');
  
  load(fname);
  plot(ans);
  x0=10;
  y0=10;
  width=400;
  height=250;
  set(gcf,'units','points','position',[x0,y0,width,height]);
  title(['Response of Ew(s) with K = ' num2str(K/2)]);
  ylabel('Amplitude');
  legend('Response','Input');


  
  sname = ['K_' num2str(x) '.png'];
  saveas(gcf, sname);
  

 end

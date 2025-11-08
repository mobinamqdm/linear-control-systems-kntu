% gain=40 baraye in ke PM GM be dast bairim
t=0:0.01:20;
sys=0.1 / (s^2 + 0.9*s + 9); 
leadcontroller=40;
leadloopg=leadcontroller*sys;
figure;
bode(leadloopg);
grid;
margin(leadloopg);

% nemoodar bode va pasokh zaman controller lead tarahi shode dasti
t=0:0.01:20;
sys=0.1 / (s^2 + 0.9*s + 9); 
leadcontroller=33.56*(1+0.349*s)/(1+0.346*s);
leadloopg=leadcontroller*sys;
figure;
bode(leadloopg);
title('bode diagram of loop gain with lead controller')
grid;
margin(leadloopg)
leadcontrollersys= leadloopg/(1+leadloopg);
figure;
step(leadcontrollersys , t);
title('step response of system with lead controller')
grid on;

%nemoodar haye ezafe kardan controller lag baraye marhale nahayii
t=0:0.01:20;
lagcontroller=1.6*(1.94*s+1)/(3.1*s+1);
leadlagloopg=lagcontroller*leadloopg;
figure;
bode(leadlagloopg);
title('bode diagram of loop gain with lead and lag controller')
grid;
margin(leadlagloopg)
leadlagcontrollersys= leadlagloopg/(1+leadlagloopg);
figure;
step(leadlagcontrollersys , t);
title('step response of system with lead and lag controller')
grid on;
stepinfo(leadlagcontrollersys)
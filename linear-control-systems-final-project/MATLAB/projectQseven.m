
t = 0:0.01:50;
s = tf('s');
sys = (0.1*(s - 2)) / (s^3 + 0.9*s^2 + 9*s);
firstcontroller = (-22 * (s + 0.001) * (s + 1)) / s^2;
firstloopg = firstcontroller * sys;

closedloopsys1 = firstloopg / (s * (1 + firstloopg));

figure;
bode(firstloopg);  % Bode plot magnitude va phase ro neshun midahad
grid on;
margin(firstloopg);

figure;
step(closedloopsys1, t);  % Step response, chizi ke system be input shib response mide
grid on;       
%in bakhsh baraye nakhsh dovom tarahi ba estefade az controller tabee
%hasasiat
secondcontroller = (-5.688 * (s^3 + 0.9*s^2 + 9*s)) / (s^3 + 3*s^2 + 3.5*s);

secondloopg = secondcontroller * sys;
closedloopsys2 = secondloopg / (1 + secondloopg);

figure;
step(closedloopsys2, t);  % step response baraye system dovom
grid;        

fprintf("\nDesigning the controller with sensitivity function:\n");
stepinfo(closedloopsys2) % Info-hayi mesle rise time, settling time ro neshun midahad
barayeshib=closedloopsys2/s;
step(barayeshib);
grid on;
title('system with controller designed using sensitivity function ramp res');
stepinfo(barayeshib);


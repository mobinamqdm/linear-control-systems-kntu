data = load('Data.mat');
magnitude = data.Data.magnitude;
phase = data.Data.phase;
frequency = data.Data.omega;

% Inja transfer function system ro bedune controller taarif mikonim
s = tf('s');
updatedloopg = 0.1 / (s^2 + 0.9*s + 9); 

% Vaqte simulation ro baraye tahlil mizanimo ke ye noghte shoroo payan dare
% va ye vectore 
t = 0:0.001:15; 

%system ro bedune controller tahlil mikonim
% Aval Bode plot ro mizarm, ta bebinim chera system chetor kar mikone
figure;
subplot(2, 2, 1);
bode(updatedloopg);
grid on;
title('System without Controller - Bode plot');

% Stability margins ro mizarem, ta bebinim system cheghadr stable 
subplot(2, 2, 2);
margin(updatedloopg);
grid on;
title('System without Controller - Stability Margins');

% Hala step response ro mizarm
closedLoopSys = updatedloopg / (1 + updatedloopg);  
subplot(2, 2, 3);
step(closedLoopSys, t);
grid on;
title('System without Controller - Step Response');
stepInfo = stepinfo(closedLoopSys);
disp('System without Controller - Step Response Info:');
disp(stepInfo);

% Pole-zero map ro mizarem, ke bebinim ghotb v sefr napaydar kojan va
% betonim ba controller system paydar kardi
subplot(2, 2, 4);
pzmap(closedLoopSys);
grid on;
title('System without Controller - Pole-Zero Map');

% Hala controller dovom ro taarif mikonim, chon mikhaym ba controller bebinim system chi mishe
secondcontroller = 97380 * ((9 + s) * (10 + s)) / ((110 + s) * (100 + s));  
secondloopg = secondcontroller * updatedloopg;

% Hala system ro ba controller tahlil mikonim
% Aval Bode plot ro mizarem baraye system ba controller
figure;
subplot(2, 2, 1);
bode(secondloopg);
grid on;
title('System with Controller - Bode plot');

% Stability margins ba controller ro mizarem
subplot(2, 2, 2);
margin(secondloopg);
grid on;
title('System with Controller - Stability Margins');

% Hala step response ba controller ro mizarem
closedLoopSys2 = secondloopg / (1 + secondloopg);  
subplot(2, 2, 3);
step(closedLoopSys2, t);
grid on;
title('System with Controller - Step Response');
stepInfo2 = stepinfo(closedLoopSys2);
disp('System with Controller - Step Response Info:');
disp(stepInfo2);

% Pole-zero map ba controller ro mizarem
subplot(2, 2, 4);
pzmap(closedLoopSys2);
grid on;
title('System with Controller - Pole-Zero Map');


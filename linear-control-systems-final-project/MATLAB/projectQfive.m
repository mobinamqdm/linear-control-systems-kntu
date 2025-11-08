data = load('Data.mat');
magnitude = data.Data.magnitude;
phase = data.Data.phase;
frequency = data.Data.omega;


ghotbi = magnitude .* exp(1j * deg2rad(phase)); %form ghotbi 


freqresdata = idfrd(ghotbi, frequency, 0); % Ts = 0 tebgh chat gpt chon system continuous bood ts=0 va agar discrete mishod ts>0
                                 %system identification
                                 %pasokh frequency misaze az dade ha
esystf = tfest(freqresdata, 3, 1); % in function ba tavajoh be system identification va tedad sefr  va ghotb ha yek transfer function misazad
disp('Estimated Transfer Function:');
disp(esystf);



figure;
rlocusplot(esystf); %in nemoodar makan hendesi rishe transfer function tarahi shodas 
                %grid in dorost kon
                %in dastor rlocusplot ejaze grid mide rlocus gridesh faal
                %nemishod
grid on;
title('Root Locus of Estimated Transfer Function');
hold on;
rlocusplot(-esystf , '-.'); %root locus be ezaye K<0 ham rasm kone
grid on;

s=tf('s');
time=0:0.0001:50;
controller=-10*(s+0.2)/s;
loopgain=controller*esystf;
systff=loopgain/(1+loopgain);
figure;
step(systff,time);
grid;
fprintf("The properties of the system with pd controller.The system become stable");
stepinfo(systff)

if ~isfield(data, 'Data') || ~isfield(data.Data, 'magnitude') || ~isfield(data.Data, 'phase') || ~isfield(data.Data, 'omega')
    error('Required data are missing in the data file or data file is completly empty');
end
% dar soorati ke file data.mat dakhelesh on etelaat nabashe khabar mide ke
% file moshkel dare 
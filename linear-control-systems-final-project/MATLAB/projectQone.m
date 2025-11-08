
data = load('Data.mat');
magnitude = data.Data.magnitude;
phase = data.Data.phase;
frequency = data.Data.omega;

figure;
subplot(2, 1, 1); %to ye safhe dota nemoodar--->nemoodar aval
semilogx(frequency, 20*log10(magnitude)); %mehvar frequency logaritmi
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');
title('Magnitude');
grid on;

subplot(2, 1, 2); %nemoodar dovom hamoon safhe  
semilogx(frequency, phase);
xlabel('Frequency (rad/s)');
ylabel('Phase (deg)');
title('Phase');
grid on;



if ~isfield(data, 'Data') || ~isfield(data.Data, 'magnitude') || ~isfield(data.Data, 'phase') || ~isfield(data.Data, 'omega')
    error('Required data are missing in the data file or data file is completly empty');
end
% dar soorati ke file data.mat dakhelesh on etelaat nabashe khabar mide ke
% file moshkel dare 
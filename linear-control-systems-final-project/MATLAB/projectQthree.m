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
esystf


figure;
bode(esystf); %in nemoodar bode transfer function tarahi shodas
xlim([10e-4, 10e3]);
grid;
title('Bode Diagram of Estimated Transfer Function');

if ~isfield(data, 'Data') || ~isfield(data.Data, 'magnitude') || ~isfield(data.Data, 'phase') || ~isfield(data.Data, 'omega')
    error('Required data are missing in the data file or data file is completly empty');
end
% dar soorati ke file data.mat dakhelesh on etelaat nabashe khabar mide ke
% file moshkel dare 
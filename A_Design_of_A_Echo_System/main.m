% Recording and save input sound.
sample = 16000; % The sampling rate of the wave.
duration = 2; % The duration of the wave.
fprintf('Press a key to start recording.\n')
pause; % Waiting for keyboard input.
input_filename = 'input.wav';
input = audiorecorder(sample, 8, 1);
fprintf('Recording...\n')
recordblocking(input, duration); % Recording sound.
fprintf('Recording finished.\n');
input_wave = getaudiodata(input); % Get wave data.
audiowrite(input_filename, input_wave, sample); % Write the data to a file.
fprintf('%s generated.\n', input_filename);
% h_t
a_1 = 0.5; % First echo.
a_2 = 0.25; % Second echo.
T = 1/sample;
t = 0:T:duration;
h = a_1 * d_t(t-0.4) + a_2 * d_t(t-0.8);
% conv
input_wave_T = input_wave';
output_wave_T = T * conv(input_wave_T, h);
output_wave = output_wave_T';
output_filename = 'output.wav';
audiowrite(output_filename, output_wave, sample); % Write the data to a file.
fprintf('%s generated.\n', output_filename);
sound(output_wave, sample); % Play sound.
subplot(2,1,1)
plot(input_wave)
xlim([0 3e4])
ylim([-1 1])
subplot(2,1,2)
plot(output_wave)
xlim([0 3e4])
ylim([-0.5 0.5])
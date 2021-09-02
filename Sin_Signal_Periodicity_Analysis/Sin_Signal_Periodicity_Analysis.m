n = -50:1:50;
N = -50:0.001:50;

omega_05 = 0.5;
y_1 = sin(omega_05 * n);
Y_1 = sin(omega_05 * N);

omega_1 = 1;
y_2 = sin(omega_1 * n);
Y_2 = sin(omega_1 * N);

omega_2 = 2;
y_3 = sin(omega_2 * n);
Y_3 = sin(omega_2 * N);

omega_4 = 4;
y_4 = sin(omega_4 * n);
Y_4 = sin(omega_4 * N);

figure;

subplot(2,2,1)
stem(n, y_1)
hold on;
plot(N, Y_1, 'red')
title('omega = 0.5')

subplot(2,2,2)
stem(n, y_2)
hold on;
plot(N, Y_2, 'red')
title('omega = 1')

subplot(2,2,3)
stem(n, y_3)
hold on;
plot(N, Y_3, 'red')
title('omega = 2')

subplot(2,2,4)
stem(n, y_4)
hold on;
plot(N, Y_4, 'red')
title('omega = 4')
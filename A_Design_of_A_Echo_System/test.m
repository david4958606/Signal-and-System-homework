t = 0:1:2;
x = t;
subplot(3,1,1)
stem(t, x)
xlim([-1 10])
ylim([-1 2])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
title('Input signal')

subplot(3,1,2)
t_2 = 0:1:4
y = [0, 0, 0.5, 1.25, 0.5];
stem(t_2, y)
xlim([-1 10])
ylim([-1 3])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
title('Guess signal')

subplot(3,1,3)
t_3 = 0:1:4
h = 0.5 * d_t(t-1) + 0.25 * d_t(t-2);
c = conv(x, h);
stem(t_3, c)
xlim([-1 10])
ylim([-1 2])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
title('Output signal')

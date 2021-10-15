t = linspace(-4 * pi, 4 * pi, 10000);
sz = size(t);
sum = zeros(sz);
for i = [0, 1, 2, 3, 4, 5]
    A_i = 2 * (i + 1);
    t_i = 2 * (i+1) * pi;
    f_t = A_i * cos(i * 3 * t + t_i);
    sum = sum + f_t;
    fi = i + 1;
%     subplot(3,2,fi);
    plot(t, sum);
    title(['当 k = ', num2str(i), '时，各谐波的叠加'])
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    ylim([-25, 45])
    xlim([-4 * pi, 4 * pi])
    box off;
    pause;
end

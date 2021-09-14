x = linspace(0,4,5);
subplot(1,2,1)
y1 = 2*x.*(x>=0 & x<1)+(-2*x+4).*(x>=1 & x<3)+(2*x-8).*(x>=3&x<=4);
plot(x, y1)
xlim([-1 5])
ylim([-2.5 2.5])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
subplot(1,2,2)
x = linspace(-1,2,4);
y2 = (2*x+2).*(x>=-1 & x<0)+2.*(x>=0 & x<1)+(-2*x+4).*(x>=1&x<=2);
plot(x, y2)
xlim([-1.5 2.5])
ylim([-2.5 2.5])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
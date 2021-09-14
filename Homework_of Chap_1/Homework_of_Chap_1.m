x = linspace(-2,2,5);
subplot(3,2,1)
y1 = (0.5*x+1).*(x>=-2 & x < -1)+(-0.5*x).*(x>=-1 & x<0)+(0.5*x).*(x>=0 & x<1)+(-0.5*x+1).*(x>=1 & x<=2);
plot(x, y1)
xlim([-3 3])
ylim([-1 1])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
subplot(3,2,2)
y2 = (-0.5*x-1).*(x>=-2 & x < -1)+(0.5*x).*(x>=-1 & x<0)+(0.5*x).*(x>=0 & x<1)+(-0.5*x+1).*(x>=1 & x<=2);
plot(x, y2)
xlim([-3 3])
ylim([-1 1])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
subplot(3,2,3)
x2 = linspace(-3,3,7);
y3 = 0.5.*(x2>=-3 & x2<=-2)+(0.5*x2+1.5).*(x2>-2 & x2<=-1)+(-x2).*(x2>-1 & x2<0)+x2.*(x2>=0 & x2<1)+(-0.5*x2+1.5).*(x2>=1 & x2<=2)+0.5.*(x2>2 & x2<=3);
plot(x2, y3)
xlim([-3 3])
ylim([-1 1.5])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
subplot(3,2,4)
x = linspace(-3,3,7);
y3 = (-0.5).*(x>=-3 & x<-2)+(0.5*x+0.5).*(x>=-2 & x<-1)+0.*(x>=-1 & x<1)+(0.5*x-0.5).*(x>=1 & x<2)+0.5.*(x>=2 & x<=3);
plot(x2, y3)
xlim([-3 3])
ylim([-1 1])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
subplot(3,2,5)
x = linspace(-3,3,7);
y3 = (-1.5*x).*(x>=-3 & x<=0)+(1.5*x).*(x>0 & x<=3);
plot(x2, y3)
xlim([-3.5 3.5])
ylim([-1 6])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
subplot(3,2,6)
x = linspace(-3,3,7);
y3 = -0.5*x;
plot(x2, y3)
xlim([-3.5 3.5])
ylim([-3 3])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
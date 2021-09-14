subplot(3,2,1);
x = -7:1:7;
y = -0.5.*(x == -7)+0.*(x<0 & x>-7)+1.*(x == 0)+0.*(x>0 & x<7)+(-0.5).*(x==7);
stem(x,y)
ylim([-1 1])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
subplot(3,2,2);
x = -7:1:7;
y = -0.5.*(x == -7)+(-1).*(x<0 & x>-7)+0.*(x == 0)+1.*(x>0 & x<7)+(0.5).*(x==7);
stem(x,y)
ylim([-1.5 1.5])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
subplot(3,2,3);
x = -7:1:7;
y = 0.5.*(x == -7)+(0).*(x<=-3 & x>-7)+0.5.*(x == -2)+1.*(x == -1)+3.*(x == 0)+(1).*(x==1)+0.5.*(x==2)+0.*(x>=2 & x<7)+0.5.*(x==7);
stem(x,y)
ylim([-1 3.5])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
subplot(3,2,4);
x = -7:1:7;
y = -0.5.*(x == -7)+(0).*(x<=-3 & x>-7)+0.5.*(x == -2)+1.*(x == -1)+0.*(x == 0)+(-1).*(x==1)+(-0.5).*(x==2)+0.*(x>=2 & x<7)+0.5.*(x==7);
stem(x,y)
ylim([-1.5 2])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
subplot(3,2,5);
x = -7:1:7;
y = 0.*(x==-5)+(-0.5).*(x==-4)+0.5.*(x==-3)+1.5.*(x==-2)+1.5.*(x==-1)+1.*(x==0)+1.5.*(x==1)+1.5.*(x==2)+0.5.*(x==3)+(-0.5).*(x==4)+0.*(x==5);
stem(x,y)
ylim([-1 2])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
subplot(3,2,6);
x = -7:1:7;
y = 0.*(x==-5)+(-0.5).*(x==-4)+1.5.*(x==-3)+0.5.*(x==-2)-0.5.*(x==-1)+1.*(x==0)+0.5.*(x==1)-0.5.*(x==2)-1.5.*(x==3)+(0.5).*(x==4)+0.*(x==5);
stem(x,y)
ylim([-1 2])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
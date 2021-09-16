u = 0;
t=0:0.1:20;
nImages = length(t);
a=ones(1,length(t));
fig = figure;
for i=1:length(t)
plot3(t,cos(t+u),sin(t+u),'m');
hold on
plot3(t,cos(t+u),-2*a,'c');
hold on
plot3(t,2*a,sin(t+u),'r');
hold on
axis([0,20,-1,2,-2,1]);
quiver3(0,0,0,0,10*cos(u)/9,10*sin(u)/9);
hold on
plot3([0,0],[cos(u),2],[sin(u),sin(u)],'--r');
hold on
plot3([0,0],[cos(u),cos(u)],[sin(u),-2],'--c');
hold on
frame = getframe(fig); 
im{i}=frame2im(frame);
disp('generating frames')
u=i/3;
hold off
end
disp('all frames generated!')
close;
disp('generating gif')
filename = 'output.gif'; % Specify the output file name
for idx = 1:nImages
    [A,map] = rgb2ind(im{idx},256);
    if idx == 1
        imwrite(A,map,filename,'gif','LoopCount',Inf,'DelayTime',0.001);
    else
        imwrite(A,map,filename,'gif','WriteMode','append','DelayTime',0.001);
    end
end
disp('A GIF generated!')
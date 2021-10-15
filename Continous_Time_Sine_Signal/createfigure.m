function createfigure(X1, Y1, Y2, Y3, Y4, Y5, Y6)
%CREATEFIGURE(X1, Y1, Y2, Y3, Y4, Y5, Y6)
%  X1:  x 数据的向量
%  Y1:  y 数据的向量
%  Y2:  y 数据的向量
%  Y3:  y 数据的向量
%  Y4:  y 数据的向量
%  Y5:  y 数据的向量
%  Y6:  y 数据的向量

%  由 MATLAB 于 16-Oct-2021 02:06:01 自动生成

% 创建 figure
figure1 = figure('WindowState','maximized');

% 创建 subplot
subplot1 = subplot(3,2,1,'Parent',figure1);
hold(subplot1,'on');

% 创建 plot
plot(X1,Y1,'Parent',subplot1);

% 创建 title
title('当 k = 0时，各谐波的叠加');

% 取消以下行的注释以保留坐标区的 X 范围
% xlim(subplot1,[-12.5663706143592 12.5663706143592]);
% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(subplot1,[-10 16]);
hold(subplot1,'off');
% 设置其余坐标区属性
set(subplot1,'XAxisLocation','origin','YAxisLocation','origin');
% 创建 subplot
subplot2 = subplot(3,2,2,'Parent',figure1);
hold(subplot2,'on');

% 创建 plot
plot(X1,Y2,'Parent',subplot2);

% 创建 title
title('当 k = 1时，各谐波的叠加');

% 取消以下行的注释以保留坐标区的 X 范围
% xlim(subplot2,[-12.5663706143592 12.5663706143592]);
% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(subplot2,[-10 16]);
hold(subplot2,'off');
% 设置其余坐标区属性
set(subplot2,'XAxisLocation','origin','YAxisLocation','origin');
% 创建 subplot
subplot3 = subplot(3,2,3,'Parent',figure1);
hold(subplot3,'on');

% 创建 plot
plot(X1,Y3,'Parent',subplot3);

% 创建 title
title('当 k = 2时，各谐波的叠加');

% 取消以下行的注释以保留坐标区的 X 范围
% xlim(subplot3,[-12.5663706143592 12.5663706143592]);
% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(subplot3,[-10 16]);
hold(subplot3,'off');
% 设置其余坐标区属性
set(subplot3,'XAxisLocation','origin','YAxisLocation','origin');
% 创建 subplot
subplot4 = subplot(3,2,4,'Parent',figure1);
hold(subplot4,'on');

% 创建 plot
plot(X1,Y4,'Parent',subplot4);

% 创建 title
title('当 k = 3时，各谐波的叠加');

% 取消以下行的注释以保留坐标区的 X 范围
% xlim(subplot4,[-12.5663706143592 12.5663706143592]);
% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(subplot4,[-10 16]);
hold(subplot4,'off');
% 设置其余坐标区属性
set(subplot4,'XAxisLocation','origin','YAxisLocation','origin');
% 创建 subplot
subplot5 = subplot(3,2,5,'Parent',figure1);
hold(subplot5,'on');

% 创建 plot
plot(X1,Y5,'Parent',subplot5);

% 创建 title
title('当 k = 4时，各谐波的叠加');

% 取消以下行的注释以保留坐标区的 X 范围
% xlim(subplot5,[-12.5663706143592 12.5663706143592]);
% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(subplot5,[-10 16]);
hold(subplot5,'off');
% 设置其余坐标区属性
set(subplot5,'XAxisLocation','origin','YAxisLocation','origin');
% 创建 subplot
subplot6 = subplot(3,2,6,'Parent',figure1);
hold(subplot6,'on');

% 创建 plot
plot(X1,Y6,'Parent',subplot6);

% 创建 title
title('当 k = 5时，各谐波的叠加');

% 取消以下行的注释以保留坐标区的 X 范围
% xlim(subplot6,[-12.5663706143592 12.5663706143592]);
% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(subplot6,[-10 16]);
hold(subplot6,'off');
% 设置其余坐标区属性
set(subplot6,'XAxisLocation','origin','YAxisLocation','origin');

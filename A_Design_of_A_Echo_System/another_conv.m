clear; clc; close all; format compact;
xn=[0,1,2], M=length(xn), %输入任意序列并计算长度M
hn=[0, 0.5,0.25], N=length(hn), %输入任意脉冲响应并计算长度N
m=[-(M-1): M+N-2], %设置代换变量的范围以便x(m)翻转和移位
xm=[zeros(1,M-1), xn,zeros(1,N-1)], %补零以便与m 对应绘图
subplot(4,1,1);
stem(m,xm,'r.'); %绘输入序列x(m)
ylabel('x(m)');
grid,title('(a) 输入序列x(m)'); %加标签网格和标题
hm=[zeros(1,M-1), hn,zeros(1,M-1)]; %补零以便与m 对应绘图
subplot(4,1,2);
stem(m,hm,'r.'); %绘脉冲响应
ylabel('h(m)');
grid,title('(b) 脉冲响应h(m)'); %加标签网格和标题
yn=zeros(1,2*M+N-2); %卷积输出初始化
for n=0:M+N-2, %逐个计算卷积输出
if n==0;
    xmfy=[fliplr(xn), zeros(1,M+N-2)], %实现翻转
else
    for k=M:-1:1; 
        xmfy(k+n)=xmfy(k+n-1);
    end;
    xmfy(n)=0; xmfy;%实现翻转后移位并显示
end
subplot(4,1,3);
stem(m,xmfy,'b.'); %%绘制翻转移位序列
ylabel('x(n-m)');
grid,title('(c) 翻转移位x(n-m)'); %加标签网格和标题
yn(M+n)=sum(xmfy.*hm); %计算第n 位输出并与m 位置对应
subplot(4,1,4);
stem(m,yn,'r.'); %%绘制卷积输出序列
axis([min(m),max(m), min([0, conv(xn, hn)]), max([0,conv(xn, hn)])]), %控制绘图坐标
ylabel('y(n)'), grid,title('(d) 卷积输出y(n)'),%加标签网格和标题
pause, %每算完一位卷积输出后暂停, 按任意键继续
end
yn, %显示线性卷积结果
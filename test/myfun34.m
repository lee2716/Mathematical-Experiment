function a = myfun
syms x;


 f=inline((x.^3+3*x-2).*cos(x));
a=feval(f,-2*pi:0.02:2*pi)
% x =  -2*pi:0.02:2*pi
% plot(x,f) %�����ƺ�������ͼ����Ϊ���û�취�ж�����
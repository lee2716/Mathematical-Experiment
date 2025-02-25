function [X,fmin] = myfun23
N = 100000000;
x1 = 15*rand(1,N);
x2 = 9*rand(1,N);
x3 = floor(26*rand(1,N));
fmin = inf;
for i = 1:N
    if 3*x1(i)+2*x2(i)+6*x3(i) <= 20
        if 4*x1(i)+5*x2(i)+2*x3(i) <= 21
            if 2*(x1(i)-1)^2+3*(x2(i)-4)^2+x1(i)*x2(i)+(2*x3(i)-5)^2 < fmin
                fmin = 2*(x1(i)-1)^2+3*(x2(i)-4)^2+x1(i)*x2(i)+(2*x3(i)-5)^2;
                X = [x1(i) x2(i) x3(i)];
            end
        end
    end
end
disp(['目标函数极小值为',num2str(fmin)]);
disp('决策变量[x1,x2,x3]如下:');
disp(X);
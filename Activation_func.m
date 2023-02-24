%Halime Özge KABAK
%180403001
%HW2/ Machine Learning

%% Binary Step Function
syms x
xL = [-100 100];
yL =  [-100 100];
t=-100:100;
f= piecewise(x < 0,0,0<=x,1);
figure
fplot(f,"k","LineWidth",3)
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis
xlabel("x")
ylabel("y")
grid on
title("Binary Step Function")
y=heaviside(t);
y2=diff(y,x);
figure
p2=plot(t,y2,"m","LineWidth",3);
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis
xlabel("x")
ylabel("y")
grid on
title("Derivative of Binary Step Function")
%% Linear Function
% a=5;  %constant value
% f=a*t;
% figure
% plot(t,f,"k","LineWidth",3);
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("Linear Function")
% f=a*x;
% f2=diff(f,x);
% figure
% yline(double(f2),"m","LineWidth",3);
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("Derivative of Linear Function")
% %% Sigmoid Function
% f= 1./(1+exp(-t));
% figure
% plot(t,f,"k","LineWidth",3);
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("Sigmoid Function")
% f= 1./(1+exp(-x));
% f2=diff(f,x);
% f=exp(-t)./(exp(-t) + 1).^2;
% figure
% plot(t,f,"m","LineWidth",3);
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("Derivative of Sigmoid Function")
% %% Tanh Function
% y=tanh(t);
% figure
% p=plot(t,y,"k", "LineWidth",3);
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("Tanh Function")
% y=tanh(x);
% f2=diff(y,x);
% f=1 - tanh(t).^2;
% figure
% plot(t,f,"m","LineWidth",3);
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("Derivative of Tanh Function")
% %% ReLU Function
% f=max(0,t);
% figure
% plot(t,f,'k', "LineWidth",3);
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("ReLU Function")
% f= piecewise(x < 0,0,x > 0,1);
% figure
% fplot(f,"m","LineWidth",3)
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("Derivative of ReLU Function")
% %% Softplus
% z=exp(t);
% f=log(1+z);
% figure
% plot(t,f,'k', "LineWidth",3);
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("Softplus Function")
% z=exp(x);
% f=log(1+z);
% f=diff(f,x);
% z=exp(t);
% f2=exp(t)./(exp(t) + 1);
% figure
% plot(t,f2,"m","LineWidth",3);
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("Derivative of Softplus Function")
% %% Softmax Function
% z=exp(-t);
% f=1./(1+z);
% plot(t,f,'k', "LineWidth",3);
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("Softmax Function")
% z=exp(-x);
% f=1./(1+z);
% f2=diff(f,x);
% f=exp(-t)./(exp(-t) + 1).^2;
% figure
% plot(t,f,"m","LineWidth",3);
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("Derivative of Softmax Function")
% %% ELU Function
% z=exp(x);
% f= piecewise(x < 0,x,0<=x,a*(z-1));
% figure
% fplot(f,"k","LineWidth",3)
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("ELU Function")
% a=1;
% f2= piecewise(x < 0,a+a*(z-1),0<=x,1);
% figure
% fplot(f2,"m","LineWidth",3)
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("Derivative of ELU Function")
% %%  Swish
% z=exp(-t);
% f=t./(1+z);
% plot(t,f,'k', "LineWidth",3);
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("Swish Function")
% z=exp(-x);
% f=x./(1+z);
% f2=diff(f,x);
% f=1./(exp(-t) + 1) + (t.*exp(-t))./(exp(-t) + 1).^2;
% figure
% plot(t,f,"m","LineWidth",3);
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("Derivative of Swish Function")
% %% Parametric ReLU
% a=5;
% f=piecewise(x < 0,a*x,0<=x,x);
% figure
% fplot(f,"k","LineWidth",3)
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("Parametric ReLU Function")
% f2=piecewise(x < 0,a,0<=x,1);
% figure
% fplot(f2,"m","LineWidth",3)
% line([0 0], yL);  %x-axis
% line(xL, [0 0]);  %y-axis
% xlabel("x")
% ylabel("y")
% grid on
% title("Derivative of Parametric ReLU Function")
% %% Leaky ReLU
f=piecewise(x < 0,(0.1)*x,0<=x,x);
figure
fplot(f,"k","LineWidth",3)
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis
xlabel("x")
ylabel("y")
grid on
title("Leaky ReLU Function")
f2=piecewise(x < 0,0.1,0<=x,1);
figure
fplot(f2,"m","LineWidth",3)
line([0 0], yL);  %x-axis
line(xL, [0 0]);  %y-axis
xlabel("x")
ylabel("y")
grid on
title("Derivative of Leaky ReLU Function")

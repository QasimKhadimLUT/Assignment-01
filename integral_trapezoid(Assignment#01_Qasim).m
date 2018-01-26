% function result = integral_trapezoid( fun, low_limit, up_limit, no_splits )
% %INTEGRAL_TRAPEZOID Calculate the integral of the 1D function.
% %   Function that calculate the integral of 1D continous function using
% %   well-known trapezoidal rule. Naive approach.
% %   fun - handle of a function to integrate,
% %   low_limit - lower limit of an integral,
% %   up_limit - upper limit of an integral,
% %   no_splits - number of trapezoids.
% 
% % integration step
% tic
% fun= @(x)exp(-x).* sin (x);
% up_limit= pi/2;
% low_limit=-pi/2;
% no_splits=500;
% h = (up_limit - low_limit) / no_splits;
% result = 0;
% tic
% for i = 1:no_splits
%     result = result + 0.5*h*( fun(low_limit + (i-1)*h) + ...
%         fun(low_limit + i*h) );
% end
% 
% toc

% end

% =========== Trapezedial rule ======================================
% clear all 
% close all
% 
% 
% low_limit = -pi/2; 
% up_limit = pi/2;
% no_splits = 500; 
% h = (up_limit - low_limit) / no_splits; 
% x = low_limit:h:up_limit; 
% y = exp(-x).* sin (x); 
% 
% tic
% f = 0;
% for k=1:no_splits
%     f = f + 0.5*((x(k+1)-x(k))*(y(k+1)+y(k)));
% end
% f
% toc

% =========== Speed up integration ======================================

%  clear all
%  close all
% 
% low_limit = -pi/2; 
% up_limit = pi/2;
% no_splits = 500; 
% h = (up_limit - low_limit) / no_splits; 
% x = low_limit:h:up_limit; 
% y = exp(-x).* sin (x); 
% 
% tic
% Xk = x(2:end)-x(1:end-1); 
% Yk = y(2:end)+y(1:end-1); 
% 
% f = 0.5*sum(Xk.*Yk) 
% 
% toc

% =========== Double Integration ======================================
clear all
close all

fun= @(x,y)exp(-x+y).* sin (x+y);
up_limit1= pi/2;
low_limit1=-pi/2;
up_limit2= 3*pi/2;
low_limit2=pi/2;
no_splits=500;
h = (up_limit1 - low_limit1) / no_splits;
x = low_limit1:h:up_limit1;
y = low_limit2:h:up_limit2;
result = 0;

tic
Xk = x(2:end)-x(1:end-1); 
Yk = y(2:end)+y(1:end-1); 

f = 0.5*sum(Xk.*Yk) 

toc

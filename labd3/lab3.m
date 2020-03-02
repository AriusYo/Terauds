%% 3.laboratorijas darbs
% Aris Sprugevics
%% gabalveida signala montaza
%% merki:
% izveidot attela redzamo grafiku matlaba
%% darba programma:
function y = lab3(t)
if nargin == 0
    t = 0:0.01:4.5;
end
% -sin
t_sin_f = (t>=0)&(t<0.5);
t_sin = t(t_sin_f);
% constante 0
t_const0_f = (t>=0.5)&(t<1.5);
t_const0 = t(t_const0_f);
% constante -1
t_const_f = (t>=1.5)&(t<2);
t_const = t(t_const_f);
% lineara
t_saw_f = (t>=2)&(t<2.5);
t_saw =  t(t_saw_f);
% noise
t_noise_f = (t>=2.5)&(t<=4.5);
t_noise = t(t_noise_f);
% sinus
A0 = 0;
A = 1;
T = (0.5 - 0)/1.5;
f = 1/T;
delay = 0;
y_sin = (A0+A*sin(2*pi*f*(t_sin-delay)))*(-1);
% const0
y_const0 = zeros(size(t_const0));
% const -1
y_const = (-1)+zeros(size(t_const));
% lineara
k = (0-0.25)*(2-2.5);
delay = 2;
y_saw = (k*(t_saw - delay))*(-1);
% noise
y_noise = (rand(size(t_noise))*1)-0.5;
% visu signalu apvienosana
t = [t_sin,t_const0,t_const,t_saw,t_noise];
y = [y_sin,y_const0,y_const,y_saw,y_noise];
if nargout == 0
    plot(t,y)
    y=[];
    axis([0 5 -1.5 1.5])
end
%% secinajumi
% ar matlab palidzibu ir erti un viegli uztaisitfunkciju kas 
% genere noradito grafiku, un no kuras ir iespejams iegut 
% vajadzigo y vertibu


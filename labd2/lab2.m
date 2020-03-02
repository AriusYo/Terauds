%% 2.laboratorijas darba - ievads simboliskaja matematika, atskaite
% Aris Sprugevics
% Merkis:
% iepazities ar matlaba simbolisko matematiku
%% 1.uzdevums:
% jaatrod x funkcijai ax^2+bx+c=0
syms a b c x;
x = solve(a*x^2+b*x+c==0)
%% 2.uzdevums:
% jaatvasina funkcija un jauzime tas grafiks intervala no [0,3]
syms x;
y = (x^2+2*x-1)/((x-1)*(x-2));
yd = simplify(diff(y));
% funkcijas atvasinajums:
pretty(yd)
% funkcijas vektorizacija
yv = vectorize(y);
ydv = vectorize(yd);
x = 0:0.01:3;
yvm = (x.^2+2.*x-1)./((x-1).*(x-2));
ydvm = (- 5.*x.^2 + 6.*x + 1)./(x.^2 - 3.*x + 2).^2;
%% funkcijas grafiks:
plot(x,yvm,x,ydvm)
a = latex(y);
b = latex(yd);
h = legend(['$',a,'$'],['$',b,'$']);
set(h,'Interpreter','latex')
%% secinajumi
% ar matlab palidzibu ir iespejams atri un vienkarsi atrisinat 
% simboliskus vienadojumus, veikt darbibas ar tam
% un zimet grafikus 
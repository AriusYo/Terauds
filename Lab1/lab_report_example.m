%% 1.laboratorijas darbs
%% Mērījumu datu apstrāde
%% Mērķi:
% * Iemācīties apstrādāt mērījumu datus
% * Iemācīties lietot polyfit, polyval 
% * Iemācīties veidot matlab atskaites izmantojot "publish"
%% Darba programma:
x =[458.2308 468.4350 482.6075 516.6214 508.1179 530.2270 546.6671 627.1668 582.9486 559.1389];
y =[-0.0002 0.0117 0.0504 1.0002 0.7680 0.6280 0.2529 0.0027 0.0206 0.1010];
C = polyfit(x,y,3);
X = linspace(min(x),max(x),100);
Y = polyval(C,X);
plot(x,y,'o',X,Y)
%% Secinājumi
% šos mērījumu rezultātus ar polyfit un polyval funkcijām 
% nevar precīzi attēlot
%%
%
% <<../grafiks.png>>
%
%%
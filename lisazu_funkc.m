function lisazu_funkc(f1,f2)
% funkcija kas uzzīmē Lisažu figūras
% Call:
% lisazu_funkc(f1,f2)
%
% 27.01.2020
% autors yeeteris
t = 0:0.01:1;
%f1 = 21.69; f2 = 69;
x = cos(2*pi*f1*t);
y = sin(2*pi*f2*t);
plot(x,y)
shg
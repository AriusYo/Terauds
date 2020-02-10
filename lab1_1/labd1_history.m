%-- 02/03/2020 08:24:32 AM --%
ls
diary lab1_diary.m
%% Mērijumu datu apstrāde
% mainam spriegumu un mēram strāvu
Vm = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7]*1e-3;
plot(Vm,Im,'-o')
% pielaikosim 2 kārtas polinomu
% polyfit - meklē polinomu koeficientus
% C = polifit(x,y,N)
% N - polinoma kārta
C = polifit(Vm,Im,2)
C = polyfit(Vm,Im,2)
% definēsim x ar sīkāku soli
V = linspace(min(Vm),max(Vm),100)
I = C(1)*V.^2+C(2)*V+C(3);
plot(Vm,Im,'o',V,I)
C = polyfit(Vm,Im,3)
I = C(1)*V.^3+C(2)*V.^2+C(3)*V+C(4);
plot(Vm,Im,'o',V,I)
C = polyfit(Vm,Im,3)
% izmantosim polyval funkciju
I = polyval(C,V);
plot(Vm,Im,'o',V,I)
%% atkārtot to pašu 4 kārtai
C = polyfit(Vm,Im,4)
I = polyval(C,V)
plot(Vm,Im,'o',V,I)
% gadījumu kad pielaikotā polinoma kārta ir vienāda ar n-1 kur n punktu sk.
% sauc par polinomiālo interpolāciju
% iet tieši caur mērījumu punktiem
% pārējos gadījumus sauca par polinomiālo aproksimāciju
% līnija izvēlas tuvāko punktiem
% uzd atkārtot 1 kārtai
C = polyfit(Vm,Im,1)
I = polyval(C,V)
plot(Vm,Im,'o',V,I)
%% mērījumu datu sērijas
% pieņemsim
% kā mēs katrai sprieguma vērtībai strāvu nomērīsim 5 reizes
Vm = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7;
0.9 1.8 2.6 3.3 4.5;
1.0 2.0 2.4 3.4 4.3;
0.8 2.1 2.5 3.2 4.6;
0.9 1.9 2.3 3.2 4.4]
% pamēģinam uzīmēt ar plotu
figure
plot(Vm,Im,'o')
plot(Vm,Im,'-o')
plot(V,I)
figure
plot(Vm,Im,'-o')
% matlab zīmē matricas pa kolonām
% mūsu dati bija rakstīti pa rindām tāpēc jātransponē
plot(Vm,Im','-o')
% pielaikosim polinomu
%polyfit strādā tikai vektoriem
% ir funkc. kas sasumē vektoru
sum(Im)
sum(Im)/5
Ivid = sum(Im)/5
% pielaikosim polinomu
C = polyfit(Vm,Ivid,3)
V = linespace(min(Vm),max(Vm),100)
V = linspace(min(Vm),max(Vm),100)
I = polyval(C,V);
plot(Vm,Im','-o',Vm,Ivid,'*',V,I,'-')
plot(Vm,Im','o',Vm,Ivid,'*',V,I,'-')
Inovirze = std(Im)
errorbar(Vm,Ivid,Inovirze)
errorbar(Vm,Ivid,Inovirze).
errorbar(Vm,Ivid,Inovirze,'.')
hold on
plot(V,I)
hold off
xlabel('U,V')
ylabel('I,mA')
title('strāvas atkarība no sprieguma')
legend('dati1','dati2')
legend('ekspermentālie dati','pielaikotais polinoms')
grid
ls
%% datu nolasīšana no grafika
A = imread('bilde1.png');
B = imread('bilde2.png');
figure(1),image(A)
figure(2),image(B)
figure(2),image([500 800],[0 1],B)
figure(2),image([500 800],[1 0],B)
figure(2),image([500 800],[0 1],B)
figure(2),image([500 800],[1 0],B)
set(gca,'YDir','normal')
% varam nolasīt grafiku
% izmantosim fju ginput
[x,y] = ginput(10)
holld on
hold on
plot(x,y,'o')
hold off
diary off

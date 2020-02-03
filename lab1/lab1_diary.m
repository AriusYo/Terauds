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
{Undefined function or variable 'polifit'.
} 
C = polyfit(Vm,Im,2)

C =

    0.0002    0.0004    0.0015

% definēsim x ar sīkāku soli
V = linspace(min(Vm),max(Vm),100)

V =

  Columns 1 through 10

   -1.0000   -0.9576   -0.9152   -0.8727   -0.8303   -0.7879   -0.7455   -0.7030   -0.6606   -0.6182

  Columns 11 through 20

   -0.5758   -0.5333   -0.4909   -0.4485   -0.4061   -0.3636   -0.3212   -0.2788   -0.2364   -0.1939

  Columns 21 through 30

   -0.1515   -0.1091   -0.0667   -0.0242    0.0182    0.0606    0.1030    0.1455    0.1879    0.2303

  Columns 31 through 40

    0.2727    0.3152    0.3576    0.4000    0.4424    0.4848    0.5273    0.5697    0.6121    0.6545

  Columns 41 through 50

    0.6970    0.7394    0.7818    0.8242    0.8667    0.9091    0.9515    0.9939    1.0364    1.0788

  Columns 51 through 60

    1.1212    1.1636    1.2061    1.2485    1.2909    1.3333    1.3758    1.4182    1.4606    1.5030

  Columns 61 through 70

    1.5455    1.5879    1.6303    1.6727    1.7152    1.7576    1.8000    1.8424    1.8848    1.9273

  Columns 71 through 80

    1.9697    2.0121    2.0545    2.0970    2.1394    2.1818    2.2242    2.2667    2.3091    2.3515

  Columns 81 through 90

    2.3939    2.4364    2.4788    2.5212    2.5636    2.6061    2.6485    2.6909    2.7333    2.7758

  Columns 91 through 100

    2.8182    2.8606    2.9030    2.9455    2.9879    3.0303    3.0727    3.1152    3.1576    3.2000

I = C(1)*V.^2+C(2)*V+C(3);
plot(Vm,Im,'o',V,I)
C = polyfit(Vm,Im,3)

C =

    0.0002   -0.0004    0.0003    0.0021

I = C(1)*V.^3+C(2)*V.^2+C(3)*V+C(4);
plot(Vm,Im,'o',V,I)
C = polyfit(Vm,Im,3)

C =

    0.0002   -0.0004    0.0003    0.0021

% izmantosim polyval funkciju
I = polyval(C,V);
plot(Vm,Im,'o',V,I)
%% atkārtot to pašu 4 kārtai
C = polyfit(Vm,Im,4)

C =

   -0.0001    0.0004   -0.0006    0.0000    0.0022

I = polyval(C,V)

I =

  Columns 1 through 10

    0.0011    0.0012    0.0013    0.0014    0.0015    0.0016    0.0017    0.0017    0.0018    0.0019

  Columns 11 through 20

    0.0019    0.0020    0.0020    0.0021    0.0021    0.0021    0.0022    0.0022    0.0022    0.0022

  Columns 21 through 30

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022

  Columns 31 through 40

    0.0022    0.0022    0.0022    0.0022    0.0022    0.0022    0.0021    0.0021    0.0021    0.0021

  Columns 41 through 50

    0.0021    0.0021    0.0021    0.0021    0.0021    0.0020    0.0020    0.0020    0.0020    0.0020

  Columns 51 through 60

    0.0020    0.0020    0.0020    0.0020    0.0020    0.0020    0.0021    0.0021    0.0021    0.0021

  Columns 61 through 70

    0.0021    0.0021    0.0022    0.0022    0.0022    0.0023    0.0023    0.0023    0.0024    0.0024

  Columns 71 through 80

    0.0024    0.0025    0.0025    0.0026    0.0026    0.0027    0.0028    0.0028    0.0029    0.0029

  Columns 81 through 90

    0.0030    0.0031    0.0032    0.0032    0.0033    0.0034    0.0035    0.0036    0.0036    0.0037

  Columns 91 through 100

    0.0038    0.0039    0.0040    0.0041    0.0042    0.0043    0.0044    0.0045    0.0046    0.0047

plot(Vm,Im,'o',V,I)
% gadījumu kad pielaikotā polinoma kārta ir vienāda ar n-1 kur n punktu sk. 
% sauc par polinomiālo interpolāciju
% iet tieši caur mērījumu punktiem
% pārējos gadījumus sauca par polinomiālo aproksimāciju
% līnija izvēlas tuvāko punktiem
% uzd atkārtot 1 kārtai
C = polyfit(Vm,Im,1)

C =

    0.0007    0.0017

I = polyval(C,V)

I =

  Columns 1 through 10

    0.0010    0.0010    0.0010    0.0010    0.0011    0.0011    0.0011    0.0012    0.0012    0.0012

  Columns 11 through 20

    0.0013    0.0013    0.0013    0.0014    0.0014    0.0014    0.0015    0.0015    0.0015    0.0015

  Columns 21 through 30

    0.0016    0.0016    0.0016    0.0017    0.0017    0.0017    0.0018    0.0018    0.0018    0.0019

  Columns 31 through 40

    0.0019    0.0019    0.0020    0.0020    0.0020    0.0021    0.0021    0.0021    0.0021    0.0022

  Columns 41 through 50

    0.0022    0.0022    0.0023    0.0023    0.0023    0.0024    0.0024    0.0024    0.0025    0.0025

  Columns 51 through 60

    0.0025    0.0026    0.0026    0.0026    0.0027    0.0027    0.0027    0.0027    0.0028    0.0028

  Columns 61 through 70

    0.0028    0.0029    0.0029    0.0029    0.0030    0.0030    0.0030    0.0031    0.0031    0.0031

  Columns 71 through 80

    0.0032    0.0032    0.0032    0.0033    0.0033    0.0033    0.0033    0.0034    0.0034    0.0034

  Columns 81 through 90

    0.0035    0.0035    0.0035    0.0036    0.0036    0.0036    0.0037    0.0037    0.0037    0.0038

  Columns 91 through 100

    0.0038    0.0038    0.0039    0.0039    0.0039    0.0039    0.0040    0.0040    0.0040    0.0041

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

Im =

    1.1000    2.2000    2.1000    3.2000    4.7000
    0.9000    1.8000    2.6000    3.3000    4.5000
    1.0000    2.0000    2.4000    3.4000    4.3000
    0.8000    2.1000    2.5000    3.2000    4.6000
    0.9000    1.9000    2.3000    3.2000    4.4000

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

ans =

    4.7000   10.0000   11.9000   16.3000   22.5000

sum(Im)/5

ans =

    0.9400    2.0000    2.3800    3.2600    4.5000

Ivid = sum(Im)/5

Ivid =

    0.9400    2.0000    2.3800    3.2600    4.5000

% pielaikosim polinomu
C = polyfit(Vm,Ivid,3)

C =

    0.1179   -0.2800    0.5168    1.8568

V = linespace(min(Vm),max(Vm),100)
{Undefined function or variable 'linespace'.
} 
V = linspace(min(Vm),max(Vm),100)

V =

  Columns 1 through 10

   -1.0000   -0.9576   -0.9152   -0.8727   -0.8303   -0.7879   -0.7455   -0.7030   -0.6606   -0.6182

  Columns 11 through 20

   -0.5758   -0.5333   -0.4909   -0.4485   -0.4061   -0.3636   -0.3212   -0.2788   -0.2364   -0.1939

  Columns 21 through 30

   -0.1515   -0.1091   -0.0667   -0.0242    0.0182    0.0606    0.1030    0.1455    0.1879    0.2303

  Columns 31 through 40

    0.2727    0.3152    0.3576    0.4000    0.4424    0.4848    0.5273    0.5697    0.6121    0.6545

  Columns 41 through 50

    0.6970    0.7394    0.7818    0.8242    0.8667    0.9091    0.9515    0.9939    1.0364    1.0788

  Columns 51 through 60

    1.1212    1.1636    1.2061    1.2485    1.2909    1.3333    1.3758    1.4182    1.4606    1.5030

  Columns 61 through 70

    1.5455    1.5879    1.6303    1.6727    1.7152    1.7576    1.8000    1.8424    1.8848    1.9273

  Columns 71 through 80

    1.9697    2.0121    2.0545    2.0970    2.1394    2.1818    2.2242    2.2667    2.3091    2.3515

  Columns 81 through 90

    2.3939    2.4364    2.4788    2.5212    2.5636    2.6061    2.6485    2.6909    2.7333    2.7758

  Columns 91 through 100

    2.8182    2.8606    2.9030    2.9455    2.9879    3.0303    3.0727    3.1152    3.1576    3.2000

I = polyval(C,V);
plot(Vm,Im','-o',Vm,Ivid,'*',V,I,'-')
plot(Vm,Im','o',Vm,Ivid,'*',V,I,'-')
Inovirze = std(Im)

Inovirze =

    0.1140    0.1581    0.1924    0.0894    0.1581

errorbar(Vm,Ivid,Inovirze)
errorbar(Vm,Ivid,Inovirze).
 errorbar(Vm,Ivid,Inovirze).
                            ↑
{Error: Invalid expression. Check for missing or extra characters.
} 
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
bilde1.png  bilde2.png	lab1_diary.m

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

x =

  169.8303
  199.0973
  226.9706
  245.0882
  256.2376
  303.6222
  338.4638
  351.0068
  433.2330
  399.7851


y =

  215.4852
  211.0341
  195.9006
  178.9866
  161.1825
   57.9184
  120.2329
  152.2804
  215.4852
  205.6929

holld on
{Undefined function or variable 'holld'.
} 
hold on
plot(x,y,'o')
hold off
diary off

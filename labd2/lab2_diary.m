%% Ievads simboliskajā matemātikā
% piemērs
syms a11 a12 a21 a22 b11 b12 b21 b22
A[a11 a12 ; a21 a22];
 A[a11 a12 ; a21 a22];
  ↑
{Error: Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check
for mismatched delimiters.
} 
A = [a11 a12 ; a21 a22];
B = [b11 b12 ; b21 b22];
B = [b11 b12 ; b21 b22]
 
B =
 
[ b11, b12]
[ b21, b22]
 
C = A*B
 
C =
 
[ a11*b11 + a12*b21, a11*b12 + a12*b22]
[ a21*b11 + a22*b21, a21*b12 + a22*b22]
 
D = A.*B
 
D =
 
[ a11*b11, a12*b12]
[ a21*b21, a22*b22]
 
%% Kā definēt simbolisko mainīgo
% 1.
% definēsim x y kā simboliskus mainīgos
% izmantojot funkciju 'sym'
x = sym('x')
 
x =
 
x
 
y = sym('y');
%% atradīsim kvadrātsakni no x^2
y = x^2;
z = sqrt(y)
 
z =
 
(x^2)^(1/2)
 
x = sym('x','positive');
y = x^2;
z = sqrt(y)
 
z =
 
x
 
%% kā definēt simbolisko mainīgo - 2
syms x y 
% šajā rindā esam definējuši x y kā simboliskus mainīgos
syms x y positive
% x y > 0
syms a11 a12 a21 a22
A = [a11 a12 ; a21 a22];
A'
 
ans =
 
[ conj(a11), conj(a21)]
[ conj(a12), conj(a22)]
 
%% ierobežosim pasakot kā matricas elementi ir reāli
syms a11 a12 a21 a22 real
A = [a11 a12 ; a21 a22];
A'
 
ans =
 
[ a11, a21]
[ a12, a22]
 
%% 3.
A = sym('a',[2 3])
 
A =
 
[ a1_1, a1_2, a1_3]
[ a2_1, a2_2, a2_3]
 
A = sym('a%d%d',[2 3])
 
A =
 
[ a11, a12, a13]
[ a21, a22, a23]
 
%% Atvasināšana
syms x
y = x^2;
% diff funkcija veic atvasināšanu
diff(y)
 
ans =
 
2*x
 
% Parciālais atvasinjums
syms x y
z = 3*x^5+7*y^6;
diff(z,x)
 
ans =
 
15*x^4
 

diff(z,y)
 
ans =
 
42*y^5
 
%% integrēšana
syms x
y = x^3;
int(y)
 
ans =
 
x^4/4
 
syms a
int(x^3,a)
 
ans =
 
a*x^3
 
%% Noteiktais integrālis
syms x
int(x,x,0,3)
 
ans =
 
9/2
 
double(int(x,x,0,3))

ans =

    4.5000

%% atbilde nav skaitlis, bet simboliskais mainīgais
int(x^2,x,-3,3)
 
ans =
 
18
 
%% robežas
syms x
limit(1/(x-1),x,1,'left')
 
ans =
 
-Inf
 
limit(1/(x-1),x,1,'right')
 
ans =
 
Inf
 
% ja x tiecas uz 1 no labās un kreisās puses
%% vienādojumu risināšaa
syms x
% risināsim vienādojumu
% x^2-7x+12 = 0 (saknes 3 un 4)
solve(x^2-7x+12==0,x)
 solve(x^2-7x+12==0,x)
            ↑
{Error: Invalid expression. Check for missing multiplication operator, missing or unbalanced delimiters, or
other syntax error. To construct matrices, use brackets instead of parentheses.
} 
solve(x^2 - 7*x + 12==0,x)
 
ans =
 
 3
 4
 
%% Vienādojumu sistēmu risināšana
syms x y z
solve(x+y+z==10,x-y+z==4,x+y-z==0)

ans = 

  <a href="matlab:helpPopup struct" style="font-weight:bold">struct</a> with fields:

    x: [1×1 sym]
    y: [1×1 sym]
    z: [1×1 sym]

atb = solve(x+y+z==10,x-y+z==4,x+y-z==0)

atb = 

  <a href="matlab:helpPopup struct" style="font-weight:bold">struct</a> with fields:

    x: [1×1 sym]
    y: [1×1 sym]
    z: [1×1 sym]

atb.x
 
ans =
 
2
 
atb.y
 
ans =
 
3
 
atb.z
 
ans =
 
5
 
%% simboliskie mainīgie
%% lonstantes
a = vpa(2)
 
a =
 
2.0
 
b - vpa(pi)
{Undefined function or variable 'b'.
} 
B = vpa(pi)
 
B =
 
3.1415926535897932384626433832795
 
c = vpa(sqrt(2))
 
c =
 
1.4142135623730950488016887242097
 
d = sqrt(a)
 
d =
 
1.4142135623730950488016887242097
 
% Zīmju skaitu mainīšana
digits
 
Digits = 32
 
digits(100)
a = vpa(2)
 
a =
 
2.0
 
b = vpa(exp(1))
 
b =
 
2.71828182845904553488480814849026501178741455078125
 
% vpa = Variable precision arithmetic
%% Rezultātu vienkāršošana
syms x
y = 1/((x-1)*(x-2));
diff(y)
 
ans =
 
- 1/((x - 1)*(x - 2)^2) - 1/((x - 1)^2*(x - 2))
 
y = (x-4)*(x-5)/((x-1)*(x-2));
diff(y)
 
ans =
 
(x - 4)/((x - 1)*(x - 2)) + (x - 5)/((x - 1)*(x - 2)) - ((x - 4)*(x - 5))/((x - 1)*(x - 2)^2) - ((x - 4)*(x - 5))/((x - 1)^2*(x - 2))
 
y_atv = diff(y)
 
y_atv =
 
(x - 4)/((x - 1)*(x - 2)) + (x - 5)/((x - 1)*(x - 2)) - ((x - 4)*(x - 5))/((x - 1)*(x - 2)^2) - ((x - 4)*(x - 5))/((x - 1)^2*(x - 2))
 
%% Mēģināsim vienkāršot:
simplify(y_atv)
 
ans =
 
(6*(x^2 - 6*x + 7))/(x^2 - 3*x + 2)^2
 
y = (x-3)*(x-4);
expand(y)
 
ans =
 
x^2 - 7*x + 12
 
atb = expand(y)
 
atb =
 
x^2 - 7*x + 12
 
factor(atb)
 
ans =
 
[ x - 3, x - 4]
 
horner(atb)
 
ans =
 
x*(x - 7) + 12
 
%% Rezultātu "skaista" attēlošana
y = (x-4)*(x-5)/((x-1)*(x-2));
pretty(y)
(x - 4) (x - 5)
---------------
(x - 1) (x - 2)

pretty(69/420)
{Undefined function 'pretty' for input arguments of type 'double'.
} 
%% Ko darīt ar rezultātiem
%% iedomāsimies situāciju
% dots:
y = (x-4)*(x-5)/((x-1)*(x-2));
% uzdevums: atrast atvasinājumu, un uzīmēt to ar funkciju plot
%% Risinājums:
%% 1.
% definēsim sym main
syms x
y = (x-4)*(x-5)/((x-1)*(x-2));
%% 2. atvasina
y_atv = diff(y)
 
y_atv =
 
(x - 4)/((x - 1)*(x - 2)) + (x - 5)/((x - 1)*(x - 2)) - ((x - 4)*(x - 5))/((x - 1)*(x - 2)^2) - ((x - 4)*(x - 5))/((x - 1)^2*(x - 2))
 
y_atv = simplify(diff(y))
 
y_atv =
 
(6*(x^2 - 6*x + 7))/(x^2 - 3*x + 2)^2
 
%% 3. izsteiksmes vektorizācija
% punktiņu ielikšana pirms reizināsānas
y_v = vectorize(y)

y_v =

    '((x - 4).*(x - 5))./((x - 1).*(x - 2))'

y_atv_v = vectorize(y_atv)

y_atv_v =

    '(6.*(x.^2 - 6.*x + 7))./(x.^2 - 3.*x + 2).^2'

%% 4. saformēsim x kā vektoru
% x intervāls būs dots uzdevumā
x = [-2:0.01:2-0.01];
x = -2:0.01:2-0.01;
% x pieder no -2 līdz 2 neietverot 2 [-2;2)
%% 5. ieliksim x - aprēķināsim y
% 5.1. atrisinājums copy-paste
y_n = ((x - 4).*(x - 5))./((x - 1).*(x - 2));
% 5.2. risinājums izmantojot eval
% eval - interpretatora funkcija
y_n = eval(y_v);
y_atv_n = eval(y_atv_v);
%% 6. uzzīmēsim
plot(x,y_n,x,y_atv_n)
%% 7. grafiku anotācija
%% izsteiksmes skaista attēlošana 
y_ltx = latex(y)

y_ltx =

    '\frac{\left(x-4\right)\,\left(x-5\right)}{\left(x-1\right)\,\left(x-2\right)}'

y_atv_ltx = latex(y_atv)

y_atv_ltx =

    '\frac{6\,\left(x^2-6\,x+7\right)}{{\left(x^2-3\,x+2\right)}^2}'

h = legend(['$',y_ltx,'$'],['$',y_atv_ltx,'$'])
[Warning: Ignoring extra legend entries.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>set_children_and_strings', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 646)" style="font-weight:bold">legend>set_children_and_strings</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',646,0)">line 646</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>make_legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 316)" style="font-weight:bold">legend>make_legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',316,0)">line 316</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 259)" style="font-weight:bold">legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',259,0)">line 259</a>)] 

h = 

  <a href="matlab:helpPopup matlab.graphics.illustration.Legend" style="font-weight:bold">Legend</a> with properties:

         String: {}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 9
       Position: [0.7327 0.8556 0.1536 0.0452]
          Units: 'normalized'

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.illustration.Legend'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>

set(h,'Interpreter','Latex')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('matlab.graphics.illustration.Legend/set')" style="font-weight:bold">matlab.graphics.illustration.Legend/set</a>
Invalid or deleted object.
} 
h=legend(['$',y_ltx,'$'],['$',y_atv_ltx,'$'])
[Warning: Ignoring extra legend entries.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>set_children_and_strings', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 646)" style="font-weight:bold">legend>set_children_and_strings</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',646,0)">line 646</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>make_legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 316)" style="font-weight:bold">legend>make_legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',316,0)">line 316</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 259)" style="font-weight:bold">legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',259,0)">line 259</a>)] 

h = 

  <a href="matlab:helpPopup matlab.graphics.illustration.Legend" style="font-weight:bold">Legend</a> with properties:

         String: {}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 9
       Position: [0.7327 0.8556 0.1536 0.0452]
          Units: 'normalized'

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.illustration.Legend'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>

set(h,'Interpreter','Latex')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('matlab.graphics.illustration.Legend/set')" style="font-weight:bold">matlab.graphics.illustration.Legend/set</a>
Invalid or deleted object.
} 
h=legend(['$',y_ltx,'$'],['$',y_atv_ltx,'$'])
[Warning: Ignoring extra legend entries.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>set_children_and_strings', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 646)" style="font-weight:bold">legend>set_children_and_strings</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',646,0)">line 646</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>make_legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 316)" style="font-weight:bold">legend>make_legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',316,0)">line 316</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 259)" style="font-weight:bold">legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',259,0)">line 259</a>)] 

h = 

  <a href="matlab:helpPopup matlab.graphics.illustration.Legend" style="font-weight:bold">Legend</a> with properties:

         String: {}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 9
       Position: [0.7327 0.8556 0.1536 0.0452]
          Units: 'normalized'

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.illustration.Legend'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>

set(h,'Interpreter','Latex')
plot(x,y_n,x,y_atv_n)
h=legend(['$',y_ltx,'$'],['$',y_atv_ltx,'$'])

h = 

[Warning: Error updating Legend.

 String scalar or character vector must have valid interpreter syntax:
$\frac{\left(x-4\right)\,\left(x-5\right)}{\left(x-1\right)\,\left(x-2\right)}$
] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('defaulterrorcallback', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m', 12)" style="font-weight:bold">defaulterrorcallback</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m',12,0)">line 12</a>)
  In matlab.graphics.illustration.Legend/get.String
  In matlab.graphics.illustration.Legend/getDescriptiveLabelForDisplay] 
[Warning: Error updating Legend.

 String scalar or character vector must have valid interpreter syntax:
$\frac{6\,\left(x^2-6\,x+7\right)}{{\left(x^2-3\,x+2\right)}^2}$
] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('defaulterrorcallback', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m', 12)" style="font-weight:bold">defaulterrorcallback</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/defaulterrorcallback.m',12,0)">line 12</a>)
  In matlab.graphics.illustration.Legend/get.String
  In matlab.graphics.illustration.Legend/getDescriptiveLabelForDisplay] 
  <a href="matlab:helpPopup matlab.graphics.illustration.Legend" style="font-weight:bold">Legend</a> ($\frac{\left(x-4\right)\,\left(x-5\right)}{\left(x-1\right)\,\left(x-2\right…) with properties:

         String: {1×2 cell}
       Location: 'northeast'
    Orientation: 'vertical'
       FontSize: 9
       Position: [0.0327 0.8187 0.8536 0.0821]
          Units: 'normalized'

  Show <a href="matlab:if exist('h', 'var'), matlab.graphics.internal.getForDisplay('h', h, 'matlab.graphics.illustration.Legend'), else, matlab.graphics.internal.getForDisplay('h'), end">all properties</a>

set(h,'Interpreter','Latex')
dairy off
{Undefined function or variable 'dairy'.
} 
diary(off)
{Undefined function or variable 'off'.
} 
diaryoff
{Undefined function or variable 'diaryoff'.
} 
diary off

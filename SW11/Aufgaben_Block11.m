%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              Übungen SW11                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Aufgabe 11.1
fprintf('\nAufgabe 11.1 \n');
fprintf('Man gewinnt mit a = 3 oder a = 2 oder a <= 0 oder 5 <= a <= 6 \n');

%Aufgabe 11.2
clear;

fprintf('\nAufgabe 11.2 \n');
y=input('Jahr = ');
tageProJahr = 0;

if rem(y,400) == 0
  tageProJahr = 366;
elseif rem(y,100) == 0
  tageProJahr = 365;
elseif rem(y,4) == 0
  tageProJahr = 366;
else
  tageProJahr=365;
end
tageProJahr

%Aufgabe 11.3
fprintf('\nAufgabe 11.3 \n');
fprintf('\ni) \n');
n = 10;
summe = 0;
for i=1:n
  summe = summe+i^2;
end
summe
n*(n+1)*(2*n+1)/6

fprintf('\nii) \n');
n = 10;
summe = 0;
for i=1:n
  summe = summe + i^3;
end
summe
(n^2*(n+1)^2)/4

fprintf('\ni) - Vektorisiert \n');
t = 1:10;
summe = sum(t.^2);
summe

fprintf('\nii) - Vektorisiert \n');
t = 1:10;
summe = sum(t.^3);
summe

%Aufgabe 11.4
fprintf('\nAufgabe 11.4 \n');
fprintf('\na) \n');
f(1)=1;
f(2)=1;

for i=2:43
  f(i+1) = f(i) + f(i-1);
end
f

fprintf('\nb) \n');
f(1)=1;
f(2)=1;
n=2;

while f(n) <= 1e20
  f(n+1)=f(n)+f(n-1);
  n=n+1;
end
N=n

%Aufgabe 11.5
fprintf('\nAufgabe 11.5 \n');
fprintf('\na) \n');
fprintf('\ni) \n');
x=1/2;
summe=0;
potenz =1;
for i = 0:19
  summe = summe + potenz;
  potenz = potenz*x;
end
summe
potenz

fprintf('\na) \n');
fprintf('\nii) \n');
x=1/2;
summe=0;
for i = 0:19
  summe = summe + (-1)^i*x^(2*i+1)/factorial(2*i+1);
end
summe

fprintf('\nb) \n');
fprintf('\ni) \n');
x=1/2;
n=1; % Zaehlvariable
summe=0;
potenz =1;
% 1/(1-0.5) = 2
while abs(2-summe)/2 > 1e-3
  summe = summe + potenz;
  potenz = potenz*x;
  n = n+1;
end
n-1

fprintf('\nb) \n');
fprintf('\nii) \n');
x=1/2;
summe=0;
sinx = sin(x);
i = 0;
while abs((sinx-summe)/sinx) > 1e-3
  summe = summe + (-1)^i*x^(2*i+1)/factorial(2*i+1);
  i = i+1;
end
i

fprintf('\nc) \n');
fprintf('\ni) \n');
x=1/2;
i=0:19;
summe=sum(x.^i)

fprintf('\nc) \n');
fprintf('\nii) \n');
x=1/2;
i=0:19;
summe = sum((-1).^i.*x.^(2*i+1)./factorial(2*i+1))

fprintf('\nd) \n');
fprintf('Geht nicht, da wir nicht wissen, wie lang der Vektor sein muss \n');

%Aufgabe 11.6
fprintf('\nAufgabe 11.6 \n');
%t = linspace(-10, 10,100);
%hold on;
%for A = linspace(0,2,10)
%  y=(1-atan(y));
%  plot(t,y);
%end
%hold off;
% gem. Plot scheint 0.5 ein guter Startwert zu sein


toleranz=1e-5;
x_alt=0.5; 
x_neu=1 - atan(x_alt);
while abs((x_neu-x_alt)/x_alt)>toleranz
  x_alt=x_neu;
  x_neu=1 - atan(x_alt);
end
x_neu







  


%Aufgabe 11.7
fprintf('\nAufgabe 11.7 \n');
n = 10;
for i=1:n
  for j=1:i
    fprintf('*');
  end
  fprintf('\n');
end


%Example if-else loop
A = 1;
if A>=0 
  r=sqrt(A/pi);
  fprintf('Der Radius eines Kreises mit Flaecheninhalt %d ist %d\n',A,r);
else
  fprintf('Der Flaecheninhalt %d ist negativ. \n', A);
end

%Beispiel 12.1 - quadratische Gleichung loesen

clear;
fprintf('\nBestimmung der reellen Loesungen der Gleichung ax^2+bx+c=0.\n');
a=input('a = ');
b=input('b = ');
c=input('c = ');

D = b^2-4*a*c;

if D<0
  fprintf('Die Gleichung hat keine reellen Loesungen. \n');
else
  x1 = (-b+sqrt(D))/(2*a);
  x2 = (-b-sqrt(D))/(2*a);  
  fprintf('Die reellen Loesungen der Gleichung ax^2+bx+c=0 sind %d und %d.\n',x1,x2);
end


%Beispiel 12.2 - BMI Rechner

clear;
fprintf('\nBestimmung des BMI \n');
h=input('Groesse in m = ');
m=input('Gewicht in kg = ');

bmi = m/h^2;

if bmi < 18.5
    fprintf('Ihr BMI ist %d - sie sind Untergewichtig! \n', bmi);
elseif bmi < 25
    fprintf('Ihr BMI ist %d - sie sind Normalgewichtig! \n', bmi);
elseif bmi < 30
    fprintf('Ihr BMI ist %d - sie sind bisschen fett! \n', bmi);
else
    fprintf('Ihr BMI ist %d - sie sind uebergewichtig! \n', bmi);
end

%Beispiel 12.3 - Operatoren
clear;

fprintf('\nPolarkoordinaten-Rechner\n');
r=input('r = ');
phi=input('phi = ');

if r>=0 && phi>-pi && phi<=pi
  x=r*cos(phi);
  y=r*sin(phi);
  fprintf('Die kartesischen Koordinaten von (r,phi)=(%d,%d) sind (x,y)=(%d,%d).\n',r,phi,x,y);
else
  fprintf('(r,phi)=(%d,%d) sind keine gueltigen Polarkoordinaten.\n',r,phi);
end

%Beispiel 12.4 - for-loop

clear;
fprintf('\nZahlen summieren mit for loop \n');

n= round(100*rand())
summe = 0;
for k=1:n
  summe = summe + k;
end
summe
n*(n+1)/2


%Beispiel 12.5 - Sinuskurven plotten

clear;
fprintf('\nSinuskurven plotten \n');

t = linspace(-10, 10,100);
hold on;
for A = linspace(0,4,10)
  y=A*sin(t);
  plot(t,y);
end
hold off;


%Beispiel 12.6 - e approximieren - while-loop

clear;
fprintf('\ne approximieren mit while loop \n');

toleranz = 5e-11;
summe = 1;
fakultaet=1;
k=1;
while abs(e-summe) >= toleranz
  fakultaet= fakultaet*k;
  summe=summe+1/fakultaet;
  k=k+1;
end
k = k-1
summe

%Beispiel 12.7 - Der Goldene Schnitt
clear;
fprintf('\nDer Goldene Schnitt \n');

toleranz=1e-5;
phi_alt=1; % Phi_0
phi_neu=1+1/phi_alt; % Phi_1
while abs((phi_neu-phi_alt)/phi_alt)>toleranz
  phi_alt=phi_neu; % Phi_{n-1}
  phi_neu=1+1/phi_alt; % Phi_n
end
phi_neu



%Beispiel 12.8 - Matrix definieren - verschachtelte Schleifen

clear;
fprintf('\nVerschachtelte Schleifen \n');

n=100;
for i=1:n
  for j=1:n
    Q(i,j)=sqrt(2/(n+1))*sin(i*j*pi/(n+1));
  end
end



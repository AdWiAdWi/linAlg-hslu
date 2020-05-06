%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      LINALG TESTAT BLOCK 9                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%NOTE comment out all the csvwrite you dont use, because file is overwritten every time

%Erzeugen der folgenden Folge a=(0.7,0.2,?0.3,…,?10.8)
a = 0.7:-0.5:-10.8;
csvwrite('Testat_Block9.txt',a);

%Erzeugen der folgenden Folge b=(?4,16,?64,…,?1073741824)
k = 1:15;
b = (-4).^k;
csvwrite('Testat_Block9.txt',b);

%Erzeugen der folgenden Folge
n = 1:35;
c = (n.*(2+n))./ (1+(((-2).^n)./3.^n));
csvwrite('Testat_Block9.txt',c);

%Erzeugen der folgenden Folge
n = 1:25;
d = (-1+8.^(1./n))./(-1+2.^(1./n));
csvwrite('Testat_Block9.txt',d);

%28te Partialsumme der Taylorreihe der Logarithmusfunktion für x = -6/7 berechnen
k = 1:28;
x = -6/7;
ln = sum((((-1).^(k-1))./k).*x.^k);
csvwrite('Testat_Block9.txt',ln);

%Näherungswert für ln(7)
%ln(1-x) = ln(1/7) = ln(1)-ln(7) = -ln(7)
ln7 = -ln;
csvwrite('Testat_Block9.txt',ln7);

 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      LINALG TESTAT BLOCK 10                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fid = fopen ("Testat10.txt", "w"); % Textfile für Daten erstellen, file identifier
fprintf(fid, "Linalg Testat 10 \r\n\r\n"); % Ausgabe in Textfile
image = imread('linAlgTestat10Bild.JPG');
imshow(image)

%1 und 2 auf Blatt
A = [1.94 1.5 0 0 0 0 0; 0 0 1.5 1.58 0 0 0; 0 0 0 0 2.02 1.58 1.56];
b = [6.88; 6.24; 8.3];
fprintf(fid, 'Fuer 1 und 2 siehe Code oder Bild im Ordner \r\n\r\n');


%3) Wie viele freie Parameter wird die allgemeine Lösung haben?
fprintf(fid, '3) Frei waehlbare Parameter bei der allg. Loesung: \r\n');
rangA = rank(A);
rangAb = rank([A b]);
basis = null(A);
fprintf(fid, 'Es sind %f Parameter frei waehlbar \r\n\r\n', 4);

%4) Bestimmen Sie mit Octave eine Lösung
xp = A\b;
fprintf(fid, '4) Eine partikulaere Loesung:\r\n');
fprintf(fid, 'matrix([%f],[%f],[%f],[%f],[%f],[%f],[%f])\r\n\r\n', xp(1),xp(2),xp(3),xp(4),xp(5),xp(6),xp(7) );

% 5) Allgemeine Lösung bestimmen
% Lösungsmenge des homogenen Systems A*x = 0 ist der Kern von A
kern = null(A); % Kern der Matrix A
x1 = kern(:,1); % Einzelne Spalten enthalten die Teilvektoren
x2 = kern(:,2);
x3 = kern(:,3);
x4 = kern(:,4);

fprintf(fid,'5) Allgemeine Loesung:\r\n');
fprintf( fid,"matrix([%f],[%f],[%f],[%f],[%f],[%f],[%f])", xp(1),xp(2),xp(3),xp(4),xp(5),xp(6),xp(7));
fprintf( fid,"+t1*matrix([%f],[%f],[%f],[%f],[%f],[%f],[%f])", x1(1),x1(2),x1(3),x1(4),x1(5),x1(6),x1(7));
fprintf( fid,"+t2*matrix([%f],[%f],[%f],[%f],[%f],[%f],[%f])", x2(1),x2(2),x2(3),x2(4),x2(5),x2(6),x2(7));
fprintf( fid,"+t3*matrix([%f],[%f],[%f],[%f],[%f],[%f],[%f])", x3(1),x3(2),x3(3),x3(4),x3(5),x3(6),x3(7));
fprintf( fid,"+t4*matrix([%f],[%f],[%f],[%f],[%f],[%f],[%f])\r\n\r\n", x4(1),x4(2),x4(3),x4(4),x4(5),x4(6),x4(7));

% 6) Aufgabe mit den 4 Zusatzinformationen aus der Aufgabenstellung erweitern
A = [1.94 1.5 0 0 0 0 0; 0 0 1.5 1.58 0 0 0; 0 0 0 0 2.02 1.58 1.56; 1 1 -1 -1 0 0 0; -1 -1 0 0 1 1 1; 0 1 0 0 0 -1 0; 0 0 0 1 0 1 0];
b = [6.88; 6.24; 8.3; 0; 1; 0; 5];
x = A\b;
fprintf(fid,'6) Eindeutige Loesung: \r\n');
fprintf(fid,'matrix([%f],[%f],[%f],[%f],[%f],[%f],[%f])', x(1),x(2),x(3),x(4),x(5),x(6),x(7) );

fclose(fid); % File schliessen
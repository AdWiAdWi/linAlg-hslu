%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      LINALG TESTAT BLOCK 11                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fid = fopen ("Testat11.txt", "w"); % Textfile für Daten erstellen, file identifier
fprintf(fid, "Linalg Testat 11 \r\n\r\n"); % Ausgabe in Textfile
fprintf(fid, 'Pi in Form eines Kettenbruchs darstellen \r\n\r\n');


function kettenbruch(n, fid)
  a(1) = 1;
  b(1) = 3;

  for i = 1:n
    a(i+1) = (i*2+1)^2;   % [1^2, 3^2, 5^2,...]
    b(i+1) = 6;           % [3, 6, 6, 6,...]
  end

  %Kettenbruch
  p = b(n+1);
  for i = n:-1:1
    p = a(i)/p + b(i);
  end

  % Ausgabe in Textfile
  fprintf(fid,"Pi (n = %d) = %.10f\r\n",n,p);
endfunction

kettenbruch(3, fid);
kettenbruch(5, fid);
kettenbruch(8, fid);
kettenbruch(13, fid);

fclose(fid); % File schliessen
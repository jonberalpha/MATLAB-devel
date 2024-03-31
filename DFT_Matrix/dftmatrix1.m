function W = dftmatrix1(N)
%Die Funktion "dftmatrix1" erzeugt eine NxN DFT-Matrix, wobei N als
%Parameter übergeben wird.
%  Input:
%    N ... Größe der Matrix
%
%  Output:
%    W ... DFT-Martrix mit der Größe NxN

W = ones(N); % Matrix mit der passenden Größe definieren
w = exp(-1i*(2*pi/N));

for k = 1:N % for-Schleife für N-Zeilen
    for l = 1:N % for-Schleife für N-Spalten
        W(k,l) = w^((k-1)*(l-1)); % Koeffizient ausrechnen
    end
end

end

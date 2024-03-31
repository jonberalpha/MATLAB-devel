function W = dftmatrix3(N)
%Die Funktion "dftmatrix3" erzeugt eine NxN DFT-Matrix, wobei N als
%Parameter übergeben wird.
%  Input:
%    N ... Größe der Matrix
%
%  Output:
%    W ... DFT-Martrix mit der Größe NxN

w = exp(-1i*(2*pi/N));

An = 0:N-1;
A = An'*An; % Matrixmultiplikation des Zeilen- und Spaltenvektors ergibt die gewünschten Exponenten

W = w.^A; % elementweises Potenzieren

end

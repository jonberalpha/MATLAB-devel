function W = dftmatrix4(N)
%Die Funktion "dftmatrix4" erzeugt eine NxN DFT-Matrix, wobei N als
%Parameter übergeben wird.
%  Input:
%    N ... Größe der Matrix
%
%  Output:
%    W ... DFT-Martrix mit der Größe NxN

% Exponent initialisieren
k = 0:N-1;
k = k.*(-1i*(2*pi/N));

w = exp(k); % Exponentenvektor zur Basis von e

W = fliplr(vander(w)); % berechne DFT-Matrix/Vandermonde-Matrix

end

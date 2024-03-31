function W = dftmatrix5(N)
%Die Funktion "dftmatrix5" erzeugt eine NxN DFT-Matrix, wobei N als
%Parameter übergeben wird.
%  Input:
%    N ... Größe der Matrix
%
%  Output:
%    W ... DFT-Martrix mit der Größe NxN

W = fft(eye(N)); % Fast Fourier Transformation verwenden

end

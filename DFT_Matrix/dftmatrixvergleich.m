%% init script
clear;
clc;
close all;

%% 
N = 2^8; % maximal vernünftige Dauer
MAX = 5;

%% Messung 1 - dftmatrix1

elapsed_time = zeros(N,1) ;  % initilaize the elapsed times
elapsed_each = zeros(MAX,1) ;  % initilaize the elapsed times
elapsed = zeros(MAX,1) ;  % initilaize the elapsed times
disp("calculating dftmatrix1 ...");
for k = 1:N
    t1 = tic ; % starte die Stoppuhr
    for i = 1:MAX
        t2 = tic;
        W = dftmatrix1(k);
        t2 = toc(t2);
        elapsed(i) = t2;
    end
    elapsed_each(k) = mean(elapsed);
    t1 = toc(t1); % stoppe die Zeit
    elapsed_time(k) = t1;   % speichere die Zeit
end
time_avg = mean(elapsed_time)/MAX; % Berechnung der Gesamtrechenzeit (exklusiv Mittelwert-Berechnung)
disp("Zeit: " + time_avg + " s");
figure;
plot(1:N,elapsed_each','DisplayName','2x for'); % plot Rechenzeiten von 1x1 bis NxN
set(gca,'YScale','log');
xlabel('Größe der Matrix N');
ylabel('Rechenzeit in s');
axis([1 N 10^-6 10^0]);
title('Messergebnis');
legend;
grid on;
hold on;

%% Messung 2 - dftmatrix2

elapsed_time = zeros(N,1) ;  % initilaize the elapsed times
elapsed_each = zeros(MAX,1) ;  % initilaize the elapsed times
elapsed = zeros(MAX,1) ;  % initilaize the elapsed times
disp("calculating dftmatrix2 ...");
for k = 1:N
    t1 = tic ; % starte die Stoppuhr
    for i = 1:MAX
        t2 = tic;
        W = dftmatrix2(k);
        t2 = toc(t2);
        elapsed(i) = t2;
    end
    elapsed_each(k) = mean(elapsed);
    t1 = toc(t1); % stoppe die Zeit
    elapsed_time(k) = t1;   % speichere die Zeit
end
time_avg = mean(elapsed_time)/MAX; % Berechnung der Gesamtrechenzeit (exklusiv Mittelwert-Berechnung)
disp("Zeit: " + time_avg + " s");
plot(1:N,elapsed_each','DisplayName','Exponenzieren'); % plot Rechenzeiten von 1x1 bis NxN

%% Messung 3 - dftmatrix3

elapsed_time = zeros(N,1) ;  % initilaize the elapsed times
elapsed_each = zeros(MAX,1) ;  % initilaize the elapsed times
elapsed = zeros(MAX,1) ;  % initilaize the elapsed times
disp("calculating dftmatrix3 ...");
for k = 1:N
    t1 = tic ; % starte die Stoppuhr
    for i = 1:MAX
        t2 = tic;
        W = dftmatrix3(k);
        t2 = toc(t2);
        elapsed(i) = t2;
    end
    elapsed_each(k) = mean(elapsed);
    t1 = toc(t1); % stoppe die Zeit
    elapsed_time(k) = t1;   % speichere die Zeit
end
time_avg = mean(elapsed_time)/MAX; % Berechnung der Gesamtrechenzeit (exklusiv Mittelwert-Berechnung)
disp("Zeit: " + time_avg + " s");
plot(1:N,elapsed_each','DisplayName','Potenzieren'); % plot Rechenzeiten von 1x1 bis NxN

%% Messung 4 - dftmatrix4

elapsed_time = zeros(N,1) ;  % initilaize the elapsed times
elapsed_each = zeros(MAX,1) ;  % initilaize the elapsed times
elapsed = zeros(MAX,1) ;  % initilaize the elapsed times
disp("calculating dftmatrix4 ...");
for k = 1:N
    t1 = tic ; % starte die Stoppuhr
    for i = 1:MAX
        t2 = tic;
        W = dftmatrix4(k);
        t2 = toc(t2);
        elapsed(i) = t2;
    end
    elapsed_each(k) = mean(elapsed);
    t1 = toc(t1); % stoppe die Zeit
    elapsed_time(k) = t1;   % speichere die Zeit
end
time_avg = mean(elapsed_time)/MAX; % Berechnung der Gesamtrechenzeit (exklusiv Mittelwert-Berechnung)
disp("Zeit: " + time_avg + " s");
plot(1:N,elapsed_each','DisplayName','Vandermonde'); % plot Rechenzeiten von 1x1 bis NxN

%% Messung 5 - dftmatrix5

elapsed_time = zeros(N,1) ;  % initilaize the elapsed times
elapsed_each = zeros(MAX,1) ;  % initilaize the elapsed times
elapsed = zeros(MAX,1) ;  % initilaize the elapsed times
disp("calculating dftmatrix5 ...");
for k = 1:N
    t1 = tic ; % starte die Stoppuhr
    for i = 1:MAX
        t2 = tic;
        W = dftmatrix5(k);
        t2 = toc(t2);
        elapsed(i) = t2;
    end
    elapsed_each(k) = mean(elapsed);
    t1 = toc(t1); % stoppe die Zeit
    elapsed_time(k) = t1;   % speichere die Zeit
end
time_avg = mean(elapsed_time)/MAX; % Berechnung der Gesamtrechenzeit (exklusiv Mittelwert-Berechnung)
disp("Zeit: " + time_avg + " s");
plot(1:N,elapsed_each','DisplayName','FFT'); % plot Rechenzeiten von 1x1 bis NxN

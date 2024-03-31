%% init script
clear;
clc;
close all;

%% Grafische Darstellung der DFT-Basisvektoren
N = 2^4; % Länge der Vektoren bestimmen
k = 0:N; % 0 bis N, damit voller Kreis
Nvar = [2^2, 2^3, N];
uk1 = exp(((1i*2*pi)/Nvar(1))*k); % Basisvektoren N=2^2 erstellen
uk2 = exp(((1i*2*pi)/Nvar(2))*k); % Basisvektoren N=2^3 erstellen
uk3 = exp(((1i*2*pi)/Nvar(3))*k); % Basisvektoren N=2^4 erstellen

% Real- und Imaginärteil berechnen
real_uk1 = real(uk1);
imag_uk1 = imag(uk1);

real_uk2 = real(uk2);
imag_uk2 = imag(uk2);

real_uk3 = real(uk3);
imag_uk3 = imag(uk3);

% Basisvektoren als Pfeile im Einheitskreis plotten
figure;
subplot(1,3,1);
quiver(zeros(size(uk1',1),1),zeros(size(uk1',1),1),real_uk1',imag_uk1');
title("Basisvektoren uk im Einheitskreis, N = " + Nvar(1));
xlabel('Re(uk)');
ylabel('Im(uk)');
grid on;
subplot(1,3,2);
quiver(zeros(size(uk2',1),1),zeros(size(uk2',1),1),real_uk2',imag_uk2');
title("Basisvektoren uk im Einheitskreis, N = " + Nvar(2));
xlabel('Re(uk)');
ylabel('Im(uk)');
grid on;
subplot(1,3,3);
quiver(zeros(size(uk3',1),1),zeros(size(uk3',1),1),real_uk3',imag_uk3');
title("Basisvektoren uk im Einheitskreis, N = " + Nvar(3));
xlabel('Re(uk)');
ylabel('Im(uk)');
grid on;

% Basisvektoren als Punkte im Einheitskreis plotten
figure;

subplot(1,3,1);
plot(real_uk1,imag_uk1,'o');
grid on;
axis([-1.5 1.5 -1.5 1.5]);
title("Basisvektoren uk im Einheitskreis, N = " + Nvar(1));
xlabel('Re(uk)');
ylabel('Im(uk)');
subplot(1,3,2);
plot(real_uk2,imag_uk2,'o');
grid on;
axis([-1.5 1.5 -1.5 1.5]);
title("Basisvektoren uk im Einheitskreis, N = " + Nvar(2));
xlabel('Re(uk)');
ylabel('Im(uk)');
subplot(1,3,3);
plot(real_uk3,imag_uk3,'o');
grid on;
axis([-1.5 1.5 -1.5 1.5]);
title("Basisvektoren uk im Einheitskreis, N = " + Nvar(3));
xlabel('Re(uk)');
ylabel('Im(uk)');

% Basisvektoren im 3-dimensionalen Raum plotten
l1 = 0:Nvar(1);
l2 = 0:Nvar(2);
l3 = 0:Nvar(3);
% e^(i*2*pi/N*l) -> Euler'sche Formel anwenden -> cos & sin
x1 = cos((2*pi/Nvar(1))*l1); % real
z1 = sin((2*pi/Nvar(1))*l1); % imaginär
y1 = l1;

x2 = cos((2*pi/Nvar(2))*l2); % real
z2 = sin((2*pi/Nvar(2))*l2); % imaginär
y2 = l2;

x3 = cos((2*pi/Nvar(3))*l3); % real
z3 = sin((2*pi/Nvar(3))*l3); % imaginär
y3 = l3;

figure;
subplot(1,3,1);
plot3(x1,y1,z1);
hold on;
line([0,0],get(gca,'ylim'),'LineStyle','-.','Color','r'); % draw l axis-line
title("Basisvektoren uk im 3D-Raum, N = " + Nvar(1));
xlabel('Re(uk)');
zlabel('Im(uk)');
ylabel('l');
grid on;
subplot(1,3,2);
plot3(x2,y2,z2);
hold on;
line([0,0],get(gca,'ylim'),'LineStyle','-.','Color','r'); % draw l axis-line
title("Basisvektoren uk im 3D-Raum, N = " + Nvar(2));
xlabel('Re(uk)');
zlabel('Im(uk)');
ylabel('l');
grid on;
subplot(1,3,3);
plot3(x3,y3,z3);
hold on;
line([0,0],get(gca,'ylim'),'LineStyle','-.','Color','r'); % draw l axis-line
title("Basisvektoren uk im 3D-Raum, N = " + Nvar(3));
xlabel('Re(uk)');
zlabel('Im(uk)');
ylabel('l');
grid on;

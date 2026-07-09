%% Density of States and Fermi-Dirac Distribution
% Semiconductor Physics
% Author: Mostafa Ahmed

clear;
clc;
close all;

%% Physical Constants

h = 6.626e-34;          % Planck constant (J.s)
hbar = h/(2*pi);             % Reduced Planck constant
q = 1.6e-19;         % Electron charge (C)
k = 1.38e-23;            % Boltzmann constant (J/K)
T = 300;                     % Temperature (K)
m0 = 9.1e-31;         % Electron mass (kg)
Vt = k*T/q;

%% Select Semiconductor

material = 'Si';        % 'Si' , 'GaAs' , 'GaN'

switch material

    case 'Si'

        Eg = 1.12;
        me = 1.08*m0;
        mh = 0.56*m0;

    case 'GaAs'

        Eg = 1.42;
        me = 0.067*m0;
        mh = 0.50*m0;

    case 'GaN'

        Eg = 3.40;
        me = 0.20*m0;
        mh = 1.40*m0;

end

%% Band Edges

Ec = 0;
Ev = -Eg;

%% Intrinsic Fermi Level

Ef = (Ec + Ev)/2;

%% Energy Axis

E = linspace(Ev-0.8,Ec+0.4,2000);

%% Density of States

g_c = zeros(size(E));
g_v = zeros(size(E));

%% Conduction Band DOS

idxC = E >= Ec;

g_c(idxC) = (1/(2*pi^2))*((2*me)/(hbar^2)).^(3/2).* ...
            sqrt((E(idxC)-Ec)*q);

%% Valence Band DOS

idxV = E <= Ev;

g_v(idxV) = (1/(2*pi^2))*((2*mh)/(hbar^2)).^(3/2).* ...
            sqrt((Ev-E(idxV))*q);

%% Fermi-Dirac Distribution

f = 1./(1+exp((E-Ef)/Vt));

%% Figure 1 : Density of States

figure('Color','w')

plot(g_v,E,'b','LineWidth',2.5)
hold on
plot(g_c,E,'r','LineWidth',2.5)

grid on
box on

xlabel('Density of States (States/m^3/J)')
ylabel('Energy (eV)')

title(['Density of States - ',material])

legend('Valence Band','Conduction Band',...
       'Location','northwest')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Figure 2 : Fermi-Dirac Distribution
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure('Color','w')

plot(E,f,'LineWidth',3)

grid on
box on

xlabel('Energy (eV)')
ylabel('Occupation Probability')

title('Fermi-Dirac Distribution')

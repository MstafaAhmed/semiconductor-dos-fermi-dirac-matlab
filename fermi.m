%% fermi dirac ditribution
%%constant
k = 1.38e-23;  % boltzman constant J/K

e = 1.6e-19;   % electron charge 

k_ev = k/e;    % convert from joule to elctron volt

T = 0:500:1500; % Temperture range

E = linspace(0,1,10000);  % variation of energy

Ef = .5;        % fermi energy

% figure(1);
% xlabel('Energy (ev)');
% ylabel('f(E) - Occupation Probability for electron');
% title('Fermi-Dirac Distribution');
% legend('Location', 'southwest');
% grid on;
% hold on;
% 
% figure(2);
% xlabel('Energy (ev)');
% ylabel('1-f(E) - Occupation Probability for holes');
% title('Fermi-Dirac Distribution');
% legend('Location', 'southwest');
% grid on;
% hold on;

figure;

colors = lines(length(T));

for i= 1:length(T)
if (T(i) == 0)
        p_electron = double(E < Ef);
        p_electron(E == Ef) = 0.5;
        p_hole = 1-p_electron;
else
   p_electron = 1./(1+exp((E - Ef)./(k_ev*T(i))));
   p_hole= 1- p_electron;
end
subplot(3,1,1);     
 plot(E, p_electron, 'Color', colors(i,:), 'LineWidth', 2.5, ...
         'DisplayName', ['T = ' num2str(T(i)) ' K']);
     hold on;

subplot(3,1,2);     
     plot(E, p_hole, 'Color', colors(i,:), 'LineWidth', 2.5, ...
         'DisplayName', ['T = ' num2str(T(i)) ' K']);
        hold on;
        
subplot(3,1,3)
plot(E,p_electron,...
    'Color',colors(i,:),...
    'LineWidth',2,...
    'LineStyle','-');

plot(E,p_hole,...
    'Color',colors(i,:),...
    'LineWidth',2,...
    'LineStyle','--');
hold on;
end

subplot(3,1,1)

    xlabel('Energy (ev)');
    ylabel('f(E) - Probability for electron');
    title('Fermi-Dirac Distribution');
    legend('Location', 'southwest');
    grid on;

subplot(3,1,2)

xlabel('Energy (ev)');
        ylabel('1-f(E) - Probability for holes');
        title('Fermi-Dirac Distribution');
        legend('Location', 'southwest');
        grid on;

subplot(3,1,3)

xlabel('Energy (eV)')
ylabel('Probability')
title('Electron and Hole Occupation Probabilities')
grid on
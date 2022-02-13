% Resposta de malha aberta

s = tf('s');
P_pitch = (1.151*s+0.1774)/(s^3+0.739*s^2+0.921*s);
t = [0:0.01:10];
step(0.2*P_pitch,t);
axis([0 10 0 0.8]);
ylabel('ângulo de arfagem (rad)');
title('Step Response - Malha Aberta');
figure(1)
pole(P_pitch)

hold on

figure(2)
pzmap(P_pitch)

grid on
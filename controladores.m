% Tipos de controladores

% Sem controlador
s = tf('s');
P = 1/(s^2 + 10*s + 20);
figure(1)
step(P)


% P
Kp = 300;
C = pid(Kp)
T = feedback(C*P,1)

t = 0:0.01:2;
figure(2)
step(T,t)


% PD
Kp = 300;
Kd = 10;
C = pid(Kp,0,Kd)
T = feedback(C*P,1)

t = 0:0.01:2;
figure(3)
step(T,t)


% PI
Kp = 30;
Ki = 70;
C = pid(Kp,Ki)
T = feedback(C*P,1)

t = 0:0.01:2;
figure(4)
step(T,t)


% PID
Kp = 350;
Ki = 300;
Kd = 50;
C = pid(Kp,Ki,Kd)
T = feedback(C*P,1);

t = 0:0.01:2;
figure(5)
step(T,t)
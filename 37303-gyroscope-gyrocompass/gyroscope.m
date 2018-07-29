function F=gyroscope(t,x,flag,L,R1,R2,R3,g,m,m1,m2,m3)

F=[ x(2);
(2*x(4)*(4*m*x(2)*cos(x(3))*sin(x(3))*L^2 + m3*x(6)*sin(x(3))*R3^2))/(4*m*L^2*cos(x(3))^2 + 2*m1*R1^2 + 6*m2*R2^2 - m3*R3^2*cos(x(3))^2 + m3*R3^2);
x(4);
-(4*m*sin(2*x(3))*L^2*x(2)^2 - 8*g*m*sin(x(3))*L + m3*sin(2*x(3))*R3^2*x(2)^2 + 4*m3*x(6)*sin(x(3))*R3^2*x(2))/(2*(4*m2*R2^2 + m3*R3^2));
x(6);
(x(4)*sin(x(3))*(- 4*m*x(2)*L^2*cos(x(3))^2 + 2*m1*x(2)*R1^2 + 6*m2*x(2)*R2^2 - m3*x(2)*R3^2*cos(x(3))^2 - 2*m3*x(6)*R3^2*cos(x(3)) + m3*x(2)*R3^2))/(4*m*L^2*cos(x(3))^2 + 2*m1*R1^2 + 6*m2*R2^2 - m3*R3^2*cos(x(3))^2 + m3*R3^2)];
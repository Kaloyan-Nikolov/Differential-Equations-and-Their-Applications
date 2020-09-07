function Homework_2

clc
clf

x=-20:2:20;
Y=dsolve('4*D3y-4*D2y+Dy=0', 'y(1)=1', 'Dy(1)=0', 'D2y(1)=0', 'x')

y=ones(1, length(x));

hold on
grid on
axis([-20 20 0 2])

plot(x,y,'b')

xlabel('x')
ylabel('y(x)')

end
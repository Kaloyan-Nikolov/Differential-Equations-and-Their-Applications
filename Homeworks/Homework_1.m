function Homework_1
 
    function z=ff(x,y)
        z=-2*y/x+1/(x^3*(x-2));
    end
 
clc
clf    
 
grid on
hold on
 
x0=-3;
y0=1;
[X,Y]=ode45(@ff,[x0,-0.2],y0);
plot(X,Y,'b')
 
xlabel('x')
ylabel('y(x)')
 
end

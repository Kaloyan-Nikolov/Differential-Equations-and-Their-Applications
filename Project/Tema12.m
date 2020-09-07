function Tema12

    function z=ff(t,y)
        % for point (1;0)
        z=[-2*y(1)+2; -y(2)];
        % for point (0;0)
        %z=[y(1); -y(2)];
        % for point (-1;0)
        %z=[-2*y(1)-2; -y(2)];
    end

tmax=5;
clf;
clc;

hold on;
grid on;
daspect([1 1 1])

% we determine the step
x=-3:0.5:3;
y=-3:0.5:3;

[X,Y]=meshgrid(x,y);

% we draw the equilibrium point
plot(1, 0, 'k*')
%plot(0, 0, 'k*')
%plot(-1, 0, 'k*')

% we draw the phase portrait
for i=1:length(x)
       for j=1:length(y)
            [T,Z]=ode45(@ff, [0, tmax], [X(i,j), Y(i,j)]);
            [T1,Z1]=ode45(@ff, [0, -tmax], [X(i,j), Y(i,j)]);

            plot(Z(:,1), Z(:,2), Z1(:, 1), Z1(:, 2))
            axis([-4, 4, -4, 4])           
       end
end

% tangent vectors:
% for point (1;0)
DX=-2*X+2;
DY=-Y;
% for point (0;0)
%DX=X;
%DY=-Y;
% for point (-1;0)
%DX=-2*X - 2;
%DY=-Y;

% we draw the non-normalized tangent vectors
%quiver(X, Y, DX, DY, 1.5, 'k');

% we will normalize the tangent vectors
D=sqrt(DX.^2+DY.^2);
% we draw the normalized tangent vectors
quiver(X,Y,DX./D,DY./D,0.5,'k')
end

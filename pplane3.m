pplane2(50)
pplane2(50/2)
pplane2(50/3)
pplane2(50/4)

function pplane2(ts)
    Ts = linspace(-4,4,ts);
    [x1,x2] = meshgrid(Ts,Ts);
    dx1= x1 + x1.*x2;
    dx2= -x2 + x2.^2 + x1.*x2 + x1.^3;
    xdot1 = dx1./(sqrt((dx1).^2 + (dx2).^2));
    xdot2 = dx2./(sqrt((dx1).^2 + (dx2).^2));
    figure
    quiver(x1,x2,xdot1,xdot2)
    % quiver(x1,x2,dx1,dx2)
    axis([-4 4 -4 4])
    grid on
end






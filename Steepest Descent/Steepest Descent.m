clear 
 
[x,y] = meshgrid(-4:0.3:4,-4:0.3:4); z=(x.^2+x*y+y.^2);
 
plot3(x,y,z),colorbar,title('plot3'),xlabel('x'),ylabel('y'),zlabel('z'),figure;

surf(x,y,z),colorbar,title('surf'),xlabel('x'),ylabel('y'),zlabel('z'),figure;

contour(x,y,z,15),title('contur1'),xlabel('x'),ylabel('y'),zlabel('z'),figure;

contour(x,y,z,'ShowText','on'),title('contur2'),xlabel('x'),ylabel('y'),zlabel('z')




% Using steepest descent to find the minumum of the given function

clear x;clear y;
learning_rate = 0.02;x=[];y=[];x(1)=0.2;y(1)=0.2;
for i = 2:10000000000000
    x(i) = x(i-1)-learning_rate*(2*x(i-1)+y(i-1));
    y(i) = y(i-1)-learning_rate*(2*y(i-1)+x(i-1));
    if x(i-1)-x(i)<0.0000003 && y(i-1)-y(i)<0.0000003
        break
    end
end








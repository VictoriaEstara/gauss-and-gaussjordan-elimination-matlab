A=[1 3 1;2 1 2;1 -2 -1]
b=[10;10;-6]

R=[A b]

R(2,:)=R(2,:)-(R(2,1))*R(1,:)
R(3,:)=R(3,:)-(R(3,1))*R(1,:)
R(2,:)=R(2,:)*-(1/5)
R(3,:)=R(3,:)-(R(3,2))*R(2,:)
R(3,:)=R(3,:)*-(1/2)

R(1,:)=R(1,:)-(R(1,3))*R(3,:)
R(1,:)=R(1,:)-(R(1,2))*R(2,:)

x=R(1,1)*R(1,4)
y=R(2,2)*R(2,4)
z=R(3,3)*R(3,4)
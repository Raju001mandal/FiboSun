program projectile_motion
implicit none

integer::i,n
real::x,y,r,theta,thetarad,alpha
real,parameter::pi=acos(-1.0),xor=0.0,yor=0.0,c=1.0

print*,"give the value of number of floret n"
read*,n

print*,"give the value of theta in deg to generate different pattern(like 137.5 for golden ratio angle,else 137.3,137.6)"
read*,alpha


open(1,file="sun.dat")

do i=0,n

r=c*sqrt(real(i))
theta=i*alpha
thetarad=180.0*theta/pi

x=xor+r*cos(thetarad)
y=yor+r*sin(thetarad)

write(1,*)x,y,r,theta,thetarad

end do

end program

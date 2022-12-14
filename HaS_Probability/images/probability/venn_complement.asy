size(0,150);
  
pen colour1=gray+opacity(0.5);
  
real r=0.75;
  
pair z1=(0,0);
  
path c1=circle(z1,r);
path space=(-2,-1)--(2,-1)--(2,1)--(-2,1)--cycle;
  
filldraw(c1^^reverse(space), colour1,black);
  
  
draw(c1);
label("$A$",z1);
label("$\Omega\setminus A$",(-1.5,0));
label("$\Omega$",(-2,1),dir(-45));

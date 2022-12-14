size(0,150);
  
pen colour1=gray+opacity(0.5);
  
real r=0.75;
  
pair z1=(-1,0);
pair z2=(1,0);
  
path c1=circle(z1,r);
path c2=circle(z2,r);
path space=(-2,-1)--(2,-1)--(2,1)--(-2,1)--cycle;
  
fill(c1,colour1);
fill(c2,colour1);
  
draw(c1);
draw(c2);
draw(space);
  
label("$A$",z1-(0,0.5));
label("$B$",z2-(0,0.5));
label("$\Omega$",(-2,1),dir(-45));

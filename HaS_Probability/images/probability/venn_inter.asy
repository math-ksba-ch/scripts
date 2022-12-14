size(0,150);
  
pen colour1=gray(0.3)+opacity(0.5);
  
real r=0.75;
  
pair z1=(-0.5,0);
pair z2=(0.5,0);
  
path c1=circle(z1,r);
path c2=circle(z2,r);
path space=(-2,-1)--(2,-1)--(2,1)--(-2,1)--cycle;
  
  
draw(c1);
fill(c1,colour1);
draw(c2);
fill(c2,colour1);
draw(space);
  
label("$A$",z1-(0,0.5));
label("$B$",z2-(0,0.5));
label("$A\cap B$",0.5*(z1+z2));
label("$\Omega$",(-2,1),dir(-45));
picture inter;
fill(inter,c1,colour1);
clip(inter,c2);
add(inter);

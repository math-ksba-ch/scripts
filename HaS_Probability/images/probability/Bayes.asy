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
  
label("$F$",z1-(0,0.5));
label("$E$",z2-(0,0.5));
label("$F\cap E$",0.5*(z1+z2));
label("$F\cap \bar{E}$",z1-(0.5,0));
label("$\Omega$",(-2,1),dir(-45));
label("$\bar{E}$",(2,1)-(0.5,0.5),dir(-45));
picture inter;
fill(inter,c1,colour1);
clip(inter,c2);
add(inter);

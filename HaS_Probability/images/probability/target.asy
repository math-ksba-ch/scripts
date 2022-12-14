size(0,150);
  
path c1=circle(0,1);
path c2=circle(0,2);
path c3=circle(0,3);
path c4=circle(0,4);
path c5=circle(0,5);
  
fill(c1,yellow);
fill(c2^^reverse(c1),red);
fill(c3^^reverse(c2),blue);
fill(c4^^reverse(c3),black);
fill(c5^^reverse(c4),white);
  
draw(c1); draw(c2); draw(c3); draw(c4); draw(c5);
dot((0,0));

size(8cm);
path u = scale(2)*unitcircle;
pair a = point(u,0.4);draw((0,0)--a);
pair b = point(u,-0.4);draw((0,0)--b);
draw(scale(0.2)*subpath(u,0.4,-0.4));
label("$\alpha$",(0.1,0),E);
label("verdoppeln",(1,0),E);
label("halbieren",(-1,0),W);
draw(u);

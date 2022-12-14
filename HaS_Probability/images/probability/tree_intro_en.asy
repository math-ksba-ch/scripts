string Xfirst="first throw";
string Xsecond="second throw";
size(0,150);
pen bold = linewidth(2pt);
real h=2;
real v=2;
pair space = (0,-0.7);
pair T=(0,0);
pair L=(-h,-v);
pair R=(h,-v);
pair LL=(-1.5*h,-2*v);
pair LR=(-0.5*h,-2*v);
pair RL=(0.5*h,-2*v);
pair RR=(1.5*h,-2*v);

path l= T--L;
path r= T--R;
path ll= shift(space)*(L--LL);
path lr= shift(space)*(L--LR);
path rl= shift(space)*(R--RL);
path rr= shift(space)*(R--RR);
draw(l);
draw(r,bold);
draw(ll);
draw(lr);
draw(rl);
draw(rr,bold);

label("$\{1,2,3,4,5\}$",L,dir(-90));
label("$\{1,2,3,4,5\}$",shift(space)*LL,dir(-90));
label("$\{1,2,3,4,5\}$",shift(space)*RL,dir(-90));
label("$\{6\}$",R,dir(-90));
label("$\{6\}$",shift(space)*LR,dir(-90));
label("$\{6\}$",shift(space)*RR,dir(-90));

label("$\frac56$",midpoint(l),dir(135));
label("$\frac16$",midpoint(r),dir(45));
label("$\frac56$",midpoint(ll),dir(135));
label("$\frac16$",midpoint(lr),dir(45));
label("$\frac56$",midpoint(rl),dir(135));
label("$\frac16$",midpoint(rr),dir(45));

label(Xfirst, (2.5h,-v/2));
label(Xsecond, (2.5h,-3*v/2));

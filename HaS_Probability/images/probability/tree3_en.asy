string Xblack="B";
string Xwhite="W";
size(0,150);
bool nodeprobs=false;    //compute probabilities at node
int whites=3;
int blacks=5;
int whites_to_draw=2; 
int blacks_to_draw=1;
real hscale=3;
real vscale=2;
int depht=3;
pair space=(0,0.5);
pen boldpen=linewidth(1pt)+red;
int whites_drawn=0;
int blacks_drawn=0;

void split(pair in, real hscale, int level, int whites, int blacks, pair prob){
  if(level<depht){
    pair L=(in.x-hscale,in.y-vscale-space.x);
    if(nodeprobs){
      label("$\scriptstyle " +Xwhite+ "$"+"$\scriptstyle\frac{"+string(whites*prob.x)+"}{"+string((whites+blacks)*prob.y)+"}$",L-space);}
    else {
      label("$\scriptstyle "+Xwhite+ "$",L-space);
    }
    pair R=(in.x+hscale,in.y-vscale-space.x);
    if(nodeprobs){
      label("$\scriptstyle "+ Xblack + "$"+"$\scriptstyle\frac{"+string(blacks*prob.x)+"}{"+string((whites+blacks)*prob.y)+"}$",R-space);}
    else {
      label("$\scriptstyle " + Xblack + "$",R-space);
    }
    ++level;

    ++whites_drawn;
    path l=(in-space)--L;if((whites_drawn<=whites_to_draw) && (blacks_drawn <= blacks_to_draw)) {draw(l,boldpen);} else {draw(l);} 
    label("$\frac{"+string(whites)+"}{"+string(whites+blacks)+"}$",midpoint(l), dir(135));
    split(L-space,hscale/2,level, whites-1,blacks,(prob.x*whites,prob.y*(whites+blacks)));
    --whites_drawn;

    ++blacks_drawn;
    path r=(in-space)--R;if((whites_drawn<=whites_to_draw) && (blacks_drawn <= blacks_to_draw)) {draw(r,boldpen);} else {draw(r);} 
    label("$\frac{"+string(blacks)+"}{"+string(whites+blacks)+"}$",midpoint(r), dir(45));
    split(R-space,hscale/2,level, whites, blacks-1,(prob.x*blacks,prob.y*(whites+blacks)));
    --blacks_drawn;
  }
}

split((0,0),hscale,0,whites,blacks,(1,1));

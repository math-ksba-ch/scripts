size(0,150);


pen boldpen=linewidth(1pt)+red;

string[][] nodes={{""},{"inf.", "n. inf. "},{"$+$", "$-$","$+$", "$-$"}};
string[][] probs={{""},{"$x$", "$1-x$"},{"0.98", "0.02","0.03", "0.97"}};
pen[][] pens={{currentpen},{currentpen,currentpen},{currentpen, currentpen,currentpen,currentpen}};

int whites_to_draw=2; 
int blacks_to_draw=1;
real hscale=3;
real vscale=2;
int depht=2;
pair space=(0,0.5);


void split(pair in, real hscale, int level, int[] pos){
  if(level<depht){
    pair L=(in.x-hscale,in.y-vscale-space.x);
    label(nodes[pos[0]+1][2*pos[1]],L-space);
    pair R=(in.x+hscale,in.y-vscale-space.x);
    label(nodes[pos[0]+1][2*pos[1]+1],R-space);
    ++level;

    path l=(in-space)--L;draw(l,pens[pos[0]+1][2*pos[1]]);
    label(probs[pos[0]+1][2*pos[1]],midpoint(l),dir(135));
    split(L-space,hscale/2,level,new int[] {pos[0]+1,2*pos[1]}); 

    path r=(in-space)--R;draw(r,pens[pos[0]+1][2*pos[1]+1]);
    label(probs[pos[0]+1][2*pos[1]+1],midpoint(r),dir(45));
    split(R-space,hscale/2,level,new int[] {pos[0]+1,2*pos[1]+1}); 
  }
}

split((0,0),hscale,0,new int[] {0,0});

size(0,150);


pen boldpen=linewidth(2pt);

string[][] nodes={{""},{"HIV+", "HIV-"},{"Test +", "Test -","Test +", "Test -"}};
string[][] probs={{""},{"\textbf{0.001}", "0.999"},{"\textbf{0.998}", "0.002","0.003", "\textbf{0.997}"}};
pen[][] pens={{currentpen},{boldpen,boldpen},{boldpen, currentpen,boldpen,currentpen}};

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

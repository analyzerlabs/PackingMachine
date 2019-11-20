class button{
    color cbutton;
    int posx,posy;
    int size;
    int dx=w/20;
    int dy=h/20;
    button(int x, int y, int s,color c){
        cbutton = c;
        posx = x;
        posy = y;
        size = s;
        init();
    }
    
    void init(){
      fill(cbutton);
      stroke(cbutton);
      rect(posx, posy, size*dx/100,size*dy/100, 10);
    }
    int[] getParams(){
        int[] p = {posx,posy,dx,dy,size};
        return(p);
    }
}


void mousePressed() {
  if (overbutton(b1.getParams())) {
    i = 0;
  } 
}

boolean overbutton(int[] p) {
  int posx=0,posy=1,dx=2,dy=3,size=4;
  if (mouseX > p[posx] && mouseX < p[posx]+ p[dx]*p[size]/100 && mouseY > p[posy] && mouseY < p[posy]+ p[dy]*p[size]/100  ) {
    return true;
  } else {
    return false;
  }
}

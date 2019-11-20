class box{
    color cbox;
    int posx,posy;
    int size;
    int dx=w/20;
    box(int x, int y, int s,color c){
        cbox = c;
        posx = x;
        posy = y;
        size = s;
        init();
    }
    
    void init(){
        stroke(cbox);
        fill(cbox);
        rect(posx,posy,1.0*size/100*w/4,1.0*size/100*h/4);
    }
}

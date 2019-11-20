class figura{
    color cfig;
    int posx,posy;
    int size;
    int dx=w/20;
    String tipo = "cuadrado";
    figura(String t,int x, int y, int s,color c){
        cfig = c;
        posx = x;
        posy = y;
        size = s;
        tipo = t;
        init();
    }
    
    void init(){
        stroke(black);
        fill(cfig);
        if(tipo=="cuadrado"){
            rect(posx,posy,1.0*size/100*w/8,1.0*size/100*h/8);
        }
        if(tipo=="triangulo"){
            triangle(posx,posy,posx+1.0*size/100*w/8,posy,posx,posy+1.0*size/100*h/8);
        }
    }
}

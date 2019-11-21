class knob {
    float R  ;
    float r  ;
    color C = color(0,0,0);
    int S = 1;
    int posx,posy;
    knob(int x, int y, int size,color col){
        C = col;
        S = size;
        posx = x;
        posy = y;
        R = 1.0*S/100*(w+h)/20;
        r = 1.0*S/100*(w+h)/100;
    }
    void init(){
        stroke(lineButton);
        fill(lineButton);
        arc(posx, posy, 2*R+5, 2*R+5, 0, 2*PI, PIE);
        fill(fondoPrincipal);
        stroke(fondoPrincipal);
        arc(posx, posy, 2*R-5, 2*R-5, 0, 2*PI, PIE); 
        stroke(letraSecundaria);
        fill(letraSecundaria);
        textSize(smallLetters);
        textAlign(CENTER, CENTER);
        text("REMAINING", posx, posy+2*smallLetters);
    }
    
    void move(int value){
        init();
        float aux=93; 
        for (float i=0; i<value*2*PI/100; i=i+(PI/360)) {
          ellipse(posx-R*cos(-(i+PI/2)), posy+R*sin(-(i+PI/2)), r, r);
          aux=aux+0.4;
          color C2 = C + color(0,int(aux/3),0); 
          fill(C2);
          stroke(C2);
        }
        stroke(white);
        fill(white);
        textAlign(CENTER, CENTER);
        textSize(bigLetters);
        text(str(value)+"%", posx, posy-smallLetters);
    }
    void set(int value, int max) {
    
    }
}

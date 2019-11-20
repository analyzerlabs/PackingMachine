int h=480,w=800;
knob data1;
button b1;
box p1,p2;
figura f1;
void setup() {
     size(800, 480);
     w=800;
     h=480;
     int Dx = w/80;
     int Dy = h/80;
     frameRate(60);
     background(fondoPrincipal);
     bigLetters = int(h+w)/60;
     smallLetters = int(h+w)/100;
     init = millis();
     b1 = new button(w/2,3*h/4,100,blue);
     int p1_size = 150;
     int a1 = w/20+Dx;
     int b1 = h/20+Dy;
     int a2 = a1+Dx+w/4*p1_size/100;
     int b2 = h/20+Dy;
     int a3 = a2+w/16*p1_size/100;
     int b3 = b2+h/16*p1_size/100;
     p1 = new box(a1,b1,p1_size,fondoBox);
     p2 = new box(a2,b2,p1_size,fondoBox);
     data1 = new knob(w/20+Dx+w/8*p1_size/100,h/20+Dy+h/8*p1_size/100,100,blue); 
     f1 = new figura("triangulo",a3,b3,100,verdeBrillante);
     //loadImages();
}

int init,i=0;
void draw() { 
    if(millis()-init>=1){
       menu();
       home(w/10,4*(h/6),1);
       init = millis();
       data1.move(i);
       if(i!=100)i++;
   }
}

PImage triangulo,icon,cuadrado;
void loadImages(){
    triangulo = loadImage("triangulo.jpg");
    icon = loadImage("icon.png");
    image(triangulo, 0, 0);
  // Displays the image at point (0, height/2) at half of its size
    image(triangulo, 0, h/2, triangulo.width/2, triangulo.height/2);
}

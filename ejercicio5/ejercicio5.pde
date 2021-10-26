String[] palabras = {"Con", "estas", "palabras", "que", "vienen",
"y", "van","finalizamos", "el", "curso", "de", "Processing", "", "Hasta pronto"};
PFont fuente;
int contador, s, xmax, xmin, pos;
float x, y, giro, centro;

void setup(){
  size(400, 400);
  frameRate(50);
  fuente = loadFont("SansSerif-48.vlw");
  x = 1;
  y = 200;
  s = 1;
  xmin = 0;
  giro = -15;
}

void draw(){
  background(110, 100, 100);
  fill(255);
  textFont(fuente, 50);
  giro += 5;
  
  if(pos<=12){
    text(palabras[pos], x, y); //<>//
    xmax = 400 - int(textWidth(palabras[pos])); //<>//
  
    if(x>=xmax || x <= xmin){ //<>//
      s=s*-1; //<>//
      pos++; //<>//
      if (pos%2 != 0) //<>//
         x = 400 - int(textWidth(palabras[pos]));   //<>//
    } //<>//
    if(s==1){ //<>//
      x=x+5; //<>//
    } else{ //<>//
      x=x-5; //<>//
    } //<>//
  } else{ //<>//
   centro = textWidth(palabras[pos])/2; //<>//
   pushMatrix(); //<>//
   translate(200, 200); //<>//
   rotate(radians(giro)); //<>//
   text(palabras[pos], -centro, 0); //<>//
   /*fill(0, 255,0); //<>//
   rect(-100, -100, xgiro, ygiro);*/ //<>//
   popMatrix(); //<>//
  } //<>//
} //<>//

void mousePressed(){ //<>//
  pos = 0; //<>//
  x = 1;
  y = 200;
  s = 1;
  xmin = 0;
} //<>//

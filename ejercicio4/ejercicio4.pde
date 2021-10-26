int contador;
PFont fuente;
color colorCuad;
float diam, posXTex, posYTex, distancia, coX, coY;

void setup(){
  size(400, 400);
  smooth();
  fuente = loadFont("SansSerif-140.vlw");
  contador = 0;
  diam = 40;
  posXTex= width/2;
  posYTex= 160;
  colorCuad = color(0);
  distancia = 200;
  coX=40;
  coY=60;
}

void draw(){
  background(255);
  noStroke();
  
  fill(colorCuad);
  rect(170, 280, 60, 60);
  
  fill(0);
  textFont(fuente);
  textSize(distancia);
  text(contador, posXTex, posYTex);
  
  fill(200, 0, 0);
  ellipse(coX, coY, diam, diam);
  
  if(mouseX > 170 && mouseX < 230 && mouseY > 280 && mouseY < 340){
    colorCuad = color(0, 200, 0);
    diam = map(mouseX, 170, 230, 40, 100);
  } else {
    colorCuad = color(0);
  }
  
  if(mousePressed && mouseX > 170 && mouseX < 230 && mouseY > 280 && mouseY < 340){
    colorCuad = color(0, 0, 255);
    noStroke();
    fill(255);
    ellipse(200, 310, 40, 40);
    coX+=6;
  }
  
  if(coX > 400){
    coX = 0;
    coY+=40;
  } else if(coY > 400){
    coX= 0;
    coY = 0;
  }
  
  stroke(255, 255, 0);
  line(coX, coY, 200, 310);
}

void mousePressed(){
  if(mouseX > 170 && mouseX < 230 && mouseY > 280 && mouseY < 340){
    contador++;
  }
}

void mouseReleased(){
  if(mouseX > 170 && mouseX < 230 && mouseY > 280 && mouseY < 340){
    distancia = dist(coX, coY, 200, 310);
    posXTex = random(80, 200);
    posYTex = random(80, 200);
  }
}

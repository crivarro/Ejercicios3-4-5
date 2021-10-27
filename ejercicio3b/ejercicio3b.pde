float posH, tam, i, numCir, pruebaColor;
color blanco, azul, c;

void setup(){
  size(400,400);
  smooth();
  blanco= color(255);
  azul = color(0, 0, 255);
  pruebaColor = 0;
}

void draw(){
  background(255);
  fill(255);
  stroke(0);
  numCir = posH/25;
  
  if(mouseX > 300 && mouseX < 350 && mouseY > 320 && mouseY < 370){
    posH = map(mouseX, 300, 350, -25, 380);
    tam = map(mouseY, 320, 370, -190, 0);
    float gradRect = map(mouseY, 320, 370, 0, 1);
    
    for(i=0;i<numCir;i++){
      pruebaColor=i*25;
      fill(255, 0, 200, pruebaColor);
      ellipse(i*25, 190, 20, 20);
    }
    noStroke();
    c = lerpColor(azul, blanco, gradRect);
    fill(c);
    rect(posH, 190 - tam, 20, tam*2);
  }
  stroke(0);
  noFill();
  rect(300,320,50,50);
}

float posH, tam;

void setup(){
  size(400,400);
  smooth();
}

void draw(){
  background(255);
  
  if(mouseX > 20 && mouseX < 70 && mouseY > 330 && mouseY < 380){
    posH = map(mouseX, 20, 70, -25, 380);
    tam = map(mouseY, 330, 380, -190, 0);
    fill(0);
    noStroke();
    rect(posH - 20, 190 - tam, 20, tam*2);
    rect(0, 180, posH, 20);
  }
  
  fill(255);
  stroke(1);
  rect(20,330,50,50);
}

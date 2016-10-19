PImage[] planet = new PImage[8];

void setup(){
  size(1000,1000);
  for (int i = 0; i < 8; i++){
    planet[i] = loadImage("planet" + i + ".png");
  }
  imageMode(CENTER);
}

void draw(){
  fill(0);
  rect(0,0,1000,1000);
  for (int i = 0; i < 8; i++){
    pushMatrix();
    translate(width/2,height/2);
    rotate(i + radians(frameCount + 0.5));
    pushMatrix();
    translate(50 + i *100, height/2);
    image(planet[i], 0, 0, 50, 50);
    popMatrix();
    popMatrix();
  }
}
PImage img;

void setup() {
  size(800, 400);
  img = loadImage("camara.jpg");
}

void draw() {
  background(220);

  image(img, 0, 0, 400, 400);


  drawBackground(400, 0);
  drawCamera(400, 0);
}

void drawBackground(float offsetX, float offsetY) {

  fill(50, 200, 50);
  rect(offsetX, offsetY + 300, 400, 100);

  stroke(0);
  strokeWeight(2);
  for (int i = 0; i < 400; i += 40) {
    line(offsetX + i, offsetY + 300, offsetX + i + 40, offsetY + 400);
  }
  noStroke();

  fill(255);
  rect(offsetX + 50, offsetY + 220, 300, 60, 10);

  fill(255, 0, 0);
  ellipse(offsetX + 60, offsetY + 250, 6, 6);
  fill(0, 255, 0);
  ellipse(offsetX + 75, offsetY + 250, 6, 6);
  fill(0, 0, 255);
  ellipse(offsetX + 90, offsetY + 250, 6, 6);


  fill(30);
  rect(offsetX, offsetY, 400, 60);
}

void drawCamera(float offsetX, float offsetY) {
  
  fill(30);
  rect(offsetX + 100, offsetY + 100, 200, 180, 5);

  fill(20);
  rect(offsetX + 85, offsetY + 110, 30, 160, 12);

  fill(150);
  ellipse(offsetX + 200, offsetY + 190, 90, 90);
  fill(0);
  ellipse(offsetX + 200,offsetY + 190, 70 , 70);

  fill(20, 100, 150);
  rect(offsetX + 185, offsetY + 175, 30, 30);

  fill(60);
  ellipse(offsetX + 165, offsetY + 160, 5, 5);
  ellipse(offsetX + 235, offsetY + 160, 5, 5);
  ellipse(offsetX + 165, offsetY + 220, 5, 5);
  ellipse(offsetX + 235, offsetY + 220, 5, 5);

  fill(50);
  ellipse(offsetX + 120, offsetY + 95, 20, 10);

  fill(255);
  textSize(16);
  text("SONY", offsetX + 145, offsetY + 125);

  textSize(20);
  text("α", offsetX + 260, offsetY + 125);
}

PImage a;
float i = 0.5;

void setup( ) {
  size(500, 500);
  a = loadImage("rose.png");
  background(255);
}

void draw( ) {
  translate(width/2, height/2);
  scale(i);
  rotate(map(mouseX, 0, width, 0, TWO_PI));
  imageMode(CENTER); //이미지 기준점의 위치를 가운데로 정렬
  image(a, 0, 0);
}

void keyPressed() {
  if (key == 'a') {
    i+=0.01;
  }
  if (key == 'b') {
    i-=0.01;
  }
  if (key == 's') {
    saveFrame("####.jpg");
  }
}

SheepPen SP= new SheepPen();
PImage person;
void setup() {
  size(1100, 720);
  SP.loadData();
  person = loadImage("person-icon-red-4.png");
}

void draw() {
  textSize(22);
  text("[Press A to progres by 1]", 800, 20);
  text("[Press S to progres by 10]", 800, 44);
  text("[Press D to progres by 100]", 800, 68);
}
void keyPressed() {
  background(126);
  if (key=='a') {
    SP.addIndex(1);
  }
  if (key=='s') {
    SP.addIndex(10);
  }
  if (key=='d') {
    SP.addIndex(100);
  }
  SP.tegnNext();
}

int ellipColor;


void setup() {
  size(1200, 900);
  background(255);
  frameRate(20);

  ellipColor = color(random(255), random(255), random(255));
}

void draw() {

  if (mousePressed) {
    stroke(ellipColor, random(100));
    fill(ellipColor, random(100));
    ellipse(mouseX, mouseY, random(400),random(400));
  }
}

void keyPressed() {
  if (key == 'c') { // change color
    ellipColor = color(random(255), random(255), random(255));
  } else if (key == 'e') { // erase
    background(255);
  } else if (key == 's') { // save
    save ( str(year()) +month() +day() + hour() +minute() +second() + ".png");
    println("saved");
  }
}

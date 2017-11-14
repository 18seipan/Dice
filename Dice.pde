//Andy Seiple
//With Help of classmates
//DiceProject

void setup() {
  size(500, 500);
  noLoop();
}
void draw() {
  background(255, 255, 255);
  int sum = 0;
  for (int j = 1; j <= 5; j++) { //Creates the Array
    for (int i = 1; i <= 5; i++) { //Creates the Array Prt. 2
      Die bob = new Die(i * 80, j * 80);
      bob.show();
      bob.roll();
      sum = sum + bob.numDots;
    }
  }
}
void mousePressed() {
  redraw(); //draws the array again
  fill(255, 255, 255);
}
class Die {  
  int myX;
  int myY;
  int numDots;
  Die(int x, int y) { //Constucter
    roll();
    myX = x;
    myY = y;
  }
  void roll() {
    numDots = (int)(Math.random() * 7); //Random value for each die
  }
  void show()
  {
    stroke(10);

    rect(myX, myY, 80, 80, 5);

    if (numDots == 1) { //If statements decide what to show for each die
      fill(255, 255, 255);
      ellipse(myX + 20, myY + 20, 15, 15);
    }
    if (numDots == 2) {
      fill(255, 255, 255);
      ellipse(myX + 20, myY + 20, 15, 15);
      ellipse(myX + 60, myY + 20, 15, 15);
    }
    if (numDots == 3) {
      fill(255, 255, 255);
      ellipse(myX + 20, myY + 20, 15, 15);
      ellipse(myX + 60, myY + 20, 15, 15);
      ellipse(myX + 20, myY + 40, 15, 15);
    }

    if (numDots == 4) {
      fill(255, 255, 255);
      ellipse(myX + 20, myY + 20, 15, 15);
      ellipse(myX + 60, myY + 20, 15, 15);
      ellipse(myX + 20, myY + 40, 15, 15);
      ellipse(myX + 60, myY + 40, 15, 15);
    } 

    if (numDots == 5) {
      fill(255, 255, 255);
      ellipse(myX + 20, myY + 20, 15, 15);
      ellipse(myX + 60, myY + 20, 15, 15);
      ellipse(myX + 20, myY + 40, 15, 15);
      ellipse(myX + 60, myY + 40, 15, 15);
      ellipse(myX + 20, myY + 60, 15, 15);
    }

    if (numDots == 6) {
      fill(255, 255, 255);
      ellipse(myX + 20, myY + 20, 15, 15);
      ellipse(myX + 60, myY + 20, 15, 15);
      ellipse(myX + 20, myY + 40, 15, 15);
      ellipse(myX + 60, myY + 40, 15, 15);
      ellipse(myX + 20, myY + 60, 15, 15);
      ellipse(myX + 60, myY + 60, 15, 15);
    }
  }
}

// Simon Sakata | 25 Sept 2025 | Calculator
Button[] buttons = new Button [22];
float left,right,sum;

void setup() {
  size(210, 250);
  //row one
  buttons[0] = new Button(25, 65, 30, 30, "=", #3682DE, #7FA8D8);
  buttons[1] = new Button(65, 65, 30, 30, "+", #3682DE, #7FA8D8);
  buttons[2] = new Button(105, 65, 30, 30, "-", #3682DE, #7FA8D8);
  buttons[3] = new Button(145, 65, 30, 30, "x", #3682DE, #7FA8D8);
  buttons[4] = new Button(185, 65, 30, 30, "÷", #3682DE, #7FA8D8);
  //row two
  buttons[5] = new Button(25, 125, 30, 70, "AC", 220, 255);
  buttons[6] = new Button(65, 105, 30, 30, "1", #0C9B17, #56C15E);
  buttons[7] = new Button(105, 105, 30, 30, "2", #0C9B17, #56C15E);
  buttons[8] = new Button(145, 105, 30, 30, "3", #0C9B17, #56C15E);
  buttons[9] = new Button(185, 105, 30, 30, "", #E32020, #E34E4E);
  //row three
  buttons[10] = new Button(65, 145, 30, 30, "4", #0C9B17, #56C15E);
  buttons[11] = new Button(105, 145, 30, 30, "5", #0C9B17, #56C15E);
  buttons[12] = new Button(145, 145, 30, 30, "6", #0C9B17, #56C15E);
  buttons[13] = new Button(185, 145, 30, 30, "", #E32020, #E34E4E);
  //row four
  buttons[14] = new Button(25, 185, 30, 30, "", #E32020, #E34E4E);
  buttons[15] = new Button(65, 185, 30, 30, "7", #0C9B17, #56C15E);
  buttons[16] = new Button(105, 185, 30, 30, "8", #0C9B17, #56C15E);
  buttons[17] = new Button(145, 185, 30, 30, "9", #0C9B17, #56C15E);
  buttons[18] = new Button(185, 185, 30, 30, "", #E32020, #E34E4E);
  //row five
  buttons[19] = new Button(25, 225, 30, 30, ".", #3682DE, #7FA8D8);
  buttons[20] = new Button(105, 225, 110, 30, "0", #0C9B17, #56C15E);
  buttons[21] = new Button(185, 225, 30, 30, "±", #3682DE, #7FA8D8);
}

void draw() {
  background(255);
  for (int i = 0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void mousePressed() {
}

void updateDisplay() {
  rectMode(CORNER);
  fill(0);
  rect(0,0,210,40);
  fill(255);
  textSize(30);
  text("0.0",20,25);  
}
void performCalculation() {
}

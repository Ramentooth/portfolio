// Simon Sakata | 25 Sept 2025 | Calculator
Button[] buttons = new Button [12];
Button[] numButtons = new Button[10];
float l, r, result;
String dVal; //display value
String op;
boolean left;

void setup() {
  size(210, 250);
  l = 0.0;
  r = 0.0;
  result = 0.0;
  dVal = "0.0";
  op = " ";
  left = true;
  //row one
  buttons[0] = new Button(25, 65, 30, 30, "=", #3682DE, #7FA8D8);
  buttons[1] = new Button(65, 65, 30, 30, "+", #3682DE, #7FA8D8);
  buttons[2] = new Button(105, 65, 30, 30, "-", #3682DE, #7FA8D8);
  buttons[3] = new Button(145, 65, 30, 30, "x", #3682DE, #7FA8D8);
  buttons[4] = new Button(185, 65, 30, 30, "÷", #3682DE, #7FA8D8);
  //row two
  buttons[5] = new Button(25, 125, 30, 70, "AC", 220, 255);
  numButtons[1] = new Button(65, 105, 30, 30, "1", #0C9B17, #56C15E);
  numButtons[2] = new Button(105, 105, 30, 30, "2", #0C9B17, #56C15E);
  numButtons[3] = new Button(145, 105, 30, 30, "3", #0C9B17, #56C15E);
  buttons[6] = new Button(185, 105, 30, 30, "^", #E32020, #E34E4E);
  //row three
  numButtons[4] = new Button(65, 145, 30, 30, "4", #0C9B17, #56C15E);
  numButtons[5] = new Button(105, 145, 30, 30, "5", #0C9B17, #56C15E);
  numButtons[6] = new Button(145, 145, 30, 30, "6", #0C9B17, #56C15E);
  buttons[7] = new Button(185, 145, 30, 30, "√", #E32020, #E34E4E);
  //row four
  buttons[8] = new Button(25, 185, 30, 30, "del", #E32020, #E34E4E);
  numButtons[7] = new Button(65, 185, 30, 30, "7", #0C9B17, #56C15E);
  numButtons[8] = new Button(105, 185, 30, 30, "8", #0C9B17, #56C15E);
  numButtons[9] = new Button(145, 185, 30, 30, "9", #0C9B17, #56C15E);
  buttons[9] = new Button(185, 185, 30, 30, "π", #E32020, #E34E4E);
  //row five
  buttons[10] = new Button(25, 225, 30, 30, ".", #3682DE, #7FA8D8);
  numButtons[0] = new Button(105, 225, 110, 30, "0", #0C9B17, #56C15E);
  buttons[11] = new Button(185, 225, 30, 30, "±", #3682DE, #7FA8D8);
}

void draw() {
  background(255);
  for (int i = 0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  for (int i = 0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void mousePressed() {
  for (int i = 0; i < buttons.length; i++) {
    if (buttons[i].over && buttons[i].val.equals("+")) {
      dVal = "0.0";
      left = false;
      op = "+";
    } else if (buttons[i].over && buttons[i].val.equals("-")) {
      dVal = "0.0";
      left = false;
      op = "-";
    } else if (buttons[i].over && buttons[i].val.equals("x")) {
      dVal = "0.0";
      left = false;
      op = "x";
    } else if (buttons[i].over && buttons[i].val.equals("÷")) {
      dVal = "0.0";
      left = false;
      op = "÷";
    } else if (buttons[i].over && buttons[i].val.equals("^")) {
      dVal = "0.0";
      left = false;
      op = "^";
    } else if (buttons[i].over && buttons[i].val.equals(".")) {
      if (dVal.contains(".") == false){
        dVal += ".";
      }
    } else if (buttons[i].over && buttons[i].val.equals("=")) {
      performCalculation();
      dVal = str(result);
      left = false;
      op = "=";
    } else if (buttons[i].over && buttons[i].val.equals("±")) {
      if (left) {
        l = l * -1;
        dVal = str(l);
      } else {
        r = r * -1;
        dVal = str(l);
      }
    } else if (buttons[i].over && buttons[i].val.equals("π")) {
      if (left) {
        l = PI;
        dVal = str(l);
      } else {
        r = PI;
        dVal = str(l);
      }
    } else if (buttons[i].over && buttons[i].val.equals("√")) {
      if (left == true) {
        l = sqrt(l);
        dVal = str(l);
      } else {
        r = sqrt(r);
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals("del")) {
      if (left == true) {
        dVal = dVal.substring(0,dVal.length() - 1);
        l = float(dVal);
      } else {
        dVal = dVal.substring(0, dVal.length() - 1);
        r = float(dVal);
      }
    } else if (buttons[i].over && buttons[i].val.equals("AC")) {
      l = 0.0;
      r = 0.0;
      result = 0.0;
      dVal = "0.0";
      op = " ";
      left = true;
    }
  }



  for (int i = 0; i<numButtons.length; i++) {
    if (dVal.length()<22) {
    if (buttons[5].over == true) {
      dVal = "0.0";
    }
    if (numButtons[i].over && left == true) {
      if (dVal.equals("0.0")) {
        dVal = numButtons[i].val;
        l = float(dVal);
      } else {
        dVal += numButtons[i].val;
        l = float(dVal);
      }
    } else if (numButtons[i].over && left == false) {
      if (dVal.equals("0.0")) {
        dVal = numButtons[i].val;
        r = float(dVal);
      } else {
        dVal += numButtons[i].val;
        r = float(dVal);
      }
    }
  }
  }
  println("l:" + l);
  println("r:" + r);
  println("result:" + result);
  println("left:" + left);
  println("op:" + op);
}

void updateDisplay() {
  rectMode(CORNER);
  fill(0);
  rect(0, 0, 210, 40);
  fill(255);
  textSize(30);
  textAlign(RIGHT);
  if (dVal.length()<=13) {
    textSize(30);
  } else if (dVal.length()==14) {
    textSize(28);
  } else if (dVal.length()==15) {
    textSize(26);
  } else if (dVal.length()==16) {
    textSize(25);
  } else if (dVal.length()==17) {
    textSize(23);
  } else if (dVal.length()==18) {
    textSize(22);
  } else if (dVal.length()==19) {
    textSize(21);
  } else if (dVal.length()==20) {
    textSize(20);
  } else if (dVal.length()==21) {
    textSize(19);
  } else if (dVal.length()==22) {
    textSize(18);
  }  
  text(dVal, width-10, 40);
}
void performCalculation() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("x")) {
    result = l * r;
  } else if (op.equals("÷")) {
    result = l / r;
  } else if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("^")) {
    result = pow(l, r);
  }
  dVal = str(result);
  l = result;
  left = true;
}

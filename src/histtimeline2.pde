// Simon Sakata | Aug 28 2025 | Computer Timeline

void setup() {
  size(900, 400);
  background(0);
}

void draw() {
  background(#08ABFA);
  drawRef();
  histEvent1(800, 150, "iphone 2007", true);
  histEvent2(712, 250, "Javascript 1991", false);
  histEvent3(600, 150, "Macintosh 1984", true);
  histEvent4(487, 250, "intel 4004 1971", false);
  histEvent5(375, 150, "Atlas 1962", true);
  histEvent6(262, 250, "Gamma 3 1952", false);
  histEvent7(150, 150, "ENIAC 1945", true);
  histEvent8(60, 250, "Turing 1936", false);
}

void drawRef() {
  //Draw Title
  textAlign(CENTER);
  textSize(30);
  fill(#0D5679);
  text("Historic Computer Systems", width/2, 35);
  textSize(20);
  text("By Simon Sakata 3B", width/2, 60);


  //Draw Timeline
  strokeWeight(3);
  line(50, 200, 850, 200);
  strokeWeight(2);
  line(50, 190, 50, 210);
  line(850, 190, 850, 210);
  text("1930", 50, 185);
  text("2010", 850, 185);
}
//NUMBER1
void histEvent1(int x, int y, String title, boolean top) {
  if (top == true) {
    line(x, y, x+20, y+50);
  } else {
    line(x, y, x+20, y-50);
  }
  rectMode(CENTER);
  fill(#2DCB41);
  rect(x, y, 110, 30, 7);
  fill(255);
  text(title, x, y+5);

  if (mouseX>x-75 && mouseX<x+75 && mouseY<y+15 && mouseY>y-15) {
    text("In 2007, Steve Jobs and his team at Apple introduced the first iphone which \n revolutionized the computer industry by introducing the first all in one handheld mobile computer.", width/2, 300);
  }
}
//NUMBER 2
void histEvent2(int x, int y, String title, boolean top) {
  if (top == true) {
    line(x, y, x+20, y+50);
  } else {
    line(x, y, x+20, y-50);
  }
  rectMode(CENTER);
  fill(#2DCB41);
  rect(x, y, 130, 30, 7);
  fill(255);
  text(title, x, y+5);

  if (mouseX>x-65 && mouseX<x+65 && mouseY<y+15 && mouseY>y-15) {
    text("In 1991, James Gosling and his team made the javascript coding language which made \n it so that people could run the same code on any device that had the JVM software installed.", width/2, 300);
  }
}
//NUMBER 3
void histEvent3(int x, int y, String title, boolean top) {
  if (top == true) {
    line(x, y, x+20, y+50);
  } else {
    line(x, y, x+20, y-50);
  }
  rectMode(CENTER);
  fill(#2DCB41);
  rect(x, y, 130, 30, 7);
  fill(255);
  text(title, x, y+5);

  if (mouseX>x-65 && mouseX<x+65 && mouseY<y+15 && mouseY>y-15) {
    text("In 1984, Apple invented the Macintosh which pioneered the way for a more intuitive GUI \n (graphical user interface) that could be easily used by the public.", width/2, 300);
  }
}
//NUMBER 4
void histEvent4(int x, int y, String title, boolean top) {
  if (top == true) {
    line(x, y, x+20, y+50);
  } else {
    line(x, y, x+20, y-50);
  }
  rectMode(CENTER);
  fill(#2DCB41);
  rect(x, y, 130, 30, 7);
  fill(255);
  text(title, x, y+5);

  if (mouseX>x-65 && mouseX<x+65 && mouseY<y+15 && mouseY>y-15) {
    text("In 1971, Intel developed the Intel 4004 as one of the first commercially available microprocessors.", width/2, 300);
  }
}
//NUMBER 5
void histEvent5(int x, int y, String title, boolean top) {
  if (top == true) {
    line(x, y, x+20, y+50);
  } else {
    line(x, y, x+20, y-50);
  }
  rectMode(CENTER);
  fill(#2DCB41);
  rect(x, y, 90, 30, 7);
  fill(255);
  text(title, x, y+5);

  if (mouseX>x-45 && mouseX<x+45 && mouseY<y+15 && mouseY>y-15) {
    text("In 1962, the universities of Manchester, Ferranti, and Plessey developed \n the Atlas which was one of the worlds first supercomputers.", width/2, 300);
  }
}
//NUMBER 6
void histEvent6(int x, int y, String title, boolean top) {
  if (top == true) {
    line(x, y, x+20, y+50);
  } else {
    line(x, y, x+20, y-50);
  }
  rectMode(CENTER);
  fill(#2DCB41);
  rect(x, y, 130, 30, 7);
  fill(255);
  text(title, x, y+5);

  if (mouseX>x-65 && mouseX<x+65 && mouseY<y+15 && mouseY>y-15) {
    text("In 1952, Compagnie des Machines Bull developed the Gamma 3 \n which was the first computer to sell over a thousand units.", width/2, 300);
  }
}
//NUMBER 7
void histEvent7(int x, int y, String title, boolean top) {
  if (top == true) {
    line(x, y, x+20, y+50);
  } else {
    line(x, y, x+20, y-50);
  }
  rectMode(CENTER);
  fill(#2DCB41);
  rect(x, y, 100, 30, 7);
  fill(255);
  text(title, x, y+5);

  if (mouseX>x-50 && mouseX<x+50 && mouseY<y+15 && mouseY>y-15) {
    text("In 1945, John Mouchly and J. Presper Eckert made the ENIAC \n (Electronic Numerical Integrator and Computer) which was the first electronic reprogrammable computer.", width/2, 300);
  }
}
//NUMBER 8
void histEvent8(int x, int y, String title, boolean top) {
  if (top == true) {
    line(x, y, x+20, y+50);
  } else {
    line(x, y, x+20, y-50);
  }
  rectMode(CENTER);
  fill(#2DCB41);
  rect(x, y, 100, 30, 7);
  fill(255);
  text(title, x, y+5);

  if (mouseX>x-50 && mouseX<x+50 && mouseY<y+15 && mouseY>y-15) {
    text("In 1936, Alan Turing came up with the theoretical Turing machine \n which if made could compute almost anything.", width/2, 300);
  }
}

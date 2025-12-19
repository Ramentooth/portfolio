// Simon Sakata | 9 sept 2025 | Graphics Grade Assignment

void setup() {
  size(400,100);
  background(#AB61A0);
}

void draw() {
  background(#AA034D);
  line(0,50,400,50);
  ellipse(mouseX,50,5,5);
  text(mouseX,mouseX,45);
  textAlign(CENTER);
  text("Grade: ",width/2,75);

  float grade = random(4.001);
  println(grade);

  if (grade >= 3.51) {
    println("Assign letter grade A");
  } else if (grade >= 3.0) {
    println("Assign letter grade A-");
  } else if (grade >= 2.84) {
    println("Assign letter grade B=");
  } else if (grade >= 2.67) {
    println("Assign letter grade B");
  } else if (grade >= 2.50) {
    println("Assign letter grade B-");
  } else if (grade >= 2.34) {
    println("Assign letter grade C+");
  } else if (grade >= 2.17) {
    println("Assign letter grade C");
  } else if (grade >= 2.00) {
    println("Assign letter grade C-");
  } else if (grade >= 1.66) {
    println("Assign letter grade D+");
  } else if (grade >= 1.33) {
    println("Assign letter grade D");
  } else if (grade >= 1.00) {
    println("Assign letter grade D-");
  } else {
    println("Assign letter grade F");
  }
}

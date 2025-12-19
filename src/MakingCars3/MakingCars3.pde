// Simon Sakata | 18 Sept 2025 | Making Cars
Car c1, c2;
Car[] cars = new Car[10];

void setup() {
  size(600, 600);
  c1 = new Car(color(random(255), random(255), random(255)));
  c2 = new Car(color(#F2A81D));
  for (int i = 0; i<cars.length; i += 1) {
    cars[i] = new Car(color(random(255), random(255), random(255)));
  }
}

void draw() {
  background(255);
  //c1.display();
  //c1.move();
  //c2.display();
  //c2.move();
  for (int i = 0; i<cars.length; i += 1) {
    cars[i].display();
    cars[i].move();
  }
}

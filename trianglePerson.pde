class trianglePerson{
  
float angle = 0; // Początkowy kąt obrotu

void drawPerson() {

  lights();
  
  translate(width/2, height/2); // Przesunięcie do środka ekranu
  
  rotateY(angle); // Obrót całego obiektu wokół osi Y
  angle += 0.01; // Zwiększenie kąta obrotu dla płynnego ruchu
  
  // Obrót całego rysunku o 90 stopni wokół osi Y
  rotateY(-PI/2);
  drawHuman();
}

void drawHuman() {
  // Głowa
  fill(255, 200, 200);
  translate(0, -200, 0); // Przesunięcie głowy w górę
    noStroke();
    sphere(35);
    stroke(0);

  // Tułów
  fill(100, 150, 255);
  translate(0, 110, 0); // Przesunięcie tułowia w dół
  box(50, 150, 50);

  // Ręce
  pushMatrix();
  translate(-30, -20, 0);
  fill(255, 200, 200);
  box(20, 100, 30);
  popMatrix();

  pushMatrix();
  translate(30, -20, 0);
  fill(255, 200, 200);
  box(20, 100, 30);
  popMatrix();

  // Nogi
  pushMatrix();
  translate(-20, 150, 0);
  fill(255, 200, 200);
  box(15, 150, 30);
  popMatrix();

  pushMatrix();
  translate(20, 150, 0);
  fill(255, 200, 200);
  box(15, 150, 30);
  popMatrix();
}



}

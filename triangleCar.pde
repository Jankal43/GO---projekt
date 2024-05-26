class triangleCar {

float angle = 0; // Początkowy kąt obrotu


void drawCar() {
  
  translate(width/2, height/2); // Przesunięcie do środka ekranu
  
  rotateY(angle); // Obrót całego obiektu wokół osi Y
  angle += 0.01; // Zwiększenie kąta obrotu dla płynnego ruchu
  
  // Obrót całego rysunku o 90 stopni wokół osi Y
  rotateX(-PI/2);
  
  // Rysowanie karoserii
  fill(200, 0, 0); 
  box(100, 100, 70); // Pierwszy prostopadłościan (niebieski)

  // Drugi prostopadłościan 
  fill(200, 0, 0); 
  translate(0, 0, 60); // Przesunięcie w dół, aby prostopadłościan był na wysokości poprzedniego
  box(200, 100, 50); // Drugi prostopadłościan (czerwony)
  

  
  // Rysowanie kół
  pushMatrix();
  translate(-60, 50, 25); // Przesunięcie lewego przedniego koła
  rotateX(PI/2); // Obrót koła wokół osi X
  drawWheel(20, 15, 10); // Lewe przednie koło
  popMatrix();
  
  pushMatrix();
  translate(60, 50, 25); // Przesunięcie prawego przedniego koła
  rotateX(PI/2); // Obrót koła wokół osi X
  drawWheel(20, 15, 10); // Prawe przednie koło
  popMatrix();
  
  pushMatrix();
  translate(-60, -50, 25); // Przesunięcie lewego tylne koła
  rotateX(PI/2); // Obrót koła wokół osi X
  drawWheel(20, 15, 10); // Lewe tylne koło
  popMatrix();
  
  pushMatrix();
  translate(60, -50, 25); // Przesunięcie prawego tylne koła
  rotateX(PI/2); // Obrót koła wokół osi X
  drawWheel(20, 15, 10); // Prawe tylne koło
  popMatrix();
  
}

void drawWheel(float radius, float thickness, int segments) {
  float angleIncrement = TWO_PI / segments; // Wartość kąta między segmentami
  float[] px = new float[segments+1]; // Tablica przechowująca współrzędne x
  float[] py = new float[segments+1]; // Tablica przechowująca współrzędne y
  
  beginShape(TRIANGLE_STRIP); // Rozpoczęcie rysowania wielokąta
  
  for (int i = 0; i <= segments; i++) {
    float angle = i * angleIncrement;
    px[i] = cos(angle) * radius;
    py[i] = sin(angle) * radius;
  }
  
  fill(200); // Ustawienie koloru na czarny
  
  for (int i = 0; i < segments; i++) {
    vertex(px[i], py[i], thickness / 2);
    vertex(0, 0, thickness / 2);
    vertex(px[i+1], py[i+1], thickness / 2);
    vertex(px[i], py[i], -thickness / 2);
    vertex(0, 0, -thickness / 2);
    vertex(px[i+1], py[i+1], -thickness / 2);
  }
  
  endShape();
}





}

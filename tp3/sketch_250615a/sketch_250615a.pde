PImage img; // Imagen cargada pero no visible
color colorCuadrado = color(200, 0, 100);
float[] posicionesX = new float[10];
float[] posicionesY = new float[10];
boolean modoColor = false;

void setup() {
  size(800, 400);
  img = loadImage("imagen.jpg"); // Requisito: imagen cargada aunque no se muestre
  inicializar();
}

void draw() {
  background(255);

  // Cuadrados animados
  mostrarCuadrados(220, 10); // función que NO retorna

  // Texto
  fill(0);
  text("Presiona 'r' para reiniciar. Clic para cambiar color.", 210, 20);
}

// Función que NO retorna un valor
void mostrarCuadrados(float offsetX, int cantidad) {
  for (int i = 0; i < cantidad; i++) {
    for (int j = 0; j < cantidad; j++) {
      float x = offsetX + i * 50;
      float y = 50 + j * 30;
      float d = dist(mouseX, mouseY, x, y);
      float tam = map(d, 0, width, 40, 5);
      fill(modoColor ? random(255) : colorCuadrado);
      rect(x, y, tam, tam); // Ahora dibuja cuadrados
    }
  }
}

// Función que RETORNA un valor
int valorAleatorio(int min, int max) {
  return int(random(min, max));
}

void mousePressed() {
  modoColor = !modoColor;
  colorCuadrado = color(valorAleatorio(0, 255), valorAleatorio(0, 255), valorAleatorio(0, 255));
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    inicializar(); // Reinicia las variables
  }
}

void inicializar() {
  for (int i = 0; i < posicionesX.length; i++) {
    posicionesX[i] = random(220, width);
    posicionesY[i] = random(height);
  }
  modoColor = false;
  colorCuadrado = color(200, 0, 100);
}

import g4p_controls.*;
PImage bg;
PImage tubo1, tubo2, tubo3; 
// Globals
float r1;
float h1 = 1.0, h2 = 3.0; 
float a1, a2, a3; 
float v1, v2, v3; 
float q1, q2, q3; 
float p1, p2, p3;

float rho = 1000;  
float g = 9.81;
float patm = 101325;

float currentHeight = 0;
float currentPressure =0;



void setup(){

  size(1280,720);
  createGUI();
  bg = loadImage("bg.png");
  cargarImagenes();
}

void cargarImagenes() {
  tubo1 = loadImage("tubo1.png");
  tubo2 = loadImage("tubo2.png");
  tubo3 = loadImage("tubo3.png");
}


void draw(){
  background(bg);
  updateVariables();
  calculateFlowsAndPressures();
  printResults();
  ;
  updateResults();
    a1 = Area.getValueF()*10000;
    if (currentHeight == 1) {
    h1 = Altura.getValueF()*10;
  } else if (currentHeight == 2) {
    h2 = Altura.getValueF()*30;
  }
  
  float tuboHorizontalX = 60;
  //float tuboHorizontalY = 490;
  float tuboHorizontalY = h1*10;
  float tuboHorizontalAncho = 200;
  rect(tuboHorizontalX, tuboHorizontalY, tuboHorizontalAncho, a1*2);

  float tuboVerticalAncho = 80;
  float tuboVerticalX = tuboHorizontalX + tuboHorizontalAncho - tuboVerticalAncho;
  float tuboVerticalAlto = h2;  
  float tuboVerticalY = tuboHorizontalY - tuboVerticalAlto;  
  rect(tuboVerticalX, tuboVerticalY, tuboVerticalAncho, tuboVerticalAlto);

  float segundoTuboHorizontalX =   tuboVerticalX ; 
  float segundoTuboHorizontalY = tuboVerticalY - 20;  
  float segundoTuboHorizontalAncho = tuboHorizontalAncho;
  rect(segundoTuboHorizontalX, segundoTuboHorizontalY, segundoTuboHorizontalAncho, 40);
  
  float cuartoTuboHorizontalX = segundoTuboHorizontalX + segundoTuboHorizontalAncho;
  float cuartoTuboHorizontalY = segundoTuboHorizontalY+10;
  float cuartoTuboHorizontalAncho = segundoTuboHorizontalAncho / 2; 
  rect(cuartoTuboHorizontalX, cuartoTuboHorizontalY, cuartoTuboHorizontalAncho, 20);

}

void updateVariables() {
  a1 = Area.getValueF();

  v1 = Velocidad.getValueF();  
  
  p1 = Presion.getValueF();  
  if (currentHeight == 1) {
    h1 = Altura.getValueF();
  } else if (currentHeight == 2) {
    h2 = Altura.getValueF();
  }
  

  
  float r2 = 0.0254;  
  float r3 = 0.00635;  
  a2 = PI * r2 * r2;
  a3 = PI * r3 * r3;
}

void calculateFlowsAndPressures() {
 
  v2 = (a1 * v1) / a2;
  v3 = (a2 * v2) / a3;
  
  p2 = p1 + 0.5 * rho * (v1 * v1 - v2 * v2) + rho * g * (h1 - h2);
  p3 = patm;

}

void updateResults() {
  String results = "h1: " + h1 + " m\n" +
                   "h2: " + h2 + " m\n" +
                   "a1: " + a1 + " m^2\n" +
                   "a2: " + a2 + " m^2\n" +
                   "a3: " + a3 + " m^2\n" +
                   "v1: " + v1 + " m/s\n" +
                   "v2: " + v2 + " m/s\n" +
                   "v3: " + v3 + " m/s\n" +
                   "p1: " + p1 + " Pa\n" +
                   "p2: " + p2 + " Pa\n" +
                   "p3: " + p3 + " Pa";
  resultsArea.setText(results);
}

void printResults() {
  println("h1: " + h1 + " m");
  println("h2: " + h2 + " m");
  println("a1: " + a1 + " m^2");
  println("a2: " + a2 + " m^2");
  println("a3: " + a3 + " m^2");
  println("v1: " + v1 + " m/s");
  println("v2: " + v2 + " m/s");
  println("v3: " + v3 + " m/s");
  println("p1: " + p1 + " Pa");
  println("p2: " + p2 + " Pa");
  println("p3: " + p3 + " Pa");

}

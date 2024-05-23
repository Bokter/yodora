import g4p_controls.*;
PImage bg;
// Globals
float r1;
float h1, h2; 
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
  
   
}

void draw(){
  background(bg);
  updateVariables();
  calculateFlowsAndPressures();
  printResults();
}

void updateVariables() {
  a1 = Area.getValueF();

  v1 = Velocidad.getValueF();  
  q1 = Flujo.getValueF(); 
  p1 = Presion.getValueF();  
  h1 = currentHeight == 1 ? Altura.getValueF() : h1;;
  h2 = currentHeight == 2 ? Altura.getValueF() : h2;
  
  
  
  
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

/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void changeArea(GCustomSlider source, GEvent event) { //_CODE_:Area:694019:
  println("Area: "+Area.getValueF());
  // a = Area.getValueF() -- > Darle valor de Area a la variable "a"
} //_CODE_:Area:694019:

public void changeVelocity(GCustomSlider source, GEvent event) { //_CODE_:Velocidad:909661:
  println("Velocidad: "+Velocidad.getValueF());
} //_CODE_:Velocidad:909661:

public void changeFlujo(GCustomSlider source, GEvent event) { //_CODE_:Flujo:401471:
 println("Flujo: "+Flujo.getValueF());
} //_CODE_:Flujo:401471:

public void changeHeight(GCustomSlider source, GEvent event) { //_CODE_:Altura:251442:
  println("Altura: "+Altura.getValueF());
} //_CODE_:Altura:251442:

public void changeHeight_1(GButton source, GEvent event) { //_CODE_:Altura_1:886692:
  
  currentHeight = 1;
  print("Altura h1");
  
} //_CODE_:Altura_1:886692:

public void changeHeight_2(GButton source, GEvent event) { //_CODE_:Altura_2:557135:
  
  currentHeight = 2;
  print("Altura h2");
  
} //_CODE_:Altura_2:557135:

public void ChangePressure(GCustomSlider source, GEvent event) { //_CODE_:Presion:925886:
  println("Presión: "+Presion.getValueF());
} //_CODE_:Presion:925886:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  Area = new GCustomSlider(this, 935, 59, 300, 60, "grey_blue");
  Area.setShowValue(true);
  Area.setShowLimits(true);
  Area.setLimits(0.005, 5.0E-4, 0.005);
  Area.setShowTicks(true);
  Area.setNumberFormat(G4P.DECIMAL, 4);
  Area.setOpaque(true);
  Area.addEventHandler(this, "changeArea");
  Velocidad = new GCustomSlider(this, 935, 180, 300, 60, "grey_blue");
  Velocidad.setShowValue(true);
  Velocidad.setShowLimits(true);
  Velocidad.setLimits(1.0, 0.5, 10.0);
  Velocidad.setShowTicks(true);
  Velocidad.setNumberFormat(G4P.DECIMAL, 4);
  Velocidad.setOpaque(true);
  Velocidad.addEventHandler(this, "changeVelocity");
  Flujo = new GCustomSlider(this, 935, 300, 300, 60, "grey_blue");
  Flujo.setShowValue(true);
  Flujo.setShowLimits(true);
  Flujo.setLimits(1.0, 0.0, 5.0);
  Flujo.setShowTicks(true);
  Flujo.setNumberFormat(G4P.DECIMAL, 2);
  Flujo.setOpaque(true);
  Flujo.addEventHandler(this, "changeFlujo");
  Altura = new GCustomSlider(this, 935, 619, 300, 60, "grey_blue");
  Altura.setShowValue(true);
  Altura.setShowLimits(true);
  Altura.setLimits(1.0, 0.5, 10.0);
  Altura.setShowTicks(true);
  Altura.setNumberFormat(G4P.DECIMAL, 4);
  Altura.setOpaque(true);
  Altura.addEventHandler(this, "changeHeight");
  Altura_1 = new GButton(this, 995, 520, 80, 30);
  Altura_1.setText("h1");
  Altura_1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  Altura_1.addEventHandler(this, "changeHeight_1");
  Altura_2 = new GButton(this, 1097, 520, 80, 30);
  Altura_2.setText("h2");
  Altura_2.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  Altura_2.addEventHandler(this, "changeHeight_2");
  Presion = new GCustomSlider(this, 934, 420, 300, 60, "grey_blue");
  Presion.setShowValue(true);
  Presion.setShowLimits(true);
  Presion.setLimits(200000.0, 200000.0, 1000000.0);
  Presion.setShowTicks(true);
  Presion.setNumberFormat(G4P.DECIMAL, 2);
  Presion.setOpaque(true);
  Presion.addEventHandler(this, "ChangePressure");
}

// Variable declarations 
// autogenerated do not edit
GCustomSlider Area; 
GCustomSlider Velocidad; 
GCustomSlider Flujo; 
GCustomSlider Altura; 
GButton Altura_1; 
GButton Altura_2; 
GCustomSlider Presion; 

import uibooster.*;
import uibooster.components.*;
import uibooster.model.*;
import uibooster.model.formelements.*;
import uibooster.model.options.*;
import uibooster.utils.*;

import garciadelcastillo.dashedlines.*;
import g4p_controls.*;

String [] stampMode = {"ped","pole","transformer","vault","item"};
String [] drawMode = {"black","dash","erase"};
String currentMode;
int lineSize;
int lineColour;
PGraphics not;

void setup(){
  size(700,700);
  background(255);
  createGUI();
  not = createGraphics(50,50);
}

void draw(){
  //background(255);
  if (mousePressed && currentMode == drawMode[0]) {
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
  else if (mousePressed && currentMode == drawMode[1]) {
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
  
 
  notify(str(mouseX) + "," + str(mouseY),not);
  

  
}

void notify(String message,PGraphics not){
  not.beginDraw();
  not.background(255);
  not.fill(0);
  not.textSize(12);
  // text
  not.text(message,width/2,140);
  not.endDraw();
  image(not,330,140);

}

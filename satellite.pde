//author: Chenzhang Ning from SJTU
//Course Project for Creative Coding
//Function: to show how the orbit of satellite changes with three main parameters

float radius;
float inclination; //inclination in degree
float loan; //longitude of ascending node
float c=1; //centrifugation;
boolean firstMousePress = false;
HScrollbar hs1, hs2, hs3, hs4;  // Two scrollbars
float timer = 0;

void setup() {
  fullScreen(P3D);
  textSize(24);
  //create scrollbar
  hs1 = new HScrollbar(0, 20, width/4, 16, 16);
  hs2 = new HScrollbar(0, 60, width/4, 16, 16);
  hs3 = new HScrollbar(0, 100, width/4, 16, 16);
  hs4 = new HScrollbar(0, 140, width/4, 16, 16);
}

void draw() {
  background(0);
  
  //put int the scrollbar
  hs1.update();
  hs2.update();
  hs3.update();
  hs4.update();
  hs1.display();
  text("radius", width/4+10, 25, 0);
  hs2.display();
  text("inclination", width/4+10, 65, 0);
  hs3.display();
  text("longitude of ascending node", width/4+10, 105, 0);
  hs4.display();
  text("centrifugation", width/4+10, 145, 0);
  
  // Get the position of the radius scrollbar
  // and convert to a value to display
  float radius = hs1.getPos()+600;

  // Get the position of the inclination scrollbar
  // and convert to a value to display
  float inclination = (hs2.getPos()-240)/480*2*PI;
  
  // Get the position of the loan scrollbar
  // and convert to a value to display
  float loan = (hs3.getPos()-240)/480*2*PI;
  
  // Get the centrifugation of the loan scrollbar
  // and convert to a value to display
  float c = (abs(hs4.getPos()-120))/360;

  //After it has been used in the sketch, set it back to false
  if (firstMousePress) {
    firstMousePress = false;
  }

  // setup before draw sphere
  stroke(#74F599);
  noFill();
  //lights();
  pushMatrix();
  translate(width/2, height/2);
  //imitate self rotate
  rotateY(timer); 
  rotateX(PI/6);

  // rotate with mouse, uncite the following will make the model rotate with mouse
  //float thetaX = map(mouseY, 0, width, -PI, PI);
  //float thetaY = map(mouseX, 0, width, -PI, PI);
  //rotateX(thetaX);
  //rotateY(thetaY);
  
  //draw the earth
  sphere(300);
  popMatrix();
  
  //text time
  timer = (timer+0.01)%TWO_PI;
  text(year() + "年"  + month()+ "月" + day()+ "日" +hour()+ "时" + 
    minute()+ "分" +second()+ "秒", 50, height-50, 0);
  
  //draw satellite orbit
  translate(width/2, height/2);
  stroke(#74F599);
  rotateX(inclination);
  rotateY(loan);
  ellipseMode(RADIUS);
  //uncite the following will make the model rotate with mouse
  //rotateX(thetaX);
  //rotateY(thetaY);
  ellipse(0, 0, radius/c/2, radius/2);
  
  //print present value
  println("radius");
  println(radius);
  println("inclination");
  println(inclination);
  println("loan");
  println(loan);
  println("centrifugation");
  println(c);
  
}

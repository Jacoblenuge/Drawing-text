//Global Variables
int appWidth, appHeight, fontSize;
String title = "Wahoo!", footer="Drip", mid="Thats some";
float titleX, titleY, titleWidth, titleHeight;
float footerX, footerY, footerWidth, footerHeight;
 float midX,  midY,  midWidth,  midHeight;
PFont titleFont;
color Red=#FF3F0A, resetDefaultInk=#FFFFFF; //Not night mode friendly
//
void setup()
{
  size(1000, 900); //Portrait
  appWidth = width;
  appHeight = height;
  //
  //Display Algorithm
  //Concatenation
  println("\t\t\tWidth="+width, "\tHeight="+height); //key variables
  println("Display Monitor:", "\twidth="+displayWidth, "& height="+displayHeight);
  //
  //Ternary Operator
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
  //String orientation = ( appWidth >= appHeight ) ? ls : p;
  //println (DO, orientation);
  if ( appWidth < appHeight ) { //Declare Landscape Mode
    println(instruct);
  } else {
    //Fit CANVAS into Display Monitor
    if ( appWidth > displayWidth ) appWidth = 0; //CANVAS-width will not fit
    if ( appHeight > displayHeight ) appHeight = 0; //CANVAS-height will not fit
    if ( appWidth != 0 && appHeight != 0 ) {
      print("Display Geoemtry is Good to Go.");
    } else {
      println("STOP, is broken");
    }
  }
  //
  //If ORIENTATION is wrong ... feedback to change it
  //if ( orientation==p ) println(instruct);
  //
  //Population
  titleX = footerX=midX = appWidth * 1/4;
  titleY = appHeight * 1/10;
  midY = appHeight * 5/10; 
  footerY = appHeight * 8/10;
  titleWidth = footerWidth= midWidth = appWidth * 1/2;
  titleHeight = footerHeight= midHeight = appHeight * 1/10;
  
  //
  //Text Setup, single executed code
//Font from OS (Operating System)
String[] fontList = PFont.list(); //To list all fonts available on OS
printArray(fontList); //For listing all possible fonts
titleFont = createFont("Vladimir Script", 66); //Verify the font exists in Processing.JAVA
// Tools / Create Font / Find Font / Do not press "OK", known bug
//
//Layout our text space and typographical features
rect(titleX, titleY, titleWidth, titleHeight);
rect(footerX, footerY, footerWidth, footerHeight);
rect(midX,midY, midWidth, midHeight);
//
}//End setup
//
void draw()
{
 //Text Draw: Repeatedly Executed Code
fill(Red); //Ink
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
fontSize = 60;
textFont(titleFont, fontSize);
text( title, titleX, titleY, titleWidth, titleHeight );
textAlign(CENTER, BOTTOM); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
text( footer, footerX, footerY, footerWidth, footerHeight );
textAlign( CENTER, BASELINE); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
text( mid, midX, midY, midWidth, midHeight);
fill(resetDefaultInk); 
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main Program

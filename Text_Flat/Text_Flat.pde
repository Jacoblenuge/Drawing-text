//Global Variables
int appWidth, appHeight, fontSize;
String title = "Wahoo" , Footer = "Drip!";
float titleX, titleY, titleWidth, titleHeight;
float FooterX, FooterY, FooterWidth, FooterHeight;
PFont titleFont; 
color Red=#FF3F0A, resetDefaultInk=#FFFFFF; //Not night mode friendly
//
size (950, 850); //Portrait
appWidth = width;
appHeight = height;
//Copy the Display Algoirthm Later
//
//Population
titleX =FooterX= appWidth * 1/4;
titleY = appHeight * 1/10;
FooterY = appHeight * 8/10;
titleWidth =FooterWidth= appWidth * 1/2;
titleHeight =FooterHeight= appHeight * 1/10;


//
//Text Setup, single executed code
//Font from OS (Operating System)
String[] fontList = PFont.list(); //To list all fonts available on OS
printArray(fontList); //For listing all possible fonts
titleFont = createFont("Vladimir Script",66); //Verify the font exists in Processing.JAVA
// Tools / Create Font / Find Font / Do not press "OK", known bug
//
//Layout our text space and typographical features
rect(titleX, titleY, titleWidth, titleHeight);
rect(FooterX, FooterY, FooterWidth, FooterHeight);
//
//Text Draw: Repeatedly Executed Code
fill(Red); //Ink
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
fontSize = 60;
textFont(titleFont, fontSize);
text( title, titleX, titleY, titleWidth, titleHeight);
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
text( Footer,  FooterX, FooterY,  FooterWidth,  FooterHeight);
fill(resetDefaultInk);
//
//End Main Program

//Global Variables
int appWidth, appHeight;
String title = "Wahoo";
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
//
size(800, 700);//Portrait
appWidth = width;
appHeight = height;
//Copy the Display Algorithm Later
//
//Population
titleX = appWidth * 1/4 ;
titleY = appHeight * 1/10 ;
titleWidth = appWidth * 1/2 ;
titleHeight = appHeight * 1/10 ;
//
//Text setup, single executed code
//Font from OS (Operating System)
String[] fontList = PFont.list();//To list all fonts available on OS
printArray(fontList);//For listing all posible fonts
titleFont = createFont("Vladimir Script",66);//Verify the font exists in Processing.JAVA
// Tools / Create Font / Find Font / Do not press "OK", known bug
//
//Layout our text space and typographical features
rect(titleX, titleY, titleWidth, titleHeight);
//
//Text Draw: Repeatedly Executed Code
text();

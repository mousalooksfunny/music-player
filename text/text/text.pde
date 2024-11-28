/* Dynamic Text
 - Testing for Aspect Ratio
 - change the text in middle rect()
 */
// Global Variables
int appWidth, appHeight;
float titleX, titleY, titleWidth, titleHeight;
float dfgX, dfgY, dfgWidth, dfgHeight;
float footerX, footerY, footerWidth, footerHeight;
PFont titleFont, footerFont, phraseFont;
color ink, purple=#8E43E5, white=#FFFFFF, resetDefaultInk=white; //Not Night Mode Friendly
int size;
String title = "mouse looks like ", footer="nice guy", phrase="a very ";
//
void setup()
{
  //Display
  size( 500, 700 ); //Portrait CANVAS
  appWidth = width;
  appHeight = height;
  //
  //Text: Single Executed Code
  //Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  titleFont = createFont("Times New Roman Italic", 43); //Verify the font exists in Processing.Java
  footerFont = createFont("Georgia Italic", 43);
  phraseFont = createFont("Tahoma", 43);
  //
  /* Population
   - using 10's
   - Could be 100s or percent
   - Able to use decimals to dial in the values
   */
  titleX = appWidth*1/10;
  titleY = appHeight*1/10;
  titleWidth = appWidth*8/10;
  titleHeight = appHeight*1/10;
  dfgX = titleX; //Best Practice: change on formula
  dfgY = appHeight*4.5/10; //Ratio done last. How is this Centered Vertically?
  dfgWidth = titleWidth; //Best Practice
  dfgHeight = titleHeight; //Best Practice
  footerX = titleX; //Best Practice
  footerY = appHeight*8/10;
  footerWidth = titleWidth; //Best Practice
  footerHeight = titleHeight; //Best Practice
  //DIVs
  rect( titleX, titleY, titleWidth, titleHeight ); //Title Font
  rect( dfgX, dfgY, dfgWidth, dfgHeight ); // Testing Aspect Ratio of Fonts
  rect( footerX, footerY, footerWidth, footerHeight ); //Different Font
} //End setup
//
void draw()
{
  //Drawing Text
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  ink = purple;
  fill(ink);
  size = 47; //Change the number until it fits
  textFont( titleFont, size );
  text( title, titleX, titleY, titleWidth, titleHeight );
  ink = purple;
  fill(ink);
  size = 50; //Change the number until it fits
  textFont( footerFont, size );
  text( footer, footerX, footerY, footerWidth, footerHeight );
  fill(ink);
  size = 47; //Change the number until it fits
  textFont( phraseFont, size );
  text( phrase, dfgX, dfgY, dfgWidth, dfgHeight );
} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
//End MAIN

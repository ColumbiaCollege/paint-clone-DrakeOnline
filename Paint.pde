/*
 * Title:       Paint
 * Description: A self-made paint mimic 
 * Author:      Drake Cummings
 * Date:        September 17th, 2019
 */
 
 // Global Variables
 
 // Brush Color
 int chosenRed   = 105; 
 int chosenGreen = 105;
 int chosenBlue  = 105;
 
 // Brush Buttons
 Button circleBrushButton = new Button(95/2, 40/2, 95, 40, #AEC6CF, #4F7C8C, "Circle", #FFFFFF, true );
 Button squareBrushButton = new Button(95+95/2, 40/2, 95, 40, #AEC6CF, #4F7C8C, "Square", #FFFFFF );
 
 // Size Buttons
 Button sizeDownButton = new Button(95/2, 40+40/2, 95, 40, #AEC6CF, #4F7C8C, "-", #FFFFFF );
 Button sizeUpButton = new Button(95+95/2, 40+40/2, 95, 40, #AEC6CF, #4F7C8C, "+", #FFFFFF );
 
 // Button for current color
 Button currentColor = new Button(95*2+1+95/2, 40/2, 95, 40, color(chosenRed, chosenGreen, chosenBlue), color(chosenRed, chosenGreen, chosenBlue));
 
 // Red Button
 Button decreaseRedButton = new Button(95*4+95/2, 40/2, 95, 40, #AEC6CF, #4F7C8C, "-", #FFFFFF );
 Button redDisplayButton = new Button(95*5+95/2, 40/2, 95, 40, #C23B22, #C23B22 );
 Button increaseRedButton= new Button(95*6+95/2, 40/2, 95, 40, #AEC6CF, #4F7C8C, "+", #FFFFFF );
 
 // Green Button
 Button decreaseGreenButton = new Button(95*8+95/2, 40/2, 95, 40, #AEC6CF, #4F7C8C, "-", #FFFFFF );
 Button greenDisplayButton = new Button(95*9+95/2, 40/2, 95, 40, #77DD77, #77DD77 );
 Button increaseGreenButton= new Button(95*10+95/2, 40/2, 95, 40, #AEC6CF, #4F7C8C, "+", #FFFFFF );
 
 // Blue Button
 Button decreaseBlueButton = new Button(95*12+95/2, 40/2, 95, 40, #AEC6CF, #4F7C8C, "-", #FFFFFF );
 Button blueDisplayButton = new Button(95*13+95/2, 40/2, 95, 40, #779ECB, #779ECB );
 Button increaseBlueButton= new Button(95*14+95/2, 40/2, 95, 40, #AEC6CF, #4F7C8C, "+", #FFFFFF );
 
 // Clear Button
 Button clearScreenButton = new Button(95/2, 1000-40/2, 95, 40, #AEC6CF, #4F7C8C, "Clear", #FFFFFF );
 Button[] buttons = { circleBrushButton, squareBrushButton  };
 
 // Brush
 int brushSize = 8;

 
 
 //_______________________________________Event Listeners_______________________________________
 void setup () {
   frameRate(60);
   size(1500, 1000);
   background(130);
   rectMode(CENTER);
   textAlign(CENTER);
   textSize(16);
   noStroke();
 }
 
 void draw() {
   fill(255);
   
   // Brush types
   circleBrushButton.drawButton();
   squareBrushButton.drawButton();
   
   // Brush sizes
   sizeDownButton.drawButton();
   sizeUpButton.drawButton();
   
   // Display current color
   currentColor.drawButton();
   
   // Red Paint
   decreaseRedButton.drawButton();
   redDisplayButton.drawButton();
   increaseRedButton.drawButton();
   
   // Green Paint
   decreaseGreenButton.drawButton();
   greenDisplayButton.drawButton();
   increaseGreenButton.drawButton();
   
   // Blue Paint
   decreaseBlueButton.drawButton();
   blueDisplayButton.drawButton();
   increaseBlueButton.drawButton();
   
   // Clear Button
   clearScreenButton.drawButton();
 }
 
 void mouseClicked () {
   // Make brush circle shaped
   if ( circleBrushButton.mouseOverButton() )  {
     circleBrushButton.setButtonsToUnclicked(buttons);
     circleBrushButton.clicked = true;
   // Make brush sqaure shaped
   } else if ( squareBrushButton.mouseOverButton() )  {
     squareBrushButton.setButtonsToUnclicked(buttons);
     squareBrushButton.clicked = true;
   // Decrease brush size
   } else if ( sizeDownButton.mouseOverButton() && brushSize >= 4 )  {
     brushSize--;
     circleBrushButton.iconSize = brushSize;
     squareBrushButton.iconSize = brushSize;
   // Increase brush size
   } else if ( sizeUpButton.mouseOverButton() && brushSize <= 28 )  {
     brushSize++;
     circleBrushButton.iconSize = brushSize;
     squareBrushButton.iconSize = brushSize;
     // Red Color
   } else if ( decreaseRedButton.mouseOverButton() ) {
     if ( chosenRed > 0 ) {
       chosenRed-=5;
       currentColor.bMainColor = color(chosenRed, chosenGreen, chosenBlue);
       currentColor.bHoverColor = color(chosenRed, chosenGreen, chosenBlue);
     }
   } else if (increaseRedButton.mouseOverButton() ) {
     if (chosenRed < 255 ) {
       chosenRed+=5;
       currentColor.bMainColor = color(chosenRed, chosenGreen, chosenBlue);
       currentColor.bHoverColor = color(chosenRed, chosenGreen, chosenBlue);
     }
     // Green Color
   } else if ( decreaseGreenButton.mouseOverButton() ) {
     if ( chosenGreen > 0 ) {
       chosenGreen-=5;
       currentColor.bMainColor = color(chosenRed, chosenGreen, chosenBlue);
       currentColor.bHoverColor = color(chosenRed, chosenGreen, chosenBlue);
     }
   } else if ( increaseGreenButton.mouseOverButton() ) {
     if (chosenGreen < 255 ) {
       chosenGreen+=5;
       currentColor.bMainColor = color(chosenRed, chosenGreen, chosenBlue);
       currentColor.bHoverColor = color(chosenRed, chosenGreen, chosenBlue);
     }
     // Blue Color
   } else if ( decreaseBlueButton.mouseOverButton() ) {
     if ( chosenBlue > 0 ) {
       chosenBlue-=5;
       currentColor.bMainColor = color(chosenRed, chosenGreen, chosenBlue);
       currentColor.bHoverColor = color(chosenRed, chosenGreen, chosenBlue);
     }
   } else if ( increaseBlueButton.mouseOverButton() ) {
     if (chosenBlue < 255 ) {
       chosenBlue+=5;
       currentColor.bMainColor = color(chosenRed, chosenGreen, chosenBlue);
       currentColor.bHoverColor = color(chosenRed, chosenGreen, chosenBlue);
     }
   // Clear screen button
   } else if ( clearScreenButton.mouseOverButton() ) {
     background(130);
   }
 }
 
 void mouseDragged () {
   if ( circleBrushButton.mouseOverButton() == false && squareBrushButton.mouseOverButton() == false ) {
     if ( circleBrushButton.clicked ) {
       fill(chosenRed, chosenGreen, chosenBlue);
       ellipse( mouseX, mouseY, brushSize, brushSize ); 
     } else if ( squareBrushButton.clicked ) {
       fill(chosenRed, chosenGreen, chosenBlue);
       rect( mouseX, mouseY, brushSize, brushSize );
     }
   } 
 }

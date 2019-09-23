class Button {
  
  // Button coordinates
  int bXPos;
  int bYPos;
  
  // Button Height and Width
  int bWidth;
  int bHeight;

  // Button colors
  color bMainColor;
  color bHoverColor;
  
  // Button icon
  String icon;
  color  iconColor;
  int    iconSize;
  
  // Button border coordinates
  int topBorderYPosition;
  int bottomBorderYPosition;
  int rightBorderXPosition;
  int leftBorderXPosition;
  
  // Field if button's been clicked
  boolean clicked = false;
  
  /*___________________________________________________START OF CONTSTRUCTOR AND CONSTRCUTOR OVERLOADING___________________________________________________ */
  
  // Original Button constructor
  Button( int _bXPos, int _bYPos, int _bWidth, int _bHeight, color _bMainColor, color _bHoverColor ) {
    // Save the coordinates for the button
    bXPos = _bXPos;
    bYPos = _bYPos;
    
    // Save the width and height
    bWidth  = _bWidth;
    bHeight = _bHeight;
    
    // Save color
    bMainColor  = _bMainColor;
    bHoverColor = _bHoverColor;
    
    // Get the coordinate limits for each button
    topBorderYPosition      = bYPos - bHeight/2;
    bottomBorderYPosition   = bYPos + bHeight/2;
    rightBorderXPosition    = bXPos + bWidth/2;
    leftBorderXPosition     = bXPos - bWidth/2;
  }
  
  // Overloaded Button constructor for optional icon parameter
  Button( int _bXPos, int _bYPos, int _bWidth, int _bHeight, color _bMainColor, color _bHoverColor, String _icon, color _iconColor ) {
    // Save the coordinates for the button
    bXPos = _bXPos;
    bYPos = _bYPos;
    
    // Save the width and height
    bWidth  = _bWidth;
    bHeight = _bHeight;
    
    // Save color
    bMainColor  = _bMainColor;
    bHoverColor = _bHoverColor;
    
    // Set the icon of the button (optional)
    icon = _icon;
    iconColor = _iconColor;
    iconSize = 8;
    
    // Get the coordinate limits for each button
    topBorderYPosition      = bYPos - bHeight/2;
    bottomBorderYPosition   = bYPos + bHeight/2;
    rightBorderXPosition    = bXPos + bWidth/2;
    leftBorderXPosition     = bXPos - bWidth/2;
  }
  
  // Overloaded Button constructor for optional default parameter
  Button( int _bXPos, int _bYPos, int _bWidth, int _bHeight, color _bMainColor, color _bHoverColor, String _icon, color _iconColor, boolean defaultButton ) {
    // Save the coordinates for the button
    bXPos = _bXPos;
    bYPos = _bYPos;
    
    // Save the width and height
    bWidth  = _bWidth;
    bHeight = _bHeight;
    
    // Save color
    bMainColor  = _bMainColor;
    bHoverColor = _bHoverColor;
    
    // Set the icon of the button (optional)
    icon = _icon;
    iconColor = _iconColor;
    iconSize = 8;
    
    // Get the coordinate limits for each button
    topBorderYPosition      = bYPos - bHeight/2;
    bottomBorderYPosition   = bYPos + bHeight/2;
    rightBorderXPosition    = bXPos + bWidth/2;
    leftBorderXPosition     = bXPos - bWidth/2;
    
    // Set default Button
    clicked = defaultButton;
  }
  
  /*___________________________________________________END OF CONTSTRUCTOR AND CONSTRCUTOR OVERLOADING___________________________________________________ */
  
  // Return if the mouse is over the button based on perimeter coordinates
  boolean mouseOverButton() {
    return ( mouseX >= leftBorderXPosition && mouseX <= rightBorderXPosition ) && ( mouseY <= bottomBorderYPosition && mouseY >= topBorderYPosition );
  }
  
  // For readability purposes
  boolean isClicked() {
    return clicked; 
  }
  
  void drawButton() {
    // Check if mouse if over button, if so, set to hover color
    if( mouseOverButton() || isClicked() ) {
      fill( bHoverColor );
    } else {
      fill( bMainColor );
    }
    
    // Set general shap of button
    rect( bXPos, bYPos, bWidth, bHeight );
    
    // Set icon of button
    if( icon == "Circle" ) {
       fill( iconColor );
       ellipse( bXPos, bYPos, iconSize, iconSize );
    } else if ( icon == "Square") {
       fill( iconColor );
       rect( bXPos, bYPos, iconSize, iconSize );
    } else if (icon == "+") {
       fill( iconColor );
       text( icon, bXPos, bYPos+6 );
    } else if (icon == "-") {
       fill( iconColor );
       text( icon, bXPos, bYPos+6 );
    } else if ( icon == "Clear" ) {
       fill( iconColor );
       text( icon, bXPos, bYPos+6 );
    }
  }
  
  // Sets every button in an array's "clicked" variable to false
  void setButtonsToUnclicked ( Button[] buttons ) {
    for( int i = 0; i < buttons.length; i++ ) {
      buttons[i].clicked = false;
    }
  }
  
}

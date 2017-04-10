void loop () {
    updateTime();
    delay(500);
    
    while ( modeButton.isPressed() && !setButton.isPressed() ) {
      displayDate();
    }
    if (  setButton.isPressed() ) {
    bool dateSet = 0;
    while ( setButton.isPressed() ) {
        if ( modeButton.isPressed() ) {
          dateSet = 1;
        }
        delay(100);
        setCounter++;
        if (setCounter > 20) {
          blankDisplay();
          
        }       
    }
    if (setCounter > 20) {
     setTime( dateSet );
        }     

    }
    int setCounter = 0;
}

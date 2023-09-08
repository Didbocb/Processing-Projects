class Timer {
  int startTime = 0;
  boolean running = false; 
  //start timer
  void start() {
    startTime = millis();
    running = true;
  }
  //display timer
  void time() {
    text(nf(sw.hours(), 2)+":"+nf(sw.minutes(), 2)+":"+nf(sw.seconds(), 2), 450, 25);
  }
  //calculate elapsed time in miliseconds
  int getElapsedTime() {
    int elapsed=0;
    if (running) {
      elapsed = (millis() - startTime);  
    }
    return elapsed; 
  }
  //turn miliseconds into seconds
  int seconds() {
    return (getElapsedTime() / 1000) % 60;
  }
  //turn miliseconds into minutes
  int minutes() {
    return (getElapsedTime() / (1000*60)) % 60;
  }
  //turn miliseconds into hours
  int hours() {
    return (getElapsedTime() / (1000*60*60)) % 24;
  }
}

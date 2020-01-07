class Cell {
  int xpos;
  int ypos;
  boolean isAlive;
  
  public Cell(int x, int y, boolean a) {
    this.xpos = x;
    this.ypos = y;
    this.isAlive = a;
  }
  
  public void drawCell() {
    rect(this.xpos, this.ypos, 10, 10);
  }
  
  public void updateCell() {
    if (isAlive) {
      fill(0);
    }
    else {
      fill(255);
    }
    rect(this.xpos, this.ypos, 10, 10);
    
  }
}

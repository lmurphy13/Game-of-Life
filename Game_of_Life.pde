Cell[][] cells = new Cell[50][50];

void setup() {
  frameRate(5);
  size(501,501);
  background(255);
  
  for (int i = 0; i < cells.length; i++) {
    for (int j = 0; j < cells[i].length; j++) {
       cells[i][j] = new Cell(i * 10, j * 10, false);
       cells[i][j].drawCell();
    }
  }
}

void draw() {
  
  for (int i = 0; i < cells.length; i++) {
    for (int j = 0; j < cells[i].length; j++) {
      if (mousePressed) {
        if (mouseX > cells[i][j].xpos && mouseX < cells[i][j].xpos + 10) {
          if (mouseY > cells[i][j].ypos && mouseY <  cells[i][j].ypos + 10) {
            if (cells[i][j].isAlive) {
              cells[i][j].isAlive = false;
            }
            else {
              cells[i][j].isAlive = true;
              System.out.printf("X: %d, Y: %d\n", cells[i][j].xpos, cells[i][j].ypos);
            }
            cells[i][j].updateCell();
          } 
        }
      }
    }
  }
  
  
}

/*
  ___________
 | 0 | 1 | 2 | 
 -------------
 | 3 | X | 4 |
 -------------
 | 5 | 6 | 7 |
  -----------
*/

void checkNeighbors(Cell c) {
  int alive = 0;  // number of alive neighbors
  /* check if cell is on an edge */
  /* left */
  if (c.xpos == 0) {
    /* top left corner */
    if (c.ypos == 0) {
      if (cells[1][0].isAlive) { // 4
        alive++;
      }
      if (cells[0][1].isAlive) { // 6
        alive++;
      }
      if (cells[1][1].isAlive) { // 7
        alive++;
      }
    }
    
    /* bottom left corner */
    if (c.ypos == cells.length - 1) { 
      if (cells[0][cells.length - 1].isAlive) { // 4
        alive++;
      }
      if (cells[0][cells.length - 2].isAlive) { // 1
        alive++;
      }
      if (cells[1][cells.length - 2].isAlive) { // 2
        alive++;
      }
    }
    
    /* otherwise left edge */
    if (cells[0][cells
  }
  
}

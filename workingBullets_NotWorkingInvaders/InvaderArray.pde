
class InvaderArray {
  Invader[][] InvaderGrid;
  int row;
  int col;

int INVADER_WIDTH, INVADER_HEIGHT;
int Invader_yOffset, Invader_xOffset;
Invader invader;

  InvaderArray(int r, int c) {
    row = r;
    col = c;
    InvaderGrid = new Invader[row][col];
    setupGrid();
    
  }

  void setupGrid() {
    INVADER_WIDTH = 50;
    INVADER_HEIGHT = 25;
    Invader_yOffset = 50;
    Invader_xOffset = 20;
    for (int r = 0; r < row; r++) {
      for (int c = 0; c < col; c++) {
        InvaderGrid[r][c] = new Invader((Invader_xOffset*c) + (INVADER_WIDTH * c), (Invader_yOffset * r), INVADER_WIDTH, INVADER_HEIGHT, Invader_xOffset);
      }
    }
  }

  void showGrid() {
    for (int r = 0; r < row; r++) {
      for (int c = 0; c < col; c++) {
        InvaderGrid[r][c].display(); 
      }
    }
  }


void moveGrid(int xBorder){
 for (int r = 0; r < row; r++) {
      for (int c = 0; c < col; c++) {
         int factor = col-c-1;
         InvaderGrid[r][c].move(xBorder - (factor*INVADER_WIDTH) - (factor * Invader_xOffset));
      }
    }
  }
  
  
}

int cols = 6;
int rows = 6;
int num;

int stepx, stepy;

void setup() {
  //speed control
  frameRate(10);
  
  //background setup
  size(600, 600);
  background(50);
  
  //distance of movement for grid squares
  stepx = (width / cols);
  stepy = (height / rows);
}

int col = -1;
int row = 0;

void draw(){
  background(50);
  col++;
  
  //column switch
  if (col >=cols){
    col = 0;
    row++;
  }
  
  //row reset
  if (row >= rows){
    row = 0;
  }
  
  //dice roll to see which colour will be used
  num = int(random(6));
  switch(num){
      //green  
      case 0:
          fill(0,255,0);
          rect(col * stepx, row*stepy, stepx, stepy);
          break;
      
      //red
      case 1:
          fill(255,0,0);
          rect(col * stepx, row*stepy, stepx, stepy);
          break;
      //blue
      case 2:
          fill(0,0,255);
          rect(col * stepx, row*stepy, stepx, stepy);
          break;
      
      //cyan
      case 3:
          fill(0,255,255);
          rect(col * stepx, row*stepy, stepx, stepy);
          break;
      
      //yellow
      case 4:
          fill(255,255,0);
          rect(col * stepx, row*stepy, stepx, stepy);
          break;
      
      //purple
      case 5:
          fill(255,0,255);
          rect(col * stepx, row*stepy, stepx, stepy);
          break;
    }
}

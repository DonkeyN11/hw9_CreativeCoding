int increW;
int increH;
int WCOUNT = 10;
int HCOUNT = 10;
int radius = 30;
int pos_x = 40;
int pos_y = 40;
float theta = 0.52;
float speed = 5;
int[][] pos = new int [10][10];
boolean[][] flag = new boolean [10][10];
boolean[][] solu = new boolean [10][10];
boolean[][] dis = new boolean [10][10];

void settings() {
  size(800, 800);
  for(int i=0;i<=9;++i)
  {
    for(int j=0;j<=9;++j)
    {
      flag[i][j] = false;
    }
  }
}


void setup() {
  background(255);
  generate_maze();
  generate_path();
  generate_distraction();
  smooth();
  ellipseMode(RADIUS);
  //print(pos_y);
  //print(increH);
  }
  

void draw() {
  print(pos_x/80);
  print(' ');
  print(pos_y/80);
  print(' ');
  //check();//pos_x += speed; // Increase the value of x
  fill(100);
  delay(10);
  arc(pos_x, pos_y, radius, radius, theta/2, 6.28-theta/2);
  check();
}

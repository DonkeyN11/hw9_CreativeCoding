void generate_path()
{
  int x = 0;
  int y = 0;
  for(int i=0; i<18; ++i)// let the flag of blocks on path equals to true
  {
    solu[y][x] = true;
    flag[y][x] = true;
    float next = random(-1,1);
    if(x<9 && y<9)
    {
      if(next<0)
        x = x+1;
      if(next>0)
        y = y+1;
    }
    if(x==9 && y<9)
      {flag[y][x] = true;
      solu[y][x] = true;
      y = y+1;}
    if(x<9 && y==9)
      {flag[y][x] = true;
      solu[y][x] = true;
        x = x+1;}
  }
  for(int i=0; i<=9; ++i)
  {
    for(int j=0; j<=9; ++j)
    {
      if(solu[i][j])
       {noStroke();
        drawRect(255, i*increW, j*increH, increW, increH);}
    }
  }
}

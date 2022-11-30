void generate_distraction(){
  int xd = 0;
  int yd = 9;
  for(int i=0; i<18; ++i)// let the flag of blocks on path equals to true
  {
    dis[yd][xd] = true;
    flag[yd][xd] = true;
    float next = random(-1,1);
    if(xd<9 && yd>0)
    {
      if(next<0)
        xd = xd+1;
      if(next>0)
        yd = yd-1;
    }
    if(xd<9 && yd==0)
      {flag[yd][xd] = true;
      dis[yd][xd] = true;
      xd = xd+1;}
    if(xd==9 && yd>0)
      {flag[yd][xd] = true;
      dis[yd][xd] = true;
        yd = yd-1;}
  }
  for(int i=0; i<=9; ++i)
  {
    for(int j=0; j<=9; ++j)
    {
      if(dis[i][j])
       {noStroke();
        drawRect(255, i*increW, j*increH, increW, increH);}
    }
  }
}

void drawRect(int c, int x, int y, int w, int h) {
  fill(c);
  rect(x, y, w, h);
}
void generate_maze()
{
 increW = width/WCOUNT;
  increH = height/HCOUNT;
  for (int x = 0; x  < width; x += increW)
  {
    for (int y = 0; y < height; y += increH)
    {
      drawRect(155, x, y, increW, increH);
      }
    } 
}

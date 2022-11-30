boolean check(){
  int next = int(random(0,4));
  //boolean result = false;
  switch(next){
  case 0:
  if(pos_x/80<9 && flag[pos_y/80][pos_x/80+1])
  return true;
  //result = true;
  pos_x = pos_x+80;
  print("case 0");
  break;
  
  //case 1:
  //if(pos_y/80-1>0 && flag[pos_y/80-1][pos_x/80])
  //return true;
  //result = true;
  //pos_y = pos_y-80;
  //break;
  
  //case 2:
  //if(pos_x/80-1>0 && flag[pos_y/80][pos_x/80-1])
  //return true;
  //result = true;
  //pos_x = pos_x-80;
  //break;
  
  case 3:
  if(pos_y/80<9 && flag[pos_y/80+1][pos_x/80])
  return true;
  //result = true;
  pos_y = pos_y+80;
  print("case 1");
  break;
  }
 if(pos_x/80==9 && pos_y/80==9)
   print("achieve object");
 return false;
}

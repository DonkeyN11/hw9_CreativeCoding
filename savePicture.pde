//save picture
void mouseClicked() {  
    if (mouseButton == RIGHT) {          
    String picName = "PDE_" + year()+ "_" + month()+"_" + day()+"_" +   
      hour()+"_" + minute()+"_" + second();  
    save(picName + ".png");  
    println(" ----> Picture saved.");
  }
} 

color board=#088600 ;
color dices=#BF0000 ;
color diceDots=240 ;
diceCup Cup1 = new diceCup();
void setup() {
  size(930, 570) ;
  rectMode(CENTER) ;
  Cup1.iniCup();
  background(board) ;
}
void draw() {
}



void keyPressed() {
  if (key=='a') {
    Die die=new Die(diceDots, dices) ;
    Cup1.addDie(die) ;
  }
  if (key==ENTER) {
    background(board) ;
    Cup1.shake() ;
    Cup1.draw(100, 100, 50, 10) ;
  }
  if (key=='c') {
    background(board) ;
    Cup1.emptyAllLists() ;
    Cup1.emptyCup() ;
  }
}

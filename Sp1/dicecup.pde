class diceCup {
  ArrayList<Die> diceIndex ;
  ArrayList<Die> list1 ;
  ArrayList<Die> list2 ;
  ArrayList<Die> list3 ;
  ArrayList<Die> list4 ;
  ArrayList<Die> list5 ;
  ArrayList<Die> list6 ;
  int x ;
  int y ;
  int dieSize ;
  int eyeSize ;

  void iniCup() {
    diceIndex=new ArrayList<Die>() ;
    list1=new ArrayList<Die>() ;
    list2=new ArrayList<Die>() ;
    list3=new ArrayList<Die>() ;
    list4=new ArrayList<Die>() ;
    list5=new ArrayList<Die>() ;
    list6=new ArrayList<Die>() ;
  }

  void addDie(Die die) {
    diceIndex.add(die) ;
  }

  void shake() {
    for (int i=0; i<diceIndex.size(); i++) {
      Die die=diceIndex.get(i) ;
      die.roll() ;
      emptyAllLists() ;
    }
    sort() ;
  }
  void clearList(ArrayList<Die> list) {
    for (int i=0; i<list.size(); i++) {
      list.clear() ;
    }
  }

  void emptyAllLists() {
    clearList(list1);
    clearList(list2);
    clearList(list3);
    clearList(list4);
    clearList(list5);
    clearList(list6);
  }
  void emptyCup() {
    clearList(diceIndex) ;
  }

  void sort() {
    for (int i=0; i<diceIndex.size(); i++) {
      if (diceIndex.get(i).eyes==1) {
        list1.add( diceIndex.get(i)) ;
      } else if (diceIndex.get(i).eyes==2) {
        list2.add( diceIndex.get(i)) ;
      } else if (diceIndex.get(i).eyes==3) {
        list3.add( diceIndex.get(i)) ;
      } else if (diceIndex.get(i).eyes==4) {
        list4.add( diceIndex.get(i)) ;
      } else if (diceIndex.get(i).eyes==5) {
        list5.add( diceIndex.get(i)) ;
      } else if (diceIndex.get(i).eyes==6) {
        list6.add( diceIndex.get(i)) ;
      }
    }
  }
  void draw(int x, int y, int dieSize, int eyeSize) {
    this.dieSize=dieSize ;
    this.x=x ;
    this.y=y ;
    this.eyeSize=eyeSize ;
    int yPos=dieSize+dieSize/2 ;
    int rowCounter=0 ;
    for (int i=0; i<list1.size(); i++) {
      list1.get(i).draw(x+i*dieSize*3/2, y+yPos*rowCounter, dieSize, eyeSize);
    }
    if (list1.size()!=0) {
      rowCounter++ ;
    }
    for (int i=0; i<list2.size(); i++) {
      list2.get(i).draw(x+i*dieSize*3/2, int(y+yPos*rowCounter), dieSize, eyeSize);
    }
    if (list2.size()!=0) {
      rowCounter++ ;
    }
    for (int i=0; i<list3.size(); i++) {
      list3.get(i).draw(x+i*dieSize*3/2, int(y+yPos*rowCounter), dieSize, eyeSize);
    }
    if (list3.size()!=0) {
      rowCounter++ ;
    }
    for (int i=0; i<list4.size(); i++) {
      list4.get(i).draw(x+i*dieSize*3/2, int(y+yPos*rowCounter), dieSize, eyeSize);
    }
    if (list4.size()!=0) {
      rowCounter++ ;
    }
    for (int i=0; i<list5.size(); i++) {
      list5.get(i).draw(x+i*dieSize*3/2, int(y+yPos*rowCounter), dieSize, eyeSize);
    }
    if (list5.size()!=0) {
      rowCounter++ ;
    }
    for (int i=0; i<list6.size(); i++) {
      list6.get(i).draw(x+i*dieSize*3/2, int(y+yPos*rowCounter), dieSize, eyeSize);
    }
  }
}

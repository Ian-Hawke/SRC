class SheepPen {
  Table pen;
  ArrayList<Data> Liste = new ArrayList<Data>();
  int index = 0;
  int boxX = 5;  
  int boxY = 5;
  int boxSize = 15;
  void loadData() {
    pen = loadTable("https://raw.githubusercontent.com/nytimes/covid-19-data/master/rolling-averages/us-states.csv", "header");

    int akkum = 0;
    for (TableRow row : pen.rows()) {

      Data A = new Data();


      int d = row.getInt("cases");
      akkum = akkum + d; 
      A.akkum = akkum;
      Liste.add(A);
    }
  }

  void addIndex(int s) {
    index = index+s;
  }

  void tegnNext() {
        Data d = SP.Liste.get(index); 
    println(d.akkum);

int antal=0;
    for (int boxX=30; boxX<=1070; boxX+=16) { // box i x-aksen
      for (int boxY=10; boxY<=700; boxY +=16) { // box i y-aksen
        int boxSize = 10; // størrelsen af kassen
       fill(255); // random farver 
        stroke(0);
     
        antal++;
        if (antal<=d.akkum) {
          //rect(boxX, boxY, boxSize, boxSize); //firkanter
          image(person, boxX, boxY); //personer
          person.resize(boxSize, boxSize);
        }
      }
    }
  }
}

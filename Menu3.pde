class Menu3 extends Load
{
  String age = "No Value";
  
  //border variables
  float x1, x2;
  float y1, y2;
  float border;
  float xrange;
  float yrange;
  float linedist;
  int heightsections;
  int highestpoint;
  int heightinc;
  float heightmargin;
  int tickwidth;
  
  
  
  Menu3()
  {
    border = (width * .1f);
    xrange = (width - (border*2));
    yrange = (height - (border*2));
    linedist = (xrange / 12);
    
    heightsections = 10;
    highestpoint = 100;
    heightinc = (highestpoint/heightsections);
    heightmargin = (yrange/heightsections);
    
    tickwidth = 5;
  }

  void getdata(int ofset, ArrayList<Integer> dataset)
  {
    for(i=0; i<12; i++)
    {
      dataset.add(numbers.get((i*3)+ofset));
    }
    
    if(ofset == 0)
    {
      age = "Children";
    }
    if(ofset == 1)
    {
      age = "Teenagers";
    }
    if(ofset == 2)
    {
      age = "Adults";
    }
  }
  
  void graph(int ofset)
  {
    fill(0, 204, 255);
    stroke(255);
    ArrayList<Integer> dataset = new ArrayList<Integer>();
    getdata(ofset, dataset);
    largest = 0;
    
    for(i=0; i<12; i++)
    {
      if(largest < dataset.get(i))
      {
        largest = dataset.get(i);
      }
    }
    
    for(i=0; i<12; i++)
    {
      float rectheight = map(dataset.get(i), 0, highestpoint, 0, yrange);
      rect(border+(i*linedist), height-border, linedist, -(rectheight));
    }
      
     
  }
  
  
  void border()
  {
    fill(0, 204, 255);
    text(age, width/2, 10);
    stroke(255);
    //width border line
    line(border, height-border, width-border, height-border);
    
    //height border line
    line(border, border, border, height-border);
    
    //data ticks on width border
    for(i = 0;  i < groups.size(); i++) 
    {
      x1 = border + (linedist * i);
      y1 = (height - border);
      x2 = border + (linedist * i);
      y2 = (height - border) + tickwidth;
      line(x1, y1, x2, y2);
      text(months[i],  border + (linedist * i), (height - border) + tickwidth*3);
    }
    
    //data ticks on height border
    for(i = 0; i <= heightsections; i++)
    {
      x1 = border;
      y1 = (height - border) - (heightmargin * i);
      x2 = (border - tickwidth);
      y2 = (height - border) - (heightmargin * i);
      line(x1 , y1, x2, y2);
      text((heightinc*(i)), (x1 - tickwidth*4) , y1);
      
    }
  }
  
  void backbotton()
  {
    fill(0, 204, 255);
    rect(20, 10, 40, 20);
    fill(0);
    text("Back", 40, 20);
  }

}

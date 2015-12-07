//Line graph
class Menu1 extends Load
{
  float lasty, nexty;
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
  
  
  //click variables
  ArrayList<Float> box = new ArrayList<Float>();
  int k;
  int boxon;
  int tickwidth;
  
  //square animation variable
  float sqsize1;
  float sqsize2;
  
  Menu1()
  {
    border = (width * .1f);
    xrange = (width - (border*2));
    yrange = (height - (border*2));
    
    
    heightsections = 10;
    highestpoint = 200;
    heightinc = (highestpoint/heightsections);
    heightmargin = (yrange/heightsections);
    
    
    
    tickwidth = 5;
    k = 0;
    
    
    sqsize1 = 10;
    sqsize2 = 12;
  }

  
  void graph()
  {
    //set default box size
    float size = sqsize1;
    
    fill(0, 204, 255);
    stroke(0, 204, 255); 
    
    lasty = nexty = groups.get(0);
    linedist = xrange/(groups.size()-1);
    
    //start the graph at the margin
    x1 = x2 = border;
    
    for(i=0; i <= (groups.size()); i++ )
    {
      lasty = nexty;
      
      if(i < groups.size())
     { 
        nexty = groups.get(i);
     }
      y1 = map(lasty, 0, highestpoint, border, height-border);
      y2 = map(nexty, 0, highestpoint, border, height-border);
      if(i < groups.size())
      {
        line(x1, y1, x2, y2);
      }
      
      if(mouseX < (x1 + (sqsize1/2))&& mouseX > x1 - (sqsize1/2))
      {
        if(mouseY <( y1 + (sqsize1/2))&& mouseY > y1 - (sqsize1/2))
        {
          //set animated box size
          size = sqsize2;
          
          //x line
          stroke(0, 40, 70);
          line(border, y1, x1, y1);
          
          //y line
          line(x1, y1, x1, height-border);
          
          
          //back to normall
          fill(255, 0, 0);
          stroke(0, 204, 255);
        } 
      }/// end box animation if
      else
      {
        //default box size
        fill(0, 204, 255);
        size = sqsize1;
      }//end box animation else
      
      //squares
      rect(x1 - (size/2), y1 - (size/2), size, size);
      
      //Keeps record of the boxes for click variable
      if(k < 12)
      {
        //keeps track of the box's x value
        box.add(border + (linedist * i) - (size/2));
        k++;
      }
      
      x1 = border + (linedist * i);
      x2 = border + (linedist * (i+1));
    }
    fill(0, 204, 255);
  }
  
  
  //Drawing the border
  void border()
  {
    text("Pool Users Survey", width*.5, 10);
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
  
}

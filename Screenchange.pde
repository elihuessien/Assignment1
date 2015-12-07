class Screenchange
{
  //growth variable
  float j;
  //repetition stop variable
  int k;
  int dir;
  
  Screenchange()
  {
    j=0;
    k=0;
    dir=0;
  }
  
  void animation()
  {
    //menu1-menu2 change
    if(Menu)
    {
      if(k==0)
      {
        if(j <= width*3)
        {
          background(0, 204, 255);
          fill(0); 
          render();
          j+=30;
        }
        else
        {
          j=0;
          k=1;
          dir++;
        }
      }//end repitition check if
    }
    else
    {
      //menu2-menu3 change
      if(Specs)
      {
        if(k==1)
        {
          if(j <= width*3)
          {
            background(0);
            fill(0, 204, 255);
            render();
            j+=30;
          }
          else
          {
            j=0;
            k=0;
            dir++;
          }
        }//end repitition check if
      }
      else
      {
        if(k==0)
        {
          if(j <= width*3)
          {
            background(0, 204, 255);
            fill(0); 
            render();
            j+=30;
          }
          else
          {
            j=0;
            k=1;
            dir++;
          }
        }//end repitition check if
      }//end menu2-menu3 change else
    }//end menu1-menu2 change else
  }//end fuction
  
  
  void render()
  {
    //directional animation changes
    if(dir<4)
    {
      if(dir==0)
      {
        ellipse(0, 0, j, j);
      }
      if(dir==1)
      {
        ellipse(500, 0, -j, j);
      }
      if(dir==2)
      {
        ellipse(500, 500, -j, -j);
      }
      if(dir==3)
      {
        ellipse(0, 500, j, -j);
      }
    }
    else
    {
      dir=0;
    }
  }
}

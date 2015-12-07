class Screenchange
{
<<<<<<< HEAD
  //growth variable
  float j;
  //repetition stop variable
=======
  float j;
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
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
<<<<<<< HEAD
    //menu1-menu2 change
=======
  
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
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
<<<<<<< HEAD
      }//end repitition check if
    }
    else
    {
      //menu2-menu3 change
=======
      }
    }
    else
    {
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
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
<<<<<<< HEAD
        }//end repitition check if
=======
        }
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
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
<<<<<<< HEAD
        }//end repitition check if
      }//end menu2-menu3 change else
    }//end menu1-menu2 change else
  }//end fuction
=======
        }
      }
    }
  }
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
  
  
  void render()
  {
<<<<<<< HEAD
    //directional animation changes
=======
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
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

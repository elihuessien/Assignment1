void setup()
{
  size(500, 500);
  textAlign(CENTER, CENTER);
  
<<<<<<< HEAD
  //seting game objects
=======
  
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
  menu1 = new Menu1();
  menu2 = new Menu2();
  menu3 = new Menu3();
  change = new Screenchange();

}



//click change variable
int i = 0;
int box_no;
int specOfset=0;

//menu change variables
Boolean Menu = true;
Boolean Specs = true;
Boolean Opening = true;

//menu objects
Menu1 menu1;
Menu2 menu2;
Menu3 menu3;
Screenchange change;


void draw()
{
  if(Opening)
  {
    background(0, 204, 255);
    opening();
  }
  else
  {
    if(Menu)
    {
<<<<<<< HEAD
      //displaying first menu
=======
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
      background(0);
      change.animation();
      fill(0, 204, 255);
      menu1.border();
      menu1.graph();
    }
    else
    {
      if(Specs)
      {
<<<<<<< HEAD
        //displaying second menu
=======
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
        background(0, 204, 255);
        change.animation();
        fill(0);
        menu2.pichart(box_no);
        menu2.backbotton();
      }
      else
      {
<<<<<<< HEAD
        //displaying third menu
=======
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
        background(0);
        change.animation();
        fill(0, 204, 255);
        menu3.border();
<<<<<<< HEAD
        menu3.bargraph(specOfset);
=======
        menu3.graph(specOfset);
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
        menu3.backbotton();
      }
    }
  }
}

void mousePressed()
{
<<<<<<< HEAD
  //checking menu change animation finnished
  if(change.j == 0)
  {
    //changing from start page
=======
  if(change.j == 0)
  {
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
    if(Opening)
    {
      Opening =! Opening;
    }
    else
    {
      if(Menu)
      {
<<<<<<< HEAD
        //get the box clicked on
=======
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
        getbox();
      }
      else
      {
<<<<<<< HEAD
        //checking between menu2 and menu3
        if(Specs)
        {
          //menu2 back button
          if(mouseX>20 && mouseX<60 && mouseY>10 && mouseY<30)
          {
            //for menu 1 and 2 toggle
=======
        if(Specs)
        {
          if(mouseX>20 && mouseX<60 && mouseY>10 && mouseY<30)
          {
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
            Menu =! Menu;
          }
          else
          {
<<<<<<< HEAD
            //menu 2 and 3 toggle
=======
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
            Specs =! Specs;
            specOfset = menu2.piClicked();
            println(specOfset);
          }
        }
        else
        {
<<<<<<< HEAD
          //menu3 back button
=======
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
          if(mouseX>20 && mouseX<60 && mouseY>10 && mouseY<30)
          {
            Specs =! Specs;
          }
<<<<<<< HEAD
        }//end inner else 2
      }//end inner else 1
    }//end outer else
  }//end change animation check
}


//Opening menu instructions
=======
        }
      }
    }
  }
}

>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
void opening()
{
  fill(0);
  text("Survey of the number of people using the swimming pool over the year", width/2, height/2 - 10);
  text("Use the mouse to navigate", width/2, height/2 + 10);
  text("Click anywhere", width/2, height/2 + 30);
  
}

<<<<<<< HEAD

//find menu1 box clicked
void getbox()
{
  int boxnum;
  //get number of box clicked
=======
void getbox()
{
  int boxnum;
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
  boxnum = findbox();
  
  if( boxnum < 12)
  {
    float lasty = menu1.groups.get(boxnum);
    
    float y = map(lasty, 0, menu1.highestpoint, menu1.border, height - menu1.border);
    if(mouseY > y - (menu1.sqsize1/2)  && mouseY < y + (menu1.sqsize1/2))
    {
      box_no = boxnum;
      Menu = !Menu;
<<<<<<< HEAD
      
      //check right box recieved
=======
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
      println(box_no);
    }
  }
}



int findbox()
{
  int boxnum = 12;
  
  if(mouseX > menu1.box.get(0)  && mouseX < menu1.box.get(0) + menu1.sqsize1)
  {
    boxnum = 0;
  }
  
  if(mouseX > menu1.box.get(1)  && mouseX < menu1.box.get(1) + menu1.sqsize1)
  {
    boxnum = 1;
  }
  
  if(mouseX > menu1.box.get(2)  && mouseX < menu1.box.get(2) + menu1.sqsize1)
  {
    boxnum = 2;
  }
  
  if(mouseX > menu1.box.get(3)  && mouseX < menu1.box.get(3) + menu1.sqsize1)
  {
    boxnum = 3;
  }
  
  if(mouseX > menu1.box.get(4)  && mouseX < menu1.box.get(4) + menu1.sqsize1)
  {
    boxnum = 4;
  }
  
  if(mouseX >  menu1.box.get(5)  && mouseX < menu1.box.get(5) + menu1.sqsize1)
  {
    boxnum = 5;
  }
  
  if(mouseX > menu1.box.get(6)  && mouseX < menu1.box.get(6) + menu1.sqsize1)
  {
    boxnum = 6;
  }
  
  if(mouseX > menu1.box.get(7)  && mouseX < menu1.box.get(7) + menu1.sqsize1)
  {
    boxnum = 7;
  }
  
  if(mouseX > menu1.box.get(8)  && mouseX < menu1.box.get(8) + menu1.sqsize1)
  {
    boxnum = 8;
  }
  
  if(mouseX > menu1.box.get(9)  && mouseX < menu1.box.get(9) + menu1.sqsize1)
  {
    boxnum = 9;
  }
  
  if(mouseX > menu1.box.get(10)  && mouseX < menu1.box.get(10) + menu1.sqsize1)
  {
    boxnum = 10;
  }
  
  if(mouseX > menu1.box.get(11)  && mouseX < menu1.box.get(11) + menu1.sqsize1)
  {
    boxnum = 11;
  }
  
  return boxnum;
}

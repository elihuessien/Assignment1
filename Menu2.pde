class Menu2 extends Load
{
  float cx, cy;
  int crsize;
  float radius;
  color[] colors=new color[3];
  float sum;
  int data;
  String age;
  int box;
  
  Menu2()
  {
    cx = (width/2);
    cy = (height/2);
    radius = (width/2);
<<<<<<< HEAD
    //initialise random colors
=======
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
    for(i = 0 ; i < 3; i ++)
    {
      colors[i] = color(0, random(0, 255), random(0, 255));
    }
  }
    
  void initialise(int box, ArrayList<Integer> dataset)
  { 
    sum = 0.0f;
<<<<<<< HEAD
    //get dataset based on month ofset
=======
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
    for(i=0; i<3; i++)
    {
      dataset.add(numbers.get((box*3)+i));
    }
    
    for(float f:dataset)
    {
      sum += f;
    }
  }
  void pichart(int box)
  {
    this.box = box;
    ArrayList<Integer> dataset = new ArrayList<Integer>();
    initialise(box, dataset);
    fill(0);
    text(months[box], width*.5, 10);
    
    // Calculate the angle to the mouse
    float toMouseX = mouseX - radius;
    float toMouseY = mouseY - radius;  
    float angle = atan2(toMouseY, toMouseX);
    
<<<<<<< HEAD
    //getting pichart angles
=======
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
    if (angle < 0)
    {
      angle = map(angle, -PI, 0, PI, TWO_PI);
    }
    
    float last = 0;
    
    float cumulative = 0;
    for(i = 0 ; i <  dataset.size(); i ++)
    {
      cumulative += dataset.get(i);
      float current = map(cumulative, 0, sum, 0, TWO_PI);
      stroke(colors[i % 3]);
      fill(colors[i % 3]);
      float r = radius;
      
      if (angle > last && angle < current)
      {
        r = radius * 1.5f;
<<<<<<< HEAD
        //datatype for each slice/arc
=======
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
        data = i % 3;
      }
      
      arc(radius, radius, r, r, last, current);
      last = current;       
    }
    
<<<<<<< HEAD
  //representing data
  stroke(255);
=======
    stroke(255);
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
  if(data == 0)
  {
    age = "Children";
  }
  if(data == 1)
  {
    age = "Teenagers";
  }
  if(data == 2)
  {
    age = "Adults";
  }
  fill(0);
  text(age + ": " + dataset.get(data), width/2, height*.9);
  
  }
  
  
  void backbotton()
  {
    fill(0);
    rect(20, 10, 40, 20);
    fill(0, 204, 240);
    text("Back", 40, 20);
  }
<<<<<<< HEAD


//on click function
=======
  
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
int piClicked()
{
    int j = 0;
    ArrayList<Integer> dataset = new ArrayList<Integer>();
    for(i=0; i<3; i++)
    {
      dataset.add(numbers.get((box*3)+i));
    }
    float radius = (width/2);
    // Calculate the angle to the mouse
    float toMouseX = mouseX - radius;
    float toMouseY = mouseY - radius;  
    float angle = atan2(toMouseY, toMouseX);
    
    if (angle < 0)
    {
      angle = map(angle, -PI, 0, PI, TWO_PI);
    }
    
    float last = 0;
    
    float cumulative = 0;
    for(i = 0 ; i <  dataset.size(); i ++)
    {
      cumulative += dataset.get(i);
      float current = map(cumulative, 0, sum, 0, TWO_PI);
      float r = radius;
      
      if (angle > last && angle < current)
      {
        j = i;
      }
      last = current;       
    }
    return j;
}
}

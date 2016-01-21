class Ball extends GO
{
  int crw = 30;
  
  int gravity = 0;
  int jump = 20;
  int j = 0;
  float theta = 0;
  
  Ball()
  {
    pos.x = 200;
    pos.y = height/2;
    forward.x = 0;
    forward.y = 0;
  }
  
  void update()
  {
    if(j == 1)
    {
      //animating jump with respect to gravity :P
      forward.y = -(jump - (gravity));
      
      //terminal velocity
      if(gravity<30)
      {
        gravity++;
      }
    }
    else
    {
      forward.y = 0;
    }
    
    theta += 0.2;
    pos.add(forward);
  }

  
  void render()
  {
    pushMatrix();
    
    translate(pos.x, pos.y);
    rotate(theta);
    ellipse(0, 0, crw, crw);
    stroke(255, 0, 0);
    line(0, -crw/2, 0, crw/2);
    theta+= 0.02;
    
    rotate(theta);
    stroke(155, 0, 0);
    line(0, -crw/2, 0, crw/2);
    theta+= 0.02;
    
    rotate(theta);
    stroke(55, 0, 0);
    line(0, -crw/2, 0, crw/2);
    
    popMatrix();
  }
}

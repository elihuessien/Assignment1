abstract class GO
{
  PVector pos;
  PVector forward;
  
  GO()
  {
    pos = new PVector(0,0);
    forward = new PVector(0, 0);
  }
  
  abstract void update();
  abstract void render();
  
}

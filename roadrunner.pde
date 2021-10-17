class Runner
{
  PVector position;
  PVector target;
  PVector mouseposition;
  PImage runner;
  Runner(float x, float y)
  {
    position = new PVector(x, y);
    runner = loadImage("runningrunner.png");
    runner.resize(150,150);
    target = new PVector(random(width), random(height));
    
  }
  void update()
  {
    mouseposition = new PVector(mouseX, mouseY);
    if (position.dist(mouseposition) < 50)
    {
      target = position;
    }
    if (position.dist(target) > 10)
    {
       position = position.lerp(target, movementSpeed);
    }
       else if (position.dist(target) < 10)
       {
         target = new PVector(random(width), random(height));
       }
      
  }
  void draw()
  {
    image(runner, position.x, position.y);
  }
  void run()
  {
    update();
    draw();
  }  
}

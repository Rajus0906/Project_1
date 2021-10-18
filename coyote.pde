class Coyote
{
  PVector position;
  PVector target;
  PVector mouseposition;
  PImage coyote;
  Coyote(float x, float y)
  {
    position = new PVector(x, y);
    coyote = loadImage("coyote.png"); //https://static.wikia.nocookie.net/annoyingorangefanon/images/5/56/Wile_E_Coyote.png/revision/latest?cb=20110604192056
    coyote.resize(300,170);
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
    image(coyote, position.x, position.y);
  }
  void run()
  {
    update();
    draw();
  }  
}

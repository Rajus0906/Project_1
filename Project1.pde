Coyote coyote;
Runner runner;

PImage background;
float dist;
PVector position;
PVector target = new PVector(width/2,height/2);
float movementSpeed = 0.1;  

void setup()
{
  background = loadImage("tunes.jpg"); //https://i.pinimg.com/236x/73/3b/ac/733bac36f3f0a24ffa8fbd82cc6e052a--animation-background-road-runner.jpg
  image(background, 0, 0, width, height);
  background.resize(width,height);
  size(1500,800,P2D);
  
  coyote = new Coyote(random(0,1500), random(800));
  runner = new Runner(random(0,1500), random(800)); 
}
void draw() 
{
  background(background);
  coyote.run();
  runner.run();
}

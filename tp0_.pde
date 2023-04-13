PImage pez ;


void setup () {
  size (800,400);
  background (10);
  pez = loadImage ("pez.jpg");
  fill(240,193,136);
  rect (0,0, 400,400);
}


void draw () {
image (pez, 400,0,400,400);
noStroke();

//pez
fill(110,0,255);
ellipse (150,150, 250,150);
fill(86,8,191);
triangle(265,118,328,106,277,159);
triangle(255,191,337,171,275,150);
triangle(226,91,252,85,245,101);
triangle(209,216,241,200,256,224);
triangle(93,186,116,190,107,205);
ellipse(25,158,15,10);
//ojo
fill(0);
circle(60,125,20);


rect(136,75,10,100);
rect(100,80,10,100);
rect(177,76,10,100);
rect (217,90,10,80);
fill(59,18,175);
circle(100,380,40);
circle(200,300,30);
circle(340,310,40);
circle(360,30,40);
circle(200,300,40);
circle(50,20,30);
circle(55,270,20);
circle(360,270,20);
circle(270,360,20);
circle(190,30,20);
circle(120,270,10);
circle(370,70,20);
circle(110,310,30);
circle(240,360,10);

 
println(mouseX, mouseY);
  
}

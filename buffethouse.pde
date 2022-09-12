//sidney ho
//mr pelletier

//requirements
//house w 15 shape functions
//colors

Star [] stars;
int n = 200;

//color pallette
color sky = #000E39;
color bush = #0C200E;
color grass = #1A3E1E;
color lvl1 = #4B3E29;
color roof = #2E2721; //top
color roof2 = #968368;
color window = #F3F3C2;
color door = #1B1A13;
color black = (0);
color white = (255);

void setup () {
  size (800, 600); //x,y

  //starssetup
  stars = new Star [n]; //initializes array
  noStroke();

  int i = 0;

  while (i <n) {
    stars[i] = new Star();
    i++;
  }
}

void draw () {
  background (sky);

  //drawstars
  int i =0;
  while (i<n) {
    stars[i].act();
    stars[i].show();
    i++;
  }

  fill(255);
  stroke (255);
  //moon
  ellipse (612, 85, 100, 100);
  fill(sky);
  stroke (sky);
  //eclipse
  ellipse (590, 85, 95, 100);
  fill (white);


  //ground
  fill (grass);
  rect (-10, 450, 850, 200);

  //------- house
  //lvl1
  fill (lvl1);
  rect (-10, 275, 400, 175);
  //lvl2
  fill (roof);
  stroke (roof);
  rect (-10, 150, 400, 125);
  triangle (390, 150, 390, 275, 440, 275); //top pt,left pt,right pt
  //roof
  rect (-10, 75, 335, 75);
  triangle (325, 76, 325, 150, 390, 150); //top pt, left pt, right pt

  //rightwindowoverlay
  fill(roof2);
  rect(177, 175, 141, 81);
  //rightwindow
  fill (window); //windowcolor
  square(185, 180, 35);
  square(185, 215, 35);
  square(230, 180, 35);
  square(230, 215, 35);
  square(275, 180, 35);
  square(275, 215, 35);
  stroke (0);
  line(185, 180, 310, 180);
  line(185, 250, 310, 250);

  //lower window
  rect(175, 275, 50, 75);
  rect(275, 275, 50, 75);
  rect(225, 275, 50, 75);
  line(175, 313, 325, 313);

  //chimney
  fill(roof);
  stroke (roof);
  rect(250, 50, 50, 75);
  stroke(sky);
  rect(245, 40, 60, 10);

  //roof lines (ordered from bottom to top)
  stroke (black);
  strokeWeight (1.2);
  line (0, 275, 442, 275);
  line (0, 150, 400, 150); //(x1,y1,x2,y2)
  line (0, 75.5, 330, 75.5);

  //circlewindowframe
  fill (roof);
  stroke(0);
  strokeWeight(1);
  ellipse(0, 100, 120, 85);
  //circlewindow
  fill (window);
  stroke(0);
  ellipse(-30, 100, 120, 75);

  //windowbase
  fill(roof);
  triangle(60, 175, 99, 175, 63, 126);
  rect(-40, 125, 102, 50);
  //hidden
  stroke (roof);
  fill (roof);
  rect (-40, 128, 103, 46);
  //middlewindow
  stroke(black);
  strokeWeight(1);
  fill(roof2);
  rect(-25, 175, 100, 75);
  fill(window);
  rect(-50, 185, 100, 55);

  //door
  fill(door);
  rect(-10, 285, 100, 115);
  //pole
  fill(roof2);
  rect(100, 275, 10, 125);


  //bushes
  stroke (black);
  fill (bush);

  rect (-10, 400, 450, 80, 10);
  
  stroke (sky);
  fill (white);
}

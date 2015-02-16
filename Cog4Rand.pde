void setup(){
  size(500,500);
  background(201,200,200);
}

  float x = 0;
  float y = 0;
  float z = 2 * PI;
  float c = .006956525;
  float z2 = 0;
  float z3 = PI/100;
  float r = 100;
  
//Replica -- Original Mix by Afrojack
//Changed program into 4 revs/minute
void draw(){
  x = x + c;
  y = y + c;
  line(height / 2, width / 2,
       height/2 + (r * cos(x)), width/2 + (r * sin(y)));
       
  if (x > z){
       background(201,200,200);
       z = z + 2 * PI;
  }
  
  if (x > z2){
    z2 = z2 + PI/17.5;
    r = random(100, 250);
  }
  
  if (x > z3){
    z3 = z3 + PI/17.5;
    r = 100;
  }
  
}

void keyPressed(){
  if (key == 's'){
    saveFrame("####.png");
  }
}

//128 BPM.
//4 cycles per minute
//8 beats per cycle at this point (with PI/4)
//Thus, beats per cycle should be double the denom of PI
//32 BPC needed for 128 BPM; PI/16 should work.
//34.5 BPC needed for 13 BPM; PI/17.25
//35 BPC needed for 140; PI/17.5
//Holy crap, there are a lot of songs that have 128 as their BPM!!!

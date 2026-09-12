void setup(){
  size(400,400);
  background(220,240,245);

  for(int y=-20;y<430;y+=32){
    for(int x=-20;x<430;x+=38){
      if((y/32)%2==1){
        scale(x+19,y);
      }
      else{
        scale(x,y);
      }
    }
  }
}

void scale(int x,int y){
  if((x/38+y/32)%2==0){
    fill(255,140,40);
  }
  else{
    fill(50,140,220);
  }

  stroke(0);
  strokeWeight(2);

  beginShape();
  vertex(x,y-24);
  vertex(x-21,y-2);
  bezierVertex(x-21,y+16,x-10,y+24,x,y+24);
  bezierVertex(x+10,y+24,x+21,y+16,x+21,y-2);
  vertex(x,y-24);
  endShape(CLOSE);
}

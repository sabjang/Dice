void setup(){
  size(600, 600);
  noLoop();
}
void draw(){
  background(200, 200, 200);
  int sum = 0;
  //int number = (int)(Math.random()*6)+1;
  for(int y=50; y<570; y=y+60){
    for(int x=40; x<560; x=x+60){
      Die susan = new Die(x, y);
      susan.show();
      sum = sum+susan.number;
    }
  }
  textSize(30);
  text("Total rolled: " + sum, 200, 40);
}
void mousePressed(){
  redraw();
}
class Die {//models one single dice cube
  //member variable declarations here
  int myX, myY;
  int number = (int)(Math.random()*6)+1;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
      }
      void roll()
      {
          //int number = (int)(Math.random()*6)+1;
          
      }
      void show()
      {
        fill(255, 255, 255);
        rect(myX, myY, 50, 50);
        //int number = (int)(Math.random()*6)+1;
        if(number==1){
          fill(0);
          ellipse(myX+25, myY+25, 10, 10); //center
        }
        else if(number == 2){
          fill(0);
          ellipse(myX+10, myY+10, 10, 10); //top left
          ellipse(myX+40, myY+40, 10, 10); //bottom right
        }
        else if(number ==3){
          fill(0);
          ellipse(myX+10, myY+10, 10, 10); //top left
          ellipse(myX+25, myY+25, 10, 10); //center
          ellipse(myX+40, myY+40, 10, 10); //bottom right
        }
        else if(number ==4){
          fill(0);
          ellipse(myX+10, myY+10, 10, 10); //top left
          ellipse(myX+40, myY+10, 10, 10); //top right
          ellipse(myX+10, myY+40, 10, 10); //bottom left
          ellipse(myX+40, myY+40, 10, 10); //bottom right
        }
        else if(number==5){
          fill(0);
          ellipse(myX+10, myY+10, 10, 10); //top left
          ellipse(myX+40, myY+10, 10, 10); //top right
          ellipse(myX+25, myY+25, 10, 10); //center
          ellipse(myX+10, myY+40, 10, 10); //bottom left
          ellipse(myX+40, myY+40, 10, 10); //bottom right
        }
        else{
          fill(0);
          ellipse(myX+10, myY+10, 10, 10); //top left
          ellipse(myX+40, myY+10, 10, 10); //top right
          ellipse(myX+10, myY+25, 10, 10); //left middle
          ellipse(myX+40, myY+25, 10, 10); //right middle
          ellipse(myX+10, myY+40, 10, 10); //bottom left
          ellipse(myX+40, myY+40, 10, 10); //bottom right
        }
        
      }
  }

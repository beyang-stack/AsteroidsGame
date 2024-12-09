class Star
{
  private float myX,myY;
  public Star(){
    myX = (float)(Math.random()*600);
    myY = (float)(Math.random()*600);
  }
  public void show (){
    fill(255);
    ellipse(myX,myY,3,3);
  }
}

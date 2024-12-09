class Asteroid extends Floater {
  private double rot;
  
  public Asteroid(){
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 8;
    yCorners[1] = -8;
    xCorners[2] = 8;
    yCorners[2] = 8;
    xCorners[3] = -8;
    yCorners[3] = 8;
    myColor = 100;
    myCenterX = (double)(Math.random()*600);
    myCenterY = (double)(Math.random()*600);
    myXspeed = (double)(Math.random()*10)-5;
    myYspeed = (double)(Math.random()*10)-5;
    myPointDirection = 0;
    rot = (double)(Math.random()*4)-2;
  }
  
  public void move(){
    turn(rot);
    super.move();
  }
  
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}

class Bullet extends Floater {
  
  public Bullet(){
    myCenterX = craft.getCenterX();
    myCenterY = craft.getCenterY();
    myXspeed = craft.getXspeed();
    myYspeed = craft.getYspeed();
    myPointDirection = craft.getmyPointDirection();
    accelerate(6);
    myColor = 200;
  }
  
  public void show (){
    fill(myColor);
    ellipse((float)myCenterX,(float)myCenterY,4,4);
  }
  
    public void setXspeed( double num){
      myXspeed = num;
    }
    public void setYspeed( double num){
      myYspeed = num;
    }
    public void setCenterX( double num){
      myCenterX = num;
    }
    public void setCenterY( double num){
      myCenterY = num;
    }
    public double getCenterX(){
      return myCenterX;
    }
    public double getCenterY(){
      return myCenterY;
    }
    public double getXspeed(){
      return myXspeed;
    }
    public double getYspeed(){
      return myYspeed;
    }
    public double getmyPointDirection(){
      return myPointDirection;
    }
  
  
  
  
  
  
  
}

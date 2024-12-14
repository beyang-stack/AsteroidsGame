class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 3;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -5;
      yCorners[0] = -5;
      xCorners[1] = 10;
      yCorners[1] = 0;
      xCorners[2] = -5;
      yCorners[2] = 5;
      myColor = 255;
      myCenterX = 300;
      myCenterY = 300;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
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

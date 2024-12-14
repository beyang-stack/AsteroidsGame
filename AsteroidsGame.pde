Spaceship craft = new Spaceship();
Star [] galaxy = new Star[100];
ArrayList <Asteroid> field = new ArrayList <Asteroid>();
ArrayList <Bullet> round = new ArrayList <Bullet>();
public void setup() 
{
 size(600,600);
 for ( int i = 0; i < galaxy.length; i++){
   galaxy[i] = new Star();
 }
 
 for ( int i = 0; i < 5; i++){
   field.add(new Asteroid());
 }
}

public void draw() 
{ 
  background(0);
  for ( int i = 0; i < galaxy.length; i++){
    galaxy[i].show();
  }
  craft.move();
  craft.show();
  
  for( int i = 0; i < field.size(); i++){
    Asteroid rock = field.get(i);
    rock.move();
    if (dist((float)rock.getCenterX(),(float)rock.getCenterY(),(float)craft.getCenterX(),(float)craft.getCenterY()) <= 10 ){
      field.remove(i);
    }
    rock.show();
  }
  
  for( int i = 0; i < round.size(); i++){
    Bullet proj = round.get(i);
    proj.move();
    for( int z = 0; z < field.size(); z++){
      if (dist((float)field.get(z).getCenterX(),(float)field.get(z).getCenterY(),(float)proj.getCenterX(),(float)proj.getCenterY()) <= 8 ){
        field.remove(z);
        round.remove(i);
        break;
      }
    }
    proj.show();
  }
}

public void keyPressed(){
  if( key == 'w'){
    craft.accelerate(1);
  }
  if( key == 'a'){
    craft.turn(-30);
  }
  if( key == 's'){
    craft.accelerate(-1);
  }
  if( key == 'd'){
    craft.turn(30);
  }
  if( key == 'q'){
    craft.setXspeed(0);
    craft.setYspeed(0);
    craft.setCenterX(0);
    craft.setCenterY(0);
    craft.turn((double)(Math.random()*360));
    craft.setCenterX((double)(Math.random()*600));
    craft.setCenterY((double)(Math.random()*600));
  }
  if(key == 32){
    round.add(new Bullet());
  }
  
  
}

//your intiable declarations here
Star [] stars;
SpaceShip w0;
boolean left, right, up, down;
public void setup() 
{size(1000,400);
  //your code here
  w0= new SpaceShip();
  stars=new Star[100];
  for(int i=0;i<stars.length;i++){

    stars[i]= new Star();
  }


}

public void draw() 
{
  fill(0,0,0,20);
  rect(0,0,1000,1000);
  //your code here
    if(right==true){w0.rotate(6);}
    if(left==true){w0.rotate(-6); }
    if(up==true){w0.accelerate(0.1);}
    if(down==true){w0.accelerate(-0.1);}
  for(int i=0;i<stars.length;i++){

    stars[i].show();
  }

    w0.show();
  w0.move();
}
public void keyPressed(){
    if(key == 'd'){right=true;}
    if(key == 'a'){left=true; }
    if(key == 'w'){up=true;}
    if(key=='s'){down=true;}
    if(key =='f'){
       w0.setX((int)(Math.random()*1000));
       w0.setY((int)(Math.random()*400));
       w0.setDirectionX(0);
       w0.setDirectionY(0);
       w0.accelerate(0);
       w0.setPointDirection((int)(Math.random()*360));



    }
}
public void keyReleased(){
    if(key == 'd'){right=false;}
    if(key == 'a'){left=false; }
    if(key == 'w'){up=false;}
    if(key=='s'){down=false;}
}
class Star
{
  private int myX, myY, mySize, myR, myG, myB,myT;
    public void setX(int x){ myX=x;}
    public int getX(){ return (int)myX;}
    public void setY(int y){myY=y;}
    public int getY(){return (int)myY;}
    public void setR(int r){ myR=r;}
    public int getR(){ return (int)myR;}
    public void setB(int b ){myB=b;}
    public int getB(){return (int)myB;}
    public void setG(int g){ myG=g;}
    public int getG(){ return (int)myG;}
    public void mySize(int s ){mySize=s;}
    public int getSize(){return (int)mySize;}
    public void setT(int t){ myT=t;}
    public int getT(){ return (int)myT;}


  public Star(){
    myX=(int)(Math.random()*1000)+1;
    myY=(int)(Math.random()*400)+1;
    mySize=(int)(Math.random()*5)+5;
    myR=(int)(Math.random()*255)+50;
    myG=(int)(Math.random()*255)+50;
    myB=(int)(Math.random()*255)+50;
    myT=(int)(Math.random()*15)+10;
  }
  public void show(){
    noStroke();
    ellipse(getX(),getY(),getSize(),getSize());
    fill(getR(),getG(),getB(),getT());
  }

}
class SpaceShip extends Floater  
{   
    //your code here

    public void setX(int x){ myCenterX=x;}
    public int getX(){ return (int)myCenterX;}
    public void setY(int y){myCenterY=y;}
    public int getY(){return (int)myCenterY;}
    public void setDirectionX(double x){ myDirectionX=x;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionY(double y){myDirectionY=y;}
    public double getDirectionY(){return myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection=degrees;}
    public double getPointDirection(){return myPointDirection;}

    public SpaceShip(){

      myBColor=color(255,127,39);
      myColor=color(129, 208, 222);
      b1corners=11;
      xB1Corners = new int [b1corners];
      yB1Corners = new int [b1corners];
      xB1Corners[0]=-16;
      yB1Corners[0]=17;
      xB1Corners[1]=-14;
      yB1Corners[1]=18;
      xB1Corners[2]=-13;
      yB1Corners[2]=19;
      xB1Corners[3]=-15;
      yB1Corners[3]=20;
      xB1Corners[4]=-12;
      yB1Corners[4]=21;
      xB1Corners[5]=-11;
      yB1Corners[5]=21;
      xB1Corners[6]=-11;
      yB1Corners[6]=20;
      xB1Corners[7]=-12;
      yB1Corners[7]=16;
      xB1Corners[8]=-15;
      yB1Corners[8]=15;
      xB1Corners[9]=-13;
      yB1Corners[9]=15;
      xB1Corners[10]=-14;
      yB1Corners[10]=16;
      b2corners=11;
      xB2Corners = new int [b2corners];
      yB2Corners = new int [b2corners];
      xB2Corners[0]=-16;
      yB2Corners[0]=-17;
      xB2Corners[1]=-14;
      yB2Corners[1]=-18;
      xB2Corners[2]=-13;
      yB2Corners[2]=-19;
      xB2Corners[3]=-15;
      yB2Corners[3]=-20;
      xB2Corners[4]=-12;
      yB2Corners[4]=-21;
      xB2Corners[5]=-11;
      yB2Corners[5]=-21;
      xB2Corners[6]=-11;
      yB2Corners[6]=-20;
      xB2Corners[7]=-12;
      yB2Corners[7]=-16;
      xB2Corners[8]=-15;
      yB2Corners[8]=-15;
      xB2Corners[9]=-13;
      yB2Corners[9]=-15;
      xB2Corners[10]=-14;
      yB2Corners[10]=-16;
      b3corners=11;
      xB3Corners = new int [b3corners];
      yB3Corners = new int [b3corners];
      xB3Corners[0]=-40;
      yB3Corners[0]=-2;
      xB3Corners[1]=-38;
      yB3Corners[1]=-3;
      xB3Corners[2]=-37;
      yB3Corners[2]=-4;
      xB3Corners[3]=-39;
      yB3Corners[3]=-5;
      xB3Corners[4]=-36;
      yB3Corners[4]=-6;
      xB3Corners[5]=-35;
      yB3Corners[5]=-6;
      xB3Corners[6]=-35;
      yB3Corners[6]=-5;
      xB3Corners[7]=-36;
      yB3Corners[7]=-1;
      xB3Corners[8]=-29;
      yB3Corners[8]=0;
      xB3Corners[9]=-37;
      yB3Corners[9]=0;
      xB3Corners[10]=-38;
      yB3Corners[10]=-1;
      b4corners=11;
      xB4Corners = new int [b4corners];
      yB4Corners = new int [b4corners];
      xB4Corners[0]=-40;
      yB4Corners[0]=2;
      xB4Corners[1]=-38;
      yB4Corners[1]=3;
      xB4Corners[2]=-37;
      yB4Corners[2]=4;
      xB4Corners[3]=-39;
      yB4Corners[3]=5;
      xB4Corners[4]=-36;
      yB4Corners[4]=6;
      xB4Corners[5]=-35;
      yB4Corners[5]=6;
      xB4Corners[6]=-35;
      yB4Corners[6]=5;
      xB4Corners[7]=-36;
      yB4Corners[7]=1;
      xB4Corners[8]=-29;
      yB4Corners[8]=0;
      xB4Corners[9]=-37;
      yB4Corners[9]=0;
      xB4Corners[10]=-38;
      yB4Corners[10]=1;


      corners=131;
      xCorners = new int [corners];
      yCorners = new int [corners];
      xCorners[0]=24;
      yCorners[0]=0;
      xCorners[1]=21;
      yCorners[1]=3;
      xCorners[2]=19;
      yCorners[2]=5;
      xCorners[3]=20;
      yCorners[3]=2;
      xCorners[4]=16;
      yCorners[4]=2;
      xCorners[5]=14;
      yCorners[5]=4;
      xCorners[6]=8;
      yCorners[6]=4;
      xCorners[7]=8;
      yCorners[7]=6;
      xCorners[8]=36;
      yCorners[8]=6;
      xCorners[9]=35;
      yCorners[9]=7;
      xCorners[10]=3;
      yCorners[10]=7;
      xCorners[11]=3;
      yCorners[11]=9;
      xCorners[12]=1;
      yCorners[12]=11;
      xCorners[13]=5;
      yCorners[13]=13;
      xCorners[14]=2;
      yCorners[14]=15;
      xCorners[15]=-1;
      yCorners[15]=17;
      xCorners[16]=2;
      yCorners[16]=19;
      xCorners[17]=5;
      yCorners[17]=21;
      xCorners[18]=0;
      yCorners[18]=23;
      xCorners[19]=-2;
      yCorners[19]=24;
      xCorners[20]=-2;
      yCorners[20]=28;
      xCorners[21]=-7;
      yCorners[21]=33;
      xCorners[22]=-3;
      yCorners[22]=24;
      xCorners[23]=-5;
      yCorners[23]=22;
      xCorners[24]=-16;
      yCorners[24]=27;
      xCorners[25]=-21;
      yCorners[25]=25;
      xCorners[26]=-13;
      yCorners[26]=21;
      xCorners[27]=-7;
      yCorners[27]=20;
      xCorners[28]=-7;
      yCorners[28]=19;
      xCorners[29]=-4;
      yCorners[29]=18;
      xCorners[30]=-12;
      yCorners[30]=18;
      xCorners[31]=-13;
      yCorners[31]=17;
      xCorners[32]=-12;
      yCorners[32]=16;
      xCorners[33]=-4;
      yCorners[33]=16;
      xCorners[34]=-7;
      yCorners[34]=14;
      xCorners[35]=-13;
      yCorners[35]=13;
      xCorners[36]=-21;
      yCorners[36]=9;
      xCorners[37]=-16;
      yCorners[37]=7;
      xCorners[38]=-5;
      yCorners[38]=12;
      xCorners[39]=-1;
      yCorners[39]=10;
      xCorners[40]=-1;
      yCorners[40]=8;
      xCorners[41]=-7;
      yCorners[41]=8;
      xCorners[42]=-9;
      yCorners[42]=7;
      xCorners[43]=-7;
      yCorners[43]=6;
      xCorners[44]=-9;
      yCorners[44]=4;
      xCorners[45]=-10;
      yCorners[45]=5;
      xCorners[46]=-18;
      yCorners[46]=5;
      xCorners[47]=-18;
      yCorners[47]=6;
      xCorners[48]=-23;
      yCorners[48]=6;
      xCorners[49]=-23;
      yCorners[49]=5;
      xCorners[50]=-30;
      yCorners[50]=5;
      xCorners[51]=-30;
      yCorners[51]=6;
      xCorners[52]=-33;
      yCorners[52]=6;
      xCorners[53]=-35;
      yCorners[53]=5;
      xCorners[54]=-36;
      yCorners[54]=4;
      xCorners[55]=-36;
      yCorners[55]=3;
      xCorners[56]=-35;
      yCorners[56]=2;
      xCorners[57]=-33;
      yCorners[57]=1;
      xCorners[58]=-30;
      yCorners[58]=1;
      xCorners[59]=-30;
      yCorners[59]=2;
      xCorners[60]=-23;
      yCorners[60]=2;
      xCorners[61]=-23;
      yCorners[61]=1;
      xCorners[62]=-18;
      yCorners[62]=1;
      xCorners[63]=-18;
      yCorners[63]=2;
      xCorners[64]=-10;
      yCorners[64]=2;
      xCorners[65]=-10;
      yCorners[65]=0;
      xCorners[66]=-10;
      yCorners[66]=-2;
      xCorners[67]=-18;
      yCorners[67]=-2;
      xCorners[68]=-18;
      yCorners[68]=-1;
      xCorners[69]=-23;
      yCorners[69]=-1;
      xCorners[70]=-23;
      yCorners[70]=-2;
      xCorners[71]=-30;
      yCorners[71]=-2;
      xCorners[72]=-30;
      yCorners[72]=-1;
      xCorners[73]=-33;
      yCorners[73]=-1;      
      xCorners[74]=-35;
      yCorners[74]=-2;
      xCorners[75]=-36;
      yCorners[75]=-3;
      xCorners[76]=-36;
      yCorners[76]=-4;
      xCorners[77]=-35;
      yCorners[77]=-5;
      xCorners[78]=-33;
      yCorners[78]=-6;
      xCorners[79]=-30;
      yCorners[79]=-6;
      xCorners[80]=-30;
      yCorners[80]=-5;      
      xCorners[81]=-23;
      yCorners[81]=-5;
      xCorners[82]=-23;
      yCorners[82]=-6;
      xCorners[83]=-18;
      yCorners[83]=-6;
      xCorners[84]=-18;
      yCorners[84]=-5;
      xCorners[85]=-10;
      yCorners[85]=-5;
      xCorners[86]=-9;
      yCorners[86]=-4;      
      xCorners[87]=-7;
      yCorners[87]=-6;
      xCorners[88]=-9;
      yCorners[88]=-7;
      xCorners[89]=-7;
      yCorners[89]=-8;
      xCorners[90]=-1;
      yCorners[90]=-8;
      xCorners[91]=-1;
      yCorners[91]=-10;
      xCorners[92]=-5;
      yCorners[92]=-12;
      xCorners[93]=-16;
      yCorners[93]=-7;
      xCorners[94]=-21;
      yCorners[94]=-9;
      xCorners[95]=-13;
      yCorners[95]=-13;
      xCorners[96]=-7;
      yCorners[96]=-14;
      xCorners[97]=-4;
      yCorners[97]=-16;
      xCorners[98]=-12;
      yCorners[98]=-16;
      xCorners[99]=-13;
      yCorners[99]=-17;
      xCorners[100]=-12;
      yCorners[100]=-18;
      xCorners[101]=-4;
      yCorners[101]=-18;
      xCorners[102]=-7;
      yCorners[102]=-19;
      xCorners[103]=-7;
      yCorners[103]=-20;
      xCorners[104]=-13;
      yCorners[104]=-21;
      xCorners[105]=-21;
      yCorners[105]=-25;
      xCorners[106]=-16;
      yCorners[106]=-27;
      xCorners[107]=-5;
      yCorners[107]=-22;
      xCorners[108]=-3;
      yCorners[108]=-24;
      xCorners[109]=-7;
      yCorners[109]=-33;
      xCorners[110]=-2;
      yCorners[110]=-28;
      xCorners[111]=-2;
      yCorners[111]=-24;
      xCorners[112]=0;
      yCorners[112]=-23;
      xCorners[113]=5;
      yCorners[113]=-21;
      xCorners[114]=2;
      yCorners[114]=-19;      
      xCorners[115]=-1;
      yCorners[115]=-17;
      xCorners[116]=2;
      yCorners[116]=-15;
      xCorners[117]=5;
      yCorners[117]=-13;
      xCorners[118]=1;
      yCorners[118]=-11;
      xCorners[119]=3;
      yCorners[119]=-9;
      xCorners[120]=3;
      yCorners[120]=-7;
      xCorners[121]=35;
      yCorners[121]=-7;
      xCorners[122]=36;
      yCorners[122]=-6;
      xCorners[123]=8;
      yCorners[123]=-6;
      xCorners[124]=8;
      yCorners[124]=-4;
      xCorners[125]=14;
      yCorners[125]=-4;
      xCorners[126]=16;
      yCorners[126]=-2;
      xCorners[127]=20;
      yCorners[127]=-2;
      xCorners[128]=19;
      yCorners[128]=-5;
      xCorners[129]=21;
      yCorners[129]=-3;
      xCorners[130]=24;
      yCorners[130]=0;



      myCenterX=500;
      myCenterY=200;
      myDirectionX=0;
      myDirectionY=0;
      myPointDirection=270;








    }

}
abstract class Floater //Do NOT modify the Floater class! Make changes in the SpaceShip class 
{ 
  protected int b1corners;
  protected int[] xB1Corners;
  protected int[] yB1Corners;
  protected int myBColor;
  protected int b2corners;
  protected int[] xB2Corners;
  protected int[] yB2Corners;

  protected int b3corners;
  protected int[] xB3Corners;
  protected int[] yB3Corners;

  protected int b4corners;
  protected int[] xB4Corners;
  protected int[] yB4Corners;



  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    
  abstract public void setX(int x);  
  abstract public int getX();   
  abstract public void setY(int y);   
  abstract public int getY();   
  abstract public void setDirectionX(double x);   
  abstract public double getDirectionX();   
  abstract public void setDirectionY(double y);   
  abstract public double getDirectionY();   
  abstract public void setPointDirection(int degrees);   
  abstract public double getPointDirection(); 

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void rotate (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show ()  //Draws the floater at the current position  
  {             
   
    //convert degrees to radians for sin and cos         
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    

        beginShape();
    for(int nI = 0; nI < b1corners; nI++)    
    {   
        fill(myBColor);   

      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xB1Corners[nI]* Math.cos(dRadians)) - (yB1Corners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xB1Corners[nI]* Math.sin(dRadians)) + (yB1Corners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
      
    } 
    endShape(CLOSE);
    beginShape();
    for(int nI = 0; nI < b2corners; nI++)    
    {     
      fill(myBColor); 
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xB2Corners[nI]* Math.cos(dRadians)) - (yB2Corners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xB2Corners[nI]* Math.sin(dRadians)) + (yB2Corners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
      
    }
    endShape(CLOSE);
    beginShape();
    for(int nI = 0; nI < b3corners; nI++)    
    {     fill(myBColor); 
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xB3Corners[nI]* Math.cos(dRadians)) - (yB3Corners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xB3Corners[nI]* Math.sin(dRadians)) + (yB3Corners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
      
    }
    endShape(CLOSE);
    beginShape();
    for(int nI = 0; nI < b4corners; nI++)    
    {     fill(myBColor); 
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xB4Corners[nI]* Math.cos(dRadians)) - (yB4Corners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xB4Corners[nI]* Math.sin(dRadians)) + (yB4Corners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
      
    }               
    endShape(CLOSE);  
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    { 
        fill(myColor);   
    stroke(129, 208, 222,50);     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
      
    }
    endShape(CLOSE);
    
      /*pushMatrix();
        translate(getX(), getY());
        rotate((int)(dRadians));
        ship(0,0);

        
      popMatrix();*/ 
    




    
    



  }   
} 
/*public void ship(int x, int y){
          
    rectMode(CENTER);
    int [][] pix = { {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,3,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,2,2,2,3,3,3,3,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,2,2,1,2,2,2,2,2,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,1,1,4,4,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,1,1,4,4,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,2,2,1,2,2,2,2,2,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,2,2,2,3,3,3,3,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,3,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,2,2,2,2,2,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,2,5,4,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,5,4,4,3,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,4,4,2,2,2,2,5,4,4,3,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,5,5,5,5,2,2,2,2,5,4,4,5,4,4,1,4,4,4,4,4,4,4,6,6,6,6,6,4,4,4,6,6,6,6,6,6,6,6,6,6,3,4,3,4,3,4,0},
                {0,0,0,5,5,0,0,0,0,0,0,0,0,9,9,9,9,9,9,0,0,0,0,0,0,0,0,0,0,5,5,5,2,2,2,5,4,4,5,4,4,1,1,4,4,4,6,6,6,6,4,4,4,4,4,4,4,4,4,4,3,3,3,3,3,3,3,3,3,3,3,3,6,4},
                {0,5,5,8,8,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,0,1,1,1,1,5,0,0,5,4,4,0,4,4,4,1,1,1,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {5,8,8,8,8,5,5,9,1,1,1,4,4,1,1,1,1,1,4,4,4,4,1,1,1,9,9,1,1,1,1,1,1,4,4,4,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {5,8,8,8,8,5,5,9,1,1,1,4,4,1,1,1,1,1,4,4,4,4,1,1,9,1,1,1,1,1,1,1,1,4,4,1,1,1,1,1,5,5,5,5,5,1,5,5,5,5,5,1,0,0,0,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,5,5,8,8,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,4,4,4,1,1,1,9,1,5,5,5,1,1,1,5,5,5,5,5,1,3,3,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,4,4,1,1,1,9,1,1,5,5,5,5,5,5,5,5,5,5,5,5,3,3,7,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,9,9,4,1,1,1,4,4,1,1,1,9,1,1,5,5,5,5,5,5,5,5,5,5,5,5,3,3,3,7,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,5,5,9,9,0,0,0,0,0,0,9,9,9,9,9,9,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,4,4,1,1,1,9,1,1,5,5,5,5,5,5,5,5,5,5,5,5,3,3,7,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,5,5,8,8,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,4,4,4,1,1,1,9,1,5,5,5,1,1,1,5,5,5,5,5,1,3,3,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {5,8,8,8,8,5,5,9,1,1,1,4,4,1,1,1,1,1,4,4,4,4,1,1,9,1,1,1,1,1,1,1,1,4,4,1,1,1,1,1,5,5,5,5,5,1,5,5,5,5,5,1,5,5,5,5,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {5,8,8,8,8,5,5,9,1,1,1,4,4,1,1,1,1,1,4,4,4,4,1,1,1,9,9,1,1,1,1,1,1,4,4,4,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,5,5,8,8,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,0,1,1,1,1,5,0,0,5,4,4,0,4,4,4,1,1,1,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,5,5,9,9,0,0,0,0,0,0,9,9,9,9,9,9,0,0,0,0,0,0,0,0,0,0,5,5,5,2,2,2,5,4,4,5,4,4,1,1,4,4,4,6,6,6,6,4,4,4,4,4,4,4,4,4,4,3,3,3,3,3,3,3,3,3,3,3,3,6,4},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,5,5,5,5,2,2,2,2,5,4,4,5,4,4,1,4,4,4,4,4,4,4,6,6,6,6,6,4,4,4,6,6,6,6,6,6,6,6,6,6,3,4,3,4,3,4,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,4,4,2,2,2,2,5,4,4,3,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,5,4,4,3,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,2,5,4,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,2,2,2,2,2,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,3,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,2,2,2,3,3,3,3,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,2,2,1,2,2,2,2,2,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,1,1,4,4,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,1,1,4,4,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,2,2,1,2,2,2,2,2,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,2,2,2,3,3,3,3,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,3,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
            



        
        };
        
    int color1 = color(255, 255, 255);
    int color2 = color(6, 69, 155);
    int color3 = color(255, 201, 14);
    int color4 = color(73, 73, 73);
    int color5 = color(237, 28, 36);
    int color6 = color(127, 127, 127);
    int color7 = color(181, 230, 29);
    int color8 = color(136, 0, 21);
    int color9 = color(230, 230, 230);
    int w=1;
    int h=w;
    int a=0;
  
     for (int p = 0; p < pix.length; p += 1)
    {
        for (int i = 0; i < pix[p].length ; i += 1)
        {
            if(pix[p][i] == 1)
            {
                
                fill(color1);
                stroke(color1);
                rect(i + x-73+a, y-67, w, h);
            }
            
            if(pix[p][i] == 2)
            {
                
                fill(color2);
                stroke(color2);
                rect(i + x-73+a, y-67, w, h);
            }
            
            if(pix[p][i] == 3)
            {
                fill(color3);
                stroke(color3);
                rect(i + x-73+a, y-67, w, h);
            }
            
            if(pix[p][i] == 4)
            { 
                fill(color4);
                stroke(color4);
                rect(i + x-73+a, y-67, w, h);
            }
            
            if(pix[p][i] == 5)
            { 
                fill(color5);
                stroke(color5);
                rect(i + x-73+a, y-67, w, h);
            }
            
            if(pix[p][i] == 6)
            {
                fill(color6);
                stroke(color6);
                rect(i + x-73+a, y-67, w, h);
            }
            
            if(pix[p][i] == 7)
            {
                fill(color7);
                stroke(color7);
                rect(i + x-73+a, y-67, w, h);
            }
            
            if(pix[p][i] == 8)
            {  
                fill(color8);
                stroke(color8);
                rect(i + x-73+a, y-67, w, h);
            }
            
            if(pix[p][i] == 9)
            {
                fill(color9);
                stroke(color9);
                rect(i + x-73+a, y-67, w, h);
            }
            
        
            a += w;//makes pix equally distant
           
        }
        
        y += h+1;//makes //makes pix equally distant
        a =0;//makes it so that every row is not always ongoing based on "a" value from "a += w"
    }
};*/

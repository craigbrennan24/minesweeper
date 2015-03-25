class Tile
{
  float xPos, yPos;
  boolean revealed;
  int proximityMines;
  boolean isMine;
  boolean isFlagged;
  float size;
  float hitboxL, hitboxR, hitboxU, hitboxD;
  
  Tile()
  {
    this.revealed = false;
    this.proximityMines = 0;
    this.isMine = false;
    this.isFlagged = false;
    size = 5;
  }
  
  Tile( float xPos, float yPos )
  {
    this();
    this.xPos = xPos;
    this.yPos = yPos;
    hitboxL = xPos - (size/2);
    hitboxR = xPos + (size/2);
    hitboxU = yPos - (size/2);
    hitboxD = yPos + (size/2);
  }
  
  Tile( float xPos, float yPos, float size )
  {
    this(xPos, yPos);
    this.size = size;
    hitboxL = xPos - (size/2);
    hitboxR = xPos + (size/2);
    hitboxU = yPos - (size/2);
    hitboxD = yPos + (size/2);
  }
  
  void draw()
  {
    fill(chooseColor());
    rectMode(CENTER);
    rect( xPos, yPos, size, size );
  }
  
  color chooseColor()
  {
    color ret = tileColor;
    if( mouseHover() )
    {
      ret = color( 0, 153, 204 );
    }
    return ret;
  }
  
  boolean mouseHover()
  {
    boolean ret = false;
    if( mouseX > hitboxL && mouseX < hitboxR )
    {
      if( mouseY > hitboxU && mouseY < hitboxD )
      {
        ret = true;
      }
    }
    return ret;
  }
  
}

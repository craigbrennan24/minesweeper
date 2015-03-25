ArrayList<Tile> board = new ArrayList<Tile>();
color tileColor = color( 0, 204, 255 );

void setup()
{ 
   size( 1024, 800 );
   Tile t = new Tile( width/2, height/2, 20 );
   board.add(t);
}

void draw()
{ 
   background(255);
   drawTiles();
}

void drawTiles()
{
  for( Tile t : board )
  {
    t.draw();
  }
}

void setupTiles()
{
  
  for( int i = 0; i < 100; i++ )
  {
    for( int j = 0; j < 100; j++ )
    {
      Tile t = new Tile( 
    }
  }
}


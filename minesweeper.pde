ArrayList<Tile> board = new ArrayList<Tile>();
color tileColor = color( 0, 204, 255 );

void setup()
{ 
   size( 1024, 800 );
   setupTiles();
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
  float size = 20;
  float baseX = size/2;
  float baseY = size/2;
  for( int i = 0; i < 30; i++ )
  {
    for( int j = 0; j < 30; j++ )
    {
      Tile t = new Tile( baseX + (size*j), baseY + (size*i), size );
      board.add(t);
    }
  }
}


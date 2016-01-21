class Load
{
  int i;
  float largest;
  ArrayList<Integer> numbers = new ArrayList<Integer>();
  ArrayList<Integer> groups = new ArrayList<Integer>();
  String[] lines;
  String[] months = { "Jan"
  , "Feb"
  , "Mar"
  , "Apr"
  , "May"
  , "Jun"
  , "Jul"
  , "Aug"
  , "Sep"
  , "Oct"
  , "Nov"
  , "Dec"
  };
  
  Load()
  {
<<<<<<< HEAD
    //gets data from the file
=======
>>>>>>> d1038489a909aef849db2278e1da6ddb24f10c3e
    lines = loadStrings("Survey.txt");
    //To load lines in a file 
    for(String s:lines)
    {
      numbers.add(parseInt(s));
    }
    
    for(i=0; i < numbers.size(); i +=3 )
    {
      groups.add( numbers.get(i) + numbers.get(i+1) + numbers.get(i+2) );
    }
  }
}

public class Constructor_eg 
{
	Integer Length;
    Integer Breadth;

//below is an example of parameterized contructor

  Public Constructor_eg (Integer X,Integer Y)
   {
       length= X;
      Breadth = Y;
   }

    Public Constructor_eg ()
   {
       
   }
    
    Public Void calcarea()
    {
        Integer Area;
        Area= Length*Breadth;
        System.debug(Area);
    }
    
}
public class Pericalc
{
    
    Public void maincalc(Integer X, Integer Y, string Fig)
    {
        If(Fig== 'Area')
        {
            Recarea(X,Y);          
        }
        else if (Fig == 'Perimeter')
        {
            Recperi(X,Y);
        }
        else 
        {
            //do nothing
        }
        
    }
      
	Void Recarea(Integer L,Integer B)
    {
        Integer R = L * B;
        System.debug('the area of rec' + R); 
    }
    
    Void Recperi(Integer L,Integer B)
    {
        Integer R = 2 *(L + B);
        System.debug('the primeter of rec' + R); 
    }    
    
}
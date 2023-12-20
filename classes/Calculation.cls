public class Calculation 
{
    //--> Class variable, by default private means only valid under this class
	Integer R; 
    
    Public Integer R1; //class variable
        
   Public void Areacalc(Integer L, Integer B)
    {
         Integer Ar;   //Local/method variable
        Ar = L*B;
        system.debug('the area is' + Ar);     
        system.debug(R);  
    }
    
    public void display()
    {
        Integer Ar;
       system.debug(Ar);  
       system.debug(R);         
    }
    
    
}
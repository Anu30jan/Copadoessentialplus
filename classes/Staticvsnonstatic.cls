Public class Staticvsnonstatic
{
	Public Integer X = 10;    //non static
    Public Static Integer Y = 10; // static
    
    Public void M1(Integer A)
    {
        X =  X + A;
        system.debug(X);        
    }
    
    Public static void M2(Integer B)
    {
        Y = Y + B;
        system.debug(Y);        
    }
        
     Public void M3(Integer B)
    {
         Y = Y + B;
        system.debug(Y);         
    }
    
    
}
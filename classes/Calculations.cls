public class Calculations {
    
    Public Integer Length   {get;set;}
    Public Integer Breadth	{get;set;}
    public string  Choice	{get;set;}
    Public Integer Result	{get;set;}
      
    Public Void maincalc()
    {
        if (Choice== 'A')
        	{
            	calcArea();
        	}
        Else if(choice=='P')
        	{
            	calcperi();
        	}
        Else
        	{
            	Result = 0;
            }
    }
    
    public void Reset()
    {
        length =0;
        Breadth=0;
        Result=0;
        Choice =  '';
    }
	
    Void calcArea()
    {
      	Result= length * Breadth;  
    }
    
    Void calcperi()
    {
        
        Result = 2*(length + Breadth);
    }
}
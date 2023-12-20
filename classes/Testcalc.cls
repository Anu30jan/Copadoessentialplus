public class Testcalc {
    
    Public Integer Length   {get;set;}
    Public Integer Breadth	{get;set;}
    public string  Choice	{get;set;}
    Public Integer Result	{get;set;}
    Public Account Acc;
    
//The only time it is necessary to refer to a StandardController object is when defining an extension for a standard controller. 
//StandardController is the data type of the single argument in the extension class constructor.StandardController is the data type of the single argument in the extension class constructor.
    Public Testcalc(Apexpages.StandardController C)
    {
        ACC= (Account)C.getRecord();
    }
      
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
    
    Public void insertacc()
    {
        If(Acc.Id != null)
        {
            Update Acc;
            Apexpages.Message M = New Apexpages.Message(Apexpages.Severity.CONFIRM,'Account was updated successfully');
                Apexpages.addMessage(M);
        }
        else
        {
            if (Acc.phone == null)
            {
                Apexpages.Message M = New Apexpages.Message(Apexpages.Severity.ERROR,'Phone number cannot be null');
                Apexpages.addMessage(M);
            }
            else
            {
                Insert Acc;
                Apexpages.Message M = New Apexpages.Message(Apexpages.Severity.CONFIRM,'Account inserted successfully');
                Apexpages.addMessage(M);
            }
        }
    }
}
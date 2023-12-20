public class CreateAccount {
    
    Public string Nm	{get;set;}
    Public string Ph	{get;set;}	
    Public string Rt	{get;set;}
    Public string Ind	{get;set;}
    
    public void createacc()
    {       
        Account A = new Account();
        A.name= Nm;
        A.phone = Ph;
        A.rating = Rt;
        A.Industry = Ind;
        INSERT A;       
    }   
}
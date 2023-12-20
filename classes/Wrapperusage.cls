public class Wrapperusage 
{
		Public string N;
    	Public Wrapper W;
    
    Public Void Method()
    {
        N = 'SFDC';
        system.debug(N);
        
      W = new Wrapper();
      W.name = 'salesforce';
      system.debug(W.name);
        
      W.salary = 2500000;
      system.debug(W.salary); 
        
      W.AC = [select ID,name,Phone from Account];
      system.debug(W.AC);
      
        Contact C1 = new Contact();
        W.C = C1;
        
             
    }        

}
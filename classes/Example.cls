public class Example 
{
	Integer Roll;
    string name;
    
    Public  Example(Integer X, string Y)
    {
        Roll = X;
        name = Y;        
    }
    
     Public Example()
    {
     	 Roll = 1015;
		name = 'sfdc';        
    }
    
    Public void show()
    {
        system.debug('Emp name is ' + Name);
        system.debug('Emp roll is' +roll);
    }
}
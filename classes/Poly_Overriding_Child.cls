public class Poly_Overriding_Child extends Poly_Overriding_parent
{
	 Public Override Void M()
    {
        System.debug('This is a Child Class');
    }
    
    
    Public Void main()
    {
        M(); //calls the local method
        Super.M();   //calls the parent method
    }
 
}
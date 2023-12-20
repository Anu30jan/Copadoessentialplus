public VIRTUAL class MyInheritance_child EXTENDS MyInheritance_Parent 
{
    Public Integer Num1 = 20;
	Public Void Calc()
    {        
        Integer Num1= 30;
        System.debug(Num1);  //local   
        System.debug(This.Num1);   //current class variable
        System.debug(Super.Num1);  //Immediate parent class variable
    }      
    
}
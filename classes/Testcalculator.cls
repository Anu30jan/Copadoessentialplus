//Test Method should be written inside a Test Class only
//Test Method should be Static and void only
//Make sure that code coverage is 75% and above and all the Test methods pass
@isTest
public class Testcalculator
{
	@isTest
    Static void TestSubtract()
    {
        Calculator C = new Calculator(50,30);
        C.subtract();
        
        Integer r = C.getresult();
        system.assertEquals(20, r);
        
    }
    @isTest
    Static void TestMultiply()
    {
        Calculator C = new Calculator(5,3);
        C.Multiply();
        
        Integer r = C.getresult();
        system.assertEquals(15, r);
        
    }
    @isTest
    Static void Testadd()
    {
        Calculator C = new Calculator(10,10);
        C.add();
        
        Integer r = C.getresult();
        system.assertEquals(20, r);
        
    }
    @isTest
    Static void TestDivide()
    {
        Calculator C = new Calculator(10,10);
        C.Divide();
        
        Integer r = C.getresult();
        system.assertEquals(1, r);
        
    }
}
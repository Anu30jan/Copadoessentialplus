@isTest
public class TestLeadClass {
    
    @isTest static void TestInvalid()
    {
      string result= TaskPriority.TestLead('Montana');
       System.assertEquals(null,result);   
    }
    
    @isTest static void Testhigh()
    {
      string result= TaskPriority.TestLead('CA');
       System.assertEquals('High',result);   
    }
    
    @isTest static void Testlow()
    {
      string result= TaskPriority.TestLead('NY');
       System.assertEquals('Low',result);   
    }

}
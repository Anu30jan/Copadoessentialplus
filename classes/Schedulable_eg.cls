public class Schedulable_eg Implements Schedulable
{
	Public void Execute(schedulablecontext SC)
    {
        List<Patient__c> OP = [select Id,First_name__c from Patient__c ];
        For(Patient__c PT: OP)
        {
            PT.First_name__c = 'Schedulable';
            Update PT;           
        }        
    }
}
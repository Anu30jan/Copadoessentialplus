public class batchapex_eg Implements Database.Batchable<sObject>
{
	Public Database.Querylocator Start(Database.BatchableContext BC)
		{
			String Q = 'SELECT ID,Name from Subject__c';
            Return Database.getquerylocator(Q);
        
        }
   
   Public Void Execute(Database.BatchableContext BC,List<Subject__c> EL)
		{
			For(Subject__c EA: EL)
            {
                EA.name = 'Batch Apex';
                Update EA;
            }
		} 
    
   Public Void Finish(Database.BatchableContext BC)
		{
	
		}
}
public class Queuable_eg Implements Queueable 
{
	Public Void Execute(Queueablecontext QC)
    {
        List<Applicant__c> AP = [SELECT Id,Applicant_name__c from Applicant__c];
        For(Applicant__c EA:AP)
        {
            EA.Applicant_name__c = 'Qeue Apex';
            UPDATE EA;            
        }
        
    }
}
//create opportunities after account is created
 trigger Trigger_eg5 on Account (after insert)
{       
    List <opportunity> listopp = new list <opportunity> ();
     for (Account a: Trigger.new){
         Opportunity opp = new Opportunity();
         opp.name = a.name;
         opp.stagename = 'prospecting';
         opp.AccountId = a.Id;
         opp.closeDate = system.today();
         listopp.add(opp);
  }       
     If (listopp != null)
     {
         insert listopp;
     }            
}
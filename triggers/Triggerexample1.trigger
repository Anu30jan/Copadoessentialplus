trigger Triggerexample1 on Account (before insert,before update,after insert,after update,before delete,after delete) {
 
   If(Trigger.isBefore)
   {
       if(Trigger.isInsert)
       {
           for(Account acc:Trigger.new)
            {
                if(acc.ShippingCity==null &&acc.BillingCity!=null)      
                    acc.ShippingCity=acc.BillingCity;
                if(acc.ShippingCountry==null && acc.BillingCountry!=null)
                    acc.ShippingCountry= acc.BillingCountry;
                if(acc.ShippingState ==null && acc.BillingState!=null) 
                    acc.ShippingState= acc.BillingState;
                if(acc.ShippingStreet ==null && acc.BillingStreet!=null)
                    acc.ShippingStreet= acc.BillingStreet;
                if(acc.AnnualRevenue< 1000)
                    acc.AnnualRevenue.adderror('Annualrevenue cannot be less that 1000');  
            }  
       }
           
       if(Trigger.isUpdate)
       {
           for(Account accnew:Trigger.new){
        
               Account accold= Trigger.oldmap.get(accnew.id);
           if( accnew.name != accold.name){
                
                   accnew.name.adderror('Account name cannot be updated'); 
                }              
           }
       }
       
       if(Trigger.isDelete){
           for(Account acc:Trigger.old){
               if (acc.Active__c=='yes') {
                  acc.adderror('you cannot delete an active account');
               }   
           }
              
       }           
           
   }
           
    if(Trigger.isInsert && Trigger.isAfter||Trigger.isUpdate && Trigger.isAfter)
    {
            List<contact>conlist = new list<contact>();
        
            for(Account acc:Trigger.new)
            {
                contact con= new contact();
                con.firstname= acc.name;
                con.LastName= 'Trigger';
                con.AccountId = acc.Id;
                con.Email = 'abc@gmail.com';
                con.Phone = '123456789';
                conlist.add(con);               
            }  
        if(conlist!=null)
            insert conlist;
    }
}
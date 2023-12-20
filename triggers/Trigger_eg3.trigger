//Whenever new account is created, its rating should be hot//
////Make account number field mandatory using trigger//

trigger Trigger_eg3 on Account (Before insert,After insert) 
{
    
    if(Trigger.isbefore && Trigger.isInsert){
        
      for(Account A: Trigger.new)
    {  
     	A.rating = 'Hot'; 
        
        If (string.isblank(A.AccountNumber))
        {
          A.AccountNumber.adderror('Account number cannot be blank');  
        }
        
    }      
     
      Set<String> accountName = new Set<String>();
        for(Account accVar : Trigger.new){
            accountName.add(accVar.Name);
        }
        List<Account> duplicateAccounts = [SELECT Id, Name 
                                             FROM Account 
                                             WHERE Name IN :accountName]; 
        
        for(Account acc : duplicateAccounts){
            if(duplicateAccounts.size()!=0){
                acc.Name.addError('Account cannot be inserted');
            }
        }
        
         
             
             
             
         
          
               
    }

    if(Trigger.isAfter && Trigger.isInsert){
        
        List<contact> conlist = new List<Contact>();
        for(Account acc:Trigger.new){
            contact con= new contact();
            con.FirstName= acc.name;
            con.LastName = 'Trigger';
            con.Phone = '8884660125';
            con.AccountId= acc.Id;
            conlist.add(con);
        }
        insert conlist;
        
    }        

       
}
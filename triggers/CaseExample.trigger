trigger CaseExample on Case (before insert) {
	
    for(case c:Trigger.new){
        if(c.origin== 'email')
            c.Status = 'new';
        	c.Priority= 'medium';
    }
    
    
    
    
    
    
    set<Id> Linkedcases   = new set<Id>();
    for(case c:Trigger.new){
        if(c.AccountId != null){
             Linkedcases.add(c.AccountId);
            system.debug(Linkedcases);
        }           
    }
 Integer caseListCount = [Select count() from case where accountID IN: Linkedcases];
    If(caseListCount>=1)
    {
        system.debug(caseListCount);
        for(case c:Trigger.new){
            c.adderror('more than 1 case cannot be added');
        }
    }
    
}
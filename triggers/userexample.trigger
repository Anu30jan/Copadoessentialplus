//When on a User ,role is changed, 
//fetch all the opportunities owned by this user and update description as "user role changed"

trigger userexample on User (after update) {
    
    set<Id> userid = new set<id>();
    for(user Unew: Trigger.new){
        user Uold = Trigger.oldmap.get(Unew.Id);
        if(Unew.Phone != Uold.Phone){
           userid.add(Unew.Id);
            system.debug(Userid);
        }                       
    }
    List<opportunity> opplist = new List<opportunity>();
    for(opportunity opp:[select id,Description from Opportunity where OwnerId IN:userid]){
        	opp.Description = 'user role changed'; 
        	opplist.add(opp);
    }
    if(opplist != null)
    {
        system.debug(opplist);
        update opplist;
    }
    
}
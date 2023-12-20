trigger LeadExample on Lead (before insert) {
    
    for(Lead L:Trigger.new){
        if(L.leadsource == 'web'){
           L.Rating = 'Cold'; 
        }
        else{
            L.Rating = 'Hot';
        }   
        
    }

}
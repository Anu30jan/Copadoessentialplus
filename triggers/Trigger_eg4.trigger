//create a trigger on opportunity,opp cannot be updated from closed won to closed lost
////Method 1
trigger Trigger_eg4 on Opportunity (before update) {
    integer i= 0;
    for(opportunity opp:Trigger.new)
    {
       if (opp.StageName == 'closed Lost' && Trigger.old[i].stagename == 'closed won')
           opp.adderror ('opp canot be changed from closed won to closed lost');       
    }
    i++;
}
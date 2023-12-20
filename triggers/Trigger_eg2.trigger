trigger Trigger_eg2 on Account (before insert,before update, before delete) 
{
	If(TRigger.IsInsert)
    {
        
       TestTrigger_eg1.beforeinsert(Trigger.New);
    }
    Else If(Trigger.IsUpdate)
    {
    	//   TestTrigger_eg2.beforeupdate(Trigger.New); 
    }
    Else if(TRigger.IsDelete)
    {
        
    }
}
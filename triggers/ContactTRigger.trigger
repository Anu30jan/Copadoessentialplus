trigger ContactTRigger on Contact (before insert,before update,after insert,after update)
{
	If(Trigger.isInsert||Trigger.isUpdate && Trigger.isBefore)
    {
        ContactTriggerhandler.createrecord(Trigger.new);
    }
        
}
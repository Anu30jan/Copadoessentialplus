//Logicless Trigger, Logics should be always written inside a class

trigger Trigger_eg1 on Account (before insert) {
	TestTrigger_eg1.beforeinsert(Trigger.New);
}
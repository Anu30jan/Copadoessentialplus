public class TestTrigger_eg1 {
	Public static void	beforeinsert(List<Account>	newList)
	{
		For	(Account Acc:newList)
			{
				Acc.description	=	'Test	description';
			}
	}
}
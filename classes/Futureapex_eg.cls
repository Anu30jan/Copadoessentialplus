public class Futureapex_eg
{
	@Future
    Public static void Method1()
    {
        system.debug('Method1- Good Morning');
         system.debug('Method1- Good Afternoon');
         system.debug('Method1- Good Evening');
    }
    
    @Future
    Public static void Method2()
    {
        system.debug('Method2- Good Morning');
         system.debug('Metho2- Good Afternoon');
         system.debug('Method2- Good Evening');
    }
    Public static void Method3()
    {
        system.debug('Method3- Good Morning');
        Method1();
         system.debug('Method3- Good Afternoon');
        Method2();
         system.debug('Method3- Good Evening');
    }
}
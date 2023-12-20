public class ContactTriggerhandler 
{
	Public static void createrecord(List<Contact> conlist)
    {
        for(Contact con:conlist)
        {
           if(con.email== null|| con.email== '    ') 
           	{
             con.email.adderror('Please enter email ID');                 
           	}
            else if(con.phone== null ||con.phone=='   ')
            {
               con.phone.adderror('Please enter phone number');   
            }          
        }       
    }
}
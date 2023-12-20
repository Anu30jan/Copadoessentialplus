public class Temperature 
{
	Public Static Decimal FtoC(Decimal fh)
    {
        Decimal result = (fh-32)* 5/9;
        Return result.setScale(2);
    }
}
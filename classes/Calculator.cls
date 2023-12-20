public class Calculator 
{
	Private Integer a,b,result;
    
    Public calculator(Integer a, Integer b)
    {
        this.a = a;
        this.b = b;
    }
    public void add()
    {
        result = a + b;
    }
    public void subtract()
    {
        result = a - b;
    }
    public void Multiply()
    {
        result = a * b;
    }
    public void Divide()
    {
        If(b==0)
            result = 0;
        else
            result = a/b;
    }
    
    Public integer getresult()
    {
        return result;
    }
    
}
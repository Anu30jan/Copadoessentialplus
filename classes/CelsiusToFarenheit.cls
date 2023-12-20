public class CelsiusToFarenheit {

    public static decimal convert(decimal fh)
    {
        Decimal cs = (fh - 32) * 5/9;
        return cs.setScale(2);
    }
}
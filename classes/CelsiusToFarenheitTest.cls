@isTest
public class CelsiusToFarenheitTest {
    @isTest
    static void testwarmtemperature(){
        
        Decimal celsius = CelsiusToFarenheit.convert(70);
        System.assertEquals(21.11,celsius);
    }
    
    @isTest
    static void testfreezingpoint(){
        
        Decimal celsius = CelsiusToFarenheit.convert(32);
        System.assertEquals(0,celsius);
    }
     @isTest static void testBoilingPoint() {
        Decimal celsius = CelsiusToFarenheit.convert(212);        
        System.assertEquals(0,celsius,'Boiling point temperature is not expected.');
    } 
    @isTest static void testNegativeTemp() {
        Decimal celsius = CelsiusToFarenheit.convert(-10);
        System.assertEquals(-23.33,celsius);
    }

}
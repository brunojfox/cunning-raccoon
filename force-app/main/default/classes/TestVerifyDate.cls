@isTest
public class TestVerifyDate {
	
    @isTest static void testDateWithin30Days() {
        Date date1 = Date.newInstance(2022, 6, 27);
		Date date2 = date1.addDays(2);
        
        System.assertEquals(date2, VerifyDate.CheckDates(date1, date2));
    }
    
    @isTest static void testDateLessThan30Days() {
        
        Date date1 = Date.newInstance(2022, 6, 27);
		Date date2 = date1.addDays(2);
        Date result = Date.newInstance(2022, 6, 30);
        
        System.debug(VerifyDate.CheckDates(date2, date1));
        System.assertEquals(result, VerifyDate.CheckDates(date2, date1));
    }
    
    @isTest static void testDateMoreThen30Days() {
        Date date1 = Date.newInstance(2022, 6, 27);
		Date date2 = date1.addDays(30);
        Date result = Date.newInstance(2022, 6, 30);
        System.assertEquals(result, VerifyDate.CheckDates(date1, date2));
    }
}
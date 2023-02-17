@isTest
public class TestRestrictContactByName {

    @isTest static void testInsertContactSuccess() {
        // Test data setup
        // Create an acccount with an opportunity, and then try to delete it
        Contact contact = new Contact(LastName='LastName Contact');
        
        // Perform test
        Test.startTest();
        Database.SaveResult result = Database.insert(contact, false);
        Test.stopTest();
        // Verify
        System.assert(result.isSuccess());
    }
    
    @isTest static void testInsertContactFail() {
        // Test data setup
        // Create an acccount with an opportunity, and then try to delete it
        Contact contact = new Contact(LastName='INVALIDNAME');
        
        // Perform test
        Test.startTest();
        Database.SaveResult result = Database.insert(contact, false);
        Test.stopTest();
        // Verify
        System.assert(!result.isSuccess());
    }
    
}
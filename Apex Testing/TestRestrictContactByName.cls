@isTest
public class TestRestrictContactByName {
    @isTest
    public static void Test(){
        List<Contact> listContact= new List<Contact>();
    	Contact c1 = new Contact(LastName='INVALIDNAME');
        Contact c2 = new Contact(LastName='Pinky');
        listContact.add(c1);
        listContact.add(c2);
        Test.startTest();
    	try
            {
                insert listContact;
            }
            catch(Exception e)
            {
                System.debug('Error');
            }
        Test.stopTest();
    }
}
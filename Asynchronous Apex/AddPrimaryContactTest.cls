@isTest
public class AddPrimaryContactTest {
	@isTest
    public static void testQueueableClass(){
        List<Account> accs = new List<Account>();
        For (Integer i=0;i<100;i++){
            Account acc = new Account(Name='Test Account');
            if (i<50){
                acc.BillingState='NY';
            } else{
                acc.BillingState='CA';
            }
            accs.add(acc);
        }
        insert accs;
        Contact con = new Contact(Firstname='Pink', LastName='Cut');
        insert con;
        Test.startTest();
        ID jobID = System.enqueueJob(new AddPrimaryContact(con,'CA'));
        Test.stopTest();
        List<Contact> contacts = [SELECT Id FROM Contact WHERE Contact.Account.BillingState='CA'];
        System.assertEquals(100,contacts.size(),'ERROR');
    }
}
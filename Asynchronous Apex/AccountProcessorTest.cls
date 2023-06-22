@IsTest
public class AccountProcessorTest {
    public static testmethod void TestAccountProcessorTest() 
    {
        Account a = new Account(Name='Test');
        Insert a;

        Contact cont = New Contact(FirstName='Pink',LastName='Cut',AccountId=a.Id);
        Insert cont;
        
        List<Id> ListAccId = new List<ID>();
        ListAccId.add(a.id);
 
        Test.startTest();
        	AccountProcessor.countContacts(ListAccId);
        Test.stopTest();
        
        Account acc = [SELECT Number_of_Contacts__c FROM Account WHERE id = :a.id LIMIT 1];
        System.assertEquals (Integer.valueOf(ACC.Number_of_Contacts__c),1);
    }
  
}
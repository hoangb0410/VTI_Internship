public class AccountProcessor {
	@future
     public static void countContacts(List<id> ListId)
     {
         List<Account> accs = [SELECT id, Number_of_Contacts__c ,(SELECT id from Contacts) FROM Account where id in :ListId ];
         for( Account acc : accs )
         {
             List<Contact> cons = acc.contacts ;
             acc.Number_of_Contacts__c = cons.size();
         }
         update accs;
     }
}
public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer n, String lastName){
        List<Contact> cons = new List<Contact>();
        for( Integer i = 0; i < n; i++ )
		{
			Contact con = new Contact( FirstName = 'Test '+i, LastName = lastName );
			cons.add( con );
		}
        return cons;
    }    
}
public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String s){
       	List<List<SObject>> l1 = [FIND :s IN ALL FIELDS RETURNING Contact(FirstName,LastName), Lead(FirstName,LastName)];
        return l1;
    }
}
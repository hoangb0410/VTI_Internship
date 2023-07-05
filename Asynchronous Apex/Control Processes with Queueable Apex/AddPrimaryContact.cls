public class AddPrimaryContact implements Queueable{
    private Contact con;
    private String state; 
    public AddPrimaryContact(Contact con, String state){
        this.con = con;
        this.state = state;
    }
    public void execute(QueueableContext qc){
        List<Account> accs = [SELECT Id FROM Account WHERE BillingState = :state LIMIT 200];    
        List<Contact> cons = new List<Contact>();
        For (Account acc:accs){
        	Contact contactClone = con.clone();
        	contactClone.AccountId = acc.Id;    
            cons.add(contactClone);
        }
        INSERT cons;
    }
}
public class DailyLeadProcessor implements Schedulable{
    public void execute(SchedulableContext ctx){
        List<Lead> leads = [SELECT Id, LeadSource FROM Lead WHERE LeadSource = '' LIMIT 200];
        if(leads.size() > 0){
            List<Lead> leads2 = new List<Lead>();
            for(Lead lead : leads){
                lead.LeadSource = 'DreamForce';
                leads2.add(lead);
            } 
            update leads2;
        }
    }
}
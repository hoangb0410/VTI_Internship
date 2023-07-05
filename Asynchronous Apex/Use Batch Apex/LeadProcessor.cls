public class LeadProcessor implements Database.Batchable<SObject>{
    public Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator([SELECT LeadSource FROM Lead]);
    }
    public void execute(Database.BatchableContext BC, List<Lead> leads){
          for (Lead l : leads) 
          {
              l.LeadSource = 'Dreamforce';
          }
        update leads;
    }
    public void finish(Database.BatchableContext BC){}
}
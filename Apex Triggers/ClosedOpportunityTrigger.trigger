trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> List_task = new List<Task>();
    for (Opportunity opp : Trigger.new){
        if (opp.StageName == 'Closed Won'){
            List_task.add(new Task(Subject = 'Follow Up Test Task', WhatId = opp.Id));
        }    
    }
    if(List_task.size()>0){    
        insert List_task;   
    }
}
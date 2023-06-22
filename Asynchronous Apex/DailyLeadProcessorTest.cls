@isTest
private class DailyLeadProcessorTest{
    public static String sch = '0 0 0 23 6 ? 2023'; //Midnight 23/6/2023
    static testmethod void testScheduledJob(){
        List<Lead> leads = new List<Lead>();       
        for(Integer i = 0; i < 200; i++){
            Lead lead = new Lead(LastName = 'LastName '+i, LeadSource = '', Company = 'Company '+i, Status = 'Status'+i);
            leads.add(lead);
        }
        insert leads;       
        Test.startTest();
        String jobId = System.schedule('Update LeadSource', sch, new DailyLeadProcessor());
        Test.stopTest();
    }
}
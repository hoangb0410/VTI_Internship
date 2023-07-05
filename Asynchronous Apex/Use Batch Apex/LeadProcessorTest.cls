@isTest
public class LeadProcessorTest {   
    @isTest
	static void test() 
    {
        List<Lead> leads = new List<Lead>();
        for(Integer i=0 ;i <200;i++)
        {
            Lead l = new Lead(Firstname='FirstName',LastName='LastName '+i,Company='Company '+i);
            leads.add(l);
        } 
        insert leads;  
        Test.startTest();
            LeadProcessor obj = new LeadProcessor();
            DataBase.executeBatch(obj);             
        Test.stopTest();
    }
}
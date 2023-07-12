@isTest
public class UpdateRenosyConfigTest { 
    @isTest //OK
    static void UpdateMappingDataTest(){
        SF_API_Renosy__RENOSY_Config__c new_record1 = new SF_API_Renosy__RENOSY_Config__c ();
        new_record1.SF_API_Renosy__CustomObjectField__c = 'HomePhone__c';
        new_record1.SF_API_Renosy__CustomObject__c = 'Account';
        new_record1.SF_API_Renosy__RenosyObjectField__c='RENOSYAccountID__c';
        new_record1.SF_API_Renosy__RenosyObject__c='RENOSY_Lead';
        insert new_record1;
        
        SF_API_Renosy__RENOSY_Config__c new_record2 = new SF_API_Renosy__RENOSY_Config__c ();
        new_record2.SF_API_Renosy__CustomObjectField__c = 'kaitsuke__c';
        new_record2.SF_API_Renosy__CustomObject__c = 'Opportunity';
        new_record2.SF_API_Renosy__RenosyObjectField__c='Name';
        new_record2.SF_API_Renosy__RenosyObject__c='RENOSY_Opportunity';
        insert new_record2;
        
        SF_API_Renosy__RENOSY_Config__c new_record3 = new SF_API_Renosy__RENOSY_Config__c ();
        new_record3.SF_API_Renosy__CustomObjectField__c = 'Field8__c';
        new_record3.SF_API_Renosy__CustomObject__c = 'Opportunity';
        new_record3.SF_API_Renosy__RenosyObjectField__c='Opportunity_room__c';
        new_record3.SF_API_Renosy__RenosyObject__c='RENOSY_Opportunity';
        insert new_record3;
        
        SF_API_Renosy__RENOSY_Config__c new_record4 = new SF_API_Renosy__RENOSY_Config__c ();
        new_record4.SF_API_Renosy__CustomObjectField__c = 'Id';
        new_record4.SF_API_Renosy__CustomObject__c = 'Room__c';
        new_record4.SF_API_Renosy__RenosyObjectField__c='Name';
        new_record4.SF_API_Renosy__RenosyObject__c='RENOSY_Room';
        insert new_record4;
        Test.startTest();
        UpdateRenosyConfig.UpdateMappingData('PhoneCheck__c','NameKana__c','BKmemo__c','Quote', 'Description');
        Test.stopTest();
    }       
    @isTest  //OK
    static void CreateMappingContractTest(){
        Test.startTest();
        UpdateRenosyConfig.CreateMappingContract('【RENOSY】mnp', 'mnp');
        Test.stopTest();
    }
    @isTest  // OK
    static void DeleteMappingContractTest(){
        SF_API_Renosy__RENOSY_Contract_Config__c new_record = new SF_API_Renosy__RENOSY_Contract_Config__c();
        new_record.SF_API_Renosy__Contract_Title_Matching__c = '【RENOSY】mnp';
        new_record.SF_API_Renosy__Contract_Title__c = 'mnp';
        insert new_record;
        Test.startTest();
        UpdateRenosyConfig.DeleteMappingContract('【RENOSY】mnp', 'mnp');
        Test.stopTest();
    }
    @isTest // OK
    static void UpdateMappingContract(){
        SF_API_Renosy__RENOSY_Contract_Config__c new_record = new SF_API_Renosy__RENOSY_Contract_Config__c();
        new_record.SF_API_Renosy__Contract_Title_Matching__c = '【RENOSY】mnp';
        new_record.SF_API_Renosy__Contract_Title__c = 'mnp';
        insert new_record;
        Test.startTest();
        UpdateRenosyConfig.UpdateMappingContract('【RENOSY】mnp', 'mnp', '【RENOSY】abcd', 'abcd');
        Test.stopTest();
    }
    @isTest
    static void UpdateExpiredTimeTest(){
        SF_API_Renosy__RENOSY_Contract_Config__c new_record = new SF_API_Renosy__RENOSY_Contract_Config__c();
        new_record.Name = 'a0yBW0000002MsT';
        new_record.SF_API_Renosy__Expired_Time__c=18;
        insert new_record;
        Test.startTest();
        UpdateRenosyConfig.UpdateExpiredTime(18);
        Test.stopTest();
    }
}
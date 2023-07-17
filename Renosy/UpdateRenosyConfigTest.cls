@isTest
public class UpdateRenosyConfigTest { 
    @isTest //OK
    static void CreateMappingDataTest(){
        Test.startTest();
        UpdateRenosyConfig.CreateMappingData('PhoneCheck__c','NameKana__c','BKmemo__c','Quote', 'Description');
        Test.stopTest();
    }       
    @isTest  //OK
    static void CreateMappingContractTest(){
        Test.startTest();
        UpdateRenosyConfig.CreateMappingContract('【RENOSY】mnp', 'mnp');
        Test.stopTest();
    }
    @isTest // OK
    static void CreateExpiredTimeTest(){
        SF_API_Renosy__RENOSY_Contract_Config__c new_record = new SF_API_Renosy__RENOSY_Contract_Config__c();
        insert new_record;
        Test.startTest();
        UpdateRenosyConfig.CreateExpiredTime(18);
        Test.stopTest();
    }
}
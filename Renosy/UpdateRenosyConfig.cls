public class UpdateRenosyConfig {
    public static void UpdateMappingData(String Field1, String Field2, String Field3, String Object1, String Field4){
            //Object 1 (Account Information)
        // Field 1 (Account Id) 
        SF_API_Renosy__RENOSY_Config__c record1 = [SELECT Name, SF_API_Renosy__CustomObjectField__c, SF_API_Renosy__CustomObject__c, SF_API_Renosy__RenosyObjectField__c, SF_API_Renosy__RenosyObject__c From SF_API_Renosy__RENOSY_Config__c where SF_API_Renosy__CustomObject__c = 'Account'];
        record1.SF_API_Renosy__CustomObjectField__c = Field1;
        update record1;
            //Object 2 (Opportunity Information)
        // Field 1 (Property Name)
        SF_API_Renosy__RENOSY_Config__c record2 = [SELECT Name, SF_API_Renosy__CustomObjectField__c, SF_API_Renosy__CustomObject__c, SF_API_Renosy__RenosyObjectField__c, SF_API_Renosy__RenosyObject__c From SF_API_Renosy__RENOSY_Config__c where SF_API_Renosy__CustomObject__c = 'Opportunity' AND SF_API_Renosy__RenosyObjectField__c='Name'];
        record2.SF_API_Renosy__CustomObjectField__c = Field2;
        update record2;
        //Field 2 (Mapping to Room Information)
        SF_API_Renosy__RENOSY_Config__c record3 = [SELECT Name, SF_API_Renosy__CustomObjectField__c, SF_API_Renosy__CustomObject__c, SF_API_Renosy__RenosyObjectField__c, SF_API_Renosy__RenosyObject__c From SF_API_Renosy__RENOSY_Config__c where SF_API_Renosy__CustomObject__c = 'Opportunity' AND SF_API_Renosy__RenosyObjectField__c='Opportunity_room__c'];
        record3.SF_API_Renosy__CustomObjectField__c = Field3;
        update record3;
            //Object 3 (Room Information)
        SF_API_Renosy__RENOSY_Config__c record4 = [SELECT Name, SF_API_Renosy__CustomObjectField__c, SF_API_Renosy__CustomObject__c, SF_API_Renosy__RenosyObjectField__c, SF_API_Renosy__RenosyObject__c From SF_API_Renosy__RENOSY_Config__c where SF_API_Renosy__RenosyObjectField__c = 'Name' AND SF_API_Renosy__RenosyObject__c = 'RENOSY_Room'];
        record4.SF_API_Renosy__CustomObject__c = Object1;
        record4.SF_API_Renosy__CustomObjectField__c = Field4;
        update record4;
    }
    	// Create Mapping Contract
    public static void CreateMappingContract(String S1, String S2){
        SF_API_Renosy__RENOSY_Contract_Config__c record5 = new SF_API_Renosy__RENOSY_Contract_Config__c();
        record5.SF_API_Renosy__Contract_Title_Matching__c = S1;
        record5.SF_API_Renosy__Contract_Title__c = S2;
        insert record5;
    }
    	// Delete Mapping Contract
    public static void DeleteMappingContract(String S1, String S2){
        SF_API_Renosy__RENOSY_Contract_Config__c record6 = [SELECT SF_API_Renosy__Contract_Title_Matching__c, SF_API_Renosy__Contract_Title__c, SF_API_Renosy__Expired_Time__c from SF_API_Renosy__RENOSY_Contract_Config__c where SF_API_Renosy__Contract_Title_Matching__c =:S1  OR SF_API_Renosy__Contract_Title__c =:S2];
		delete record6;
    }
    	// Update Mapping Contract
    public static void UpdateMappingContract(String S1, String S2, String S1up, String S2up){
        SF_API_Renosy__RENOSY_Contract_Config__c record7 = [SELECT SF_API_Renosy__Contract_Title_Matching__c, SF_API_Renosy__Contract_Title__c, SF_API_Renosy__Expired_Time__c from SF_API_Renosy__RENOSY_Contract_Config__c WHERE SF_API_Renosy__Contract_Title_Matching__c =:S1 OR SF_API_Renosy__Contract_Title__c =:S2];
        record7.SF_API_Renosy__Contract_Title_Matching__c = S1up;
        record7.SF_API_Renosy__Contract_Title__c = S2up;
        update record7;
    }
    	// Update Expired Time
    public static void UpdateExpiredTime(Integer n){
        SF_API_Renosy__RENOSY_Contract_Config__c record8 = [SELECT SF_API_Renosy__Contract_Title_Matching__c, SF_API_Renosy__Contract_Title__c, SF_API_Renosy__Expired_Time__c from SF_API_Renosy__RENOSY_Contract_Config__c WHERE Name = 'a0yBW0000002MsT'];
        record8.SF_API_Renosy__Expired_Time__c=n;
        update record8;
    }
}
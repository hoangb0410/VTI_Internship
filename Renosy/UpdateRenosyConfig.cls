public class UpdateRenosyConfig {
    	//Create Mapping Data
    public static void CreateMappingData(String AccountId, String PropertyName, String RoomInformationMapping, String Object3, String RoomNumber){
        List <SF_API_Renosy__RENOSY_Config__c> list1 = new List<SF_API_Renosy__RENOSY_Config__c>();
        //Object 1 (Account Information)
        // Field 1 (Account Id) 
        SF_API_Renosy__RENOSY_Config__c record1 = new SF_API_Renosy__RENOSY_Config__c();
        record1.SF_API_Renosy__CustomObjectField__c = AccountId;
        record1.SF_API_Renosy__CustomObject__c = 'Account';
        record1.SF_API_Renosy__RenosyObjectField__c = 'RENOSYAccountID__c';
        record1.SF_API_Renosy__RenosyObject__c = 'RENOSY_Lead';
        list1.add(record1);
        //Object 2 (Opportunity Information)
        // Field 1 (Property Name)
        SF_API_Renosy__RENOSY_Config__c record2 = new SF_API_Renosy__RENOSY_Config__c();
        record2.SF_API_Renosy__CustomObjectField__c = PropertyName;
        record2.SF_API_Renosy__CustomObject__c = 'Opportunity';
        record2.SF_API_Renosy__RenosyObjectField__c='Name';
        record2.SF_API_Renosy__RenosyObject__c = 'RENOSY_Opportunity';
        list1.add(record2);
        //Field 2 (Mapping to Room Information)
        SF_API_Renosy__RENOSY_Config__c record3 = new SF_API_Renosy__RENOSY_Config__c();
        record3.SF_API_Renosy__CustomObjectField__c = RoomInformationMapping;
        record3.SF_API_Renosy__CustomObject__c = 'Opportunity';
        record3.SF_API_Renosy__RenosyObjectField__c='Opportunity_room__c';
        record3.SF_API_Renosy__RenosyObject__c = 'RENOSY_Opportunity';
        list1.add(record3);
        //Object 3 (Room Information)
        SF_API_Renosy__RENOSY_Config__c record4 = new SF_API_Renosy__RENOSY_Config__c();
        record4.SF_API_Renosy__CustomObjectField__c = RoomNumber;
        record4.SF_API_Renosy__CustomObject__c = Object3;
        record4.SF_API_Renosy__RenosyObjectField__c = 'Name';
        record4.SF_API_Renosy__RenosyObject__c = 'RENOSY_Room';
        list1.add(record4);
        
        insert list1;
    }
    
   	// Create Mapping Contract
    public static void CreateMappingContract(String MatchingFileName, String MypageDisplayFileName){
        SF_API_Renosy__RENOSY_Contract_Config__c record5 = new SF_API_Renosy__RENOSY_Contract_Config__c();
        record5.SF_API_Renosy__Contract_Title_Matching__c = MatchingFileName;
        record5.SF_API_Renosy__Contract_Title__c = MypageDisplayFileName;
        insert record5;
    }
    	
    // Create Expired Time
    public static void CreateExpiredTime(Integer ExpiredTime){
        SF_API_Renosy__RENOSY_Contract_Config__c record8 = new SF_API_Renosy__RENOSY_Contract_Config__c();
        record8.SF_API_Renosy__Expired_Time__c=ExpiredTime;
        insert record8;
    }
}
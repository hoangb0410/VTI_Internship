public class UpdateRenosyConfigScript {
    public static void UpdateRenosy(){
        // Update Mapping Data
        UpdateRenosyConfig.CreateMappingData('PhoneCheck__c','NameKana__c','BKmemo__c','Quote', 'Description');

        // Create New Mapping Contract File Name
        UpdateRenosyConfig.CreateMappingContract('【RENOSY】専任媒介契約書', '専任媒介契約書');
    	
        // Update Contract URL Expired Time
        UpdateRenosyConfig.CreateExpiredTime(30);
    }
}
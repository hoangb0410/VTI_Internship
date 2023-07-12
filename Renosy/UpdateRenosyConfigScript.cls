public class UpdateRenosyConfigScript {
    // Update Mapping Data
public static void updateRenosyConfig(){
    UpdateRenosyConfig.UpdateMappingData('PhoneCheck__c','NameKana__c','BKmemo__c','Quote', 'Description');
}
    // Create New Mapping Contract File Name
public static void CreateContractFileName(){
    UpdateRenosyConfig.CreateMappingContract('【RENOSY】mnp', 'mnp');
}
    // Delete Mapping Contract File Name
public static void DeleteContractFileName(){
    UpdateRenosyConfig.DeleteMappingContract('【RENOSY】abcd', 'abcd');
}
    // Update Mapping Contract File Name
public static void UpdateContractFileName(){
    UpdateRenosyConfig.UpdateMappingContract('【RENOSY】mnp', 'mnp', '【RENOSY】abcd', 'abcd');
}
    // Update Contract URL Expired Time
public static void UpdateContractExpiredTime(){
    UpdateRenosyConfig.UpdateExpiredTime(10);
}
}
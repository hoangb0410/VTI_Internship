public class RefreshPAM08Handler {
    public static void initData() {
        initDataRoom();
        initNameCredential();
        initRenosyConfig();
        initDevUser();
    }
    private static void initDataRoom(){
        ExcelImportRoom.createRecord(); 
    }
    private static void initNameCredential(){
        List<MetadataService.NamedCredential> listNC = new List<MetadataService.NamedCredential>();
             for (NamedCredential nc : [Select MasterLabel, DeveloperName, Endpoint, PrincipalType from NamedCredential]){
             MetadataService.NamedCredential credential = new MetadataService.NamedCredential();
                credential.label = nc.MasterLabel;
                credential.fullName = nc.DeveloperName;
                credential.principalType = nc.principalType;
                credential.protocol = 'NoAuthentication';   
                credential.endpoint = nc.Endpoint + '_NEW';     
                listNC.add(credential);
       }
        MetadataServiceExamples.updateMetadata(listNC);

        MetadataService.NamedCredential credential = new MetadataService.NamedCredential();
               credential.fullName = 'Demo_Credential3';
               credential.label = 'Demo Credential3';
               credential.endpoint = 'https://www.youtube.com.vn';
               credential.principalType = 'Anonymous';
               credential.protocol = 'NoAuthentication';
        MetadataServiceExamples.createMetadata(credential);
    }
    public static void initRenosyConfig() {
        UpdateRenosyConfig.CreateMappingData('PhoneCheck__c','NameKana__c','BKmemo__c','Quote', 'Description');
        UpdateRenosyConfig.CreateMappingContract('【RENOSY】mnp', 'mnp');
        UpdateRenosyConfig.UpdateExpiredTime(30);
    }
    public static void initDevUser(){
        List<List<String>> info = new List<List<String>>{
            new List<String>{'Nguyen','A','A','NguyenA@abc.com','NguyenA@abc.com','Asia/Ho_Chi_Minh','en_US','UTF-8','vi_VN'},
            new List<String>{'Le','B','B','LeB@human.com','LeB@human.com','Asia/Ho_Chi_Minh','en_US','UTF-8','vi_VN'}
    	};
        CreateUser.CreateNewUser(info);
    }
}
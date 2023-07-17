public class CreateUser {
    public static void CreateNewUser(String s1, String s2, String s3, String s4, String s5, String s6, String s7, String s8, String s9){
        Profile profileId = [SELECT Id FROM Profile WHERE Name = 'System Administrator' LIMIT 1];
        User usr = new User(LastName = s1, FirstName=s2, Alias = s3, Email = s4, Username = s5, ProfileId = profileId.id, TimeZoneSidKey = s6, LanguageLocaleKey = s7, EmailEncodingKey = s8, LocaleSidKey = s9);
        insert usr;
    }
}
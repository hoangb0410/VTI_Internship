public class AccountHandler {
    public static Account insertNewAccount(String s){
        if (s!=''){
            try{
                Account acc = new Account(Name=s);
        		insert acc;
                return acc;
            } catch (Exception e){
                return null;
            }            
        } else{
            return null;
        }     
    }
}
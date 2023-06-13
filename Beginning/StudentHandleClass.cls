public class StudentHandleClass {
    public static void sendEmailNotifi(List<Students__c> lstStu){
        List<Messaging.Email> lstEmail = new List<Messaging.Email>();
        for (Students__c stu : lstStu) {
            if (stu.FamilyEmail__c != null){
            Messaging.SingleEmailMessage emailMsg = new Messaging.SingleEmailMessage();
            String[] toAddress = new String[]{stu.FamilyEmail__c};
            emailMsg.setToAddresses(toAddress);
            String emailSub = 'Notify study result of '+ stu.Name ;
            emailMsg.setSubject(emailSub);
            String content = 'Hi ' + stu.Name +'\'s family'+',<br/><br/>' + 'This is study result of your children! <br/>';         
                if (stu.TotalYearPoint__c<=7)   {
                    content += 'Hoc luc: Trung binh <br/>';
                } else if (stu.TotalYearPoint__c>=9){
                    content += 'Hoc luc: Gioi <br/>';
                } else {
                    content += 'Hoc luc: Kha <br/>';
                }
            content += 'Sinh ngay '+stu.Birthday__c.day()+' thang '+stu.Birthday__c.month()+' nam '+stu.Birthday__c.year(); 
            emailMsg.setHtmlBody(content);
            lstEmail.add(emailMsg);
            }
        }
        Messaging.sendEmail(lstEmail);
    }
}
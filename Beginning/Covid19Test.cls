@isTest
public class Covid19Test {
    @isTest
    public static void treatPatientTest(){
        Covid19 jaipur = new Covid19(10);
        Integer treated =jaipur.getTreated();
        System.assertEquals(10,treated,'Treated count does not match');
        
        Covid19 hyd = new Covid19(112);
        treated =hyd.getTreated();
        System.assertEquals(112,treated,'Treated count does not match');
        System.assertEquals(122,Covid19.recoveredInCountry,'Treated count does not match');
        jaipur.treatPatient();
        System.assert(treated==10,'Treated count does not match');
        System.assert(Covid19.recoveredInCountry==122,'Treated count does not match');
    }
}
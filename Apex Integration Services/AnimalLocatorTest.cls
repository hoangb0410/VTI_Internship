@isTest
private class AnimalLocatorTest{
    @isTest static  void AnimalLocatorTest1() {
        Test.SetMock(HttpCallOutMock.class, new AnimalLocatorMock());
        string actual=AnimalLocator.getAnimalNameById(1);
        string expected='moose';
        System.assertEquals(actual, expected);
    }
}

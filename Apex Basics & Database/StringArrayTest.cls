public class StringArrayTest {
    public static List<String> generateStringArray(Integer n){
        List<String> str = new List<String>();
        Integer i=0;
        While (i<n){
            str.add('Test '+i);
            i++;
        }
        return str;
    }
}
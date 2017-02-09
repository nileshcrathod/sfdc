public class StudentController {
	@AuraEnabled
    public static List<Student__c> showStudents() {
        List<Student__c> sList = [SELECT fname__c, lname__c, email__c FROM Student__c ORDER BY fname__c];
        return sList;
    }
    
    @AuraEnabled
    public static String insertRec(String cfname, String clname, String cemail) {
        Student__c student = new Student__c();
        student.fname__c = cfname;
        student.lname__c = clname;
        student.email__c = cemail;
        Database.SaveResult rs = Database.insert(student);
        if(rs.isSuccess()) {
            return 'Record Successfully loaded';
        } else {
            return 'Failed';
        }
        
    }
}
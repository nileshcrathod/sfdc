public class SoundController {
    @AuraEnabled
    public static List<SoundUrl__c> showRecords() {
        List<SoundUrl__c> sList = [SELECT Name, Url__c FROM SoundUrl__c ORDER BY name];
        return sList;
    }
    
    @AuraEnabled
    public static SoundUrl__c showRecord(Id recordId) {
        SoundUrl__c record = null;
        List<SoundUrl__c> sList = [SELECT Name, Url__c FROM SoundUrl__c WHERE Id =: recordId];

        if(!sList.isEmpty()) {
            record = sList[0];
        }
        
        return record;
    }
}
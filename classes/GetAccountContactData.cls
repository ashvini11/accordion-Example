public with sharing class GetAccountContactData {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountData() {
        return [SELECT Id, Name ,(Select Id ,Name from Contacts) from Account];
    }
}
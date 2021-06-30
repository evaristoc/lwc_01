public with sharing class AccountListControllerLwc {
    @AuraEnabled(cacheable=true)
    public static List<Contact> queryRelatedContacts(Id accountId) {
        return [
            SELECT Name, Title, Email, Phone
            FROM Contact
            WHERE AccountId = :accountId
        ];
    }

    @AuraEnabled(cacheable=true)
    public static List<Accounts> queryAccountsByRevenue(Decimal annualRevenue) {
        return [
            SELECT Id, Name
            FROM Account
            WHERE AnnualRevenue >= :annualRevenue 
        ];
    }

}

@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
    @HttpGet
    global static Account getAccount() {
        RestRequest req = RestContext.request;
        String accId = req.requestURI.substringBetween('Accounts/', '/contacts');
        Account acc = [SELECT Id, Name, (Select Id, Name from Contacts) from Account where Id= :accId];
        return acc;
    }

    public int getNumber() {
        return 2;
    }
}
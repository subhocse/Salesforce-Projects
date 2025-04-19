public with sharing class ContactController {

    @AuraEnabled(cacheable=true)    
    public static List<Contact> getContacts(){

        return[
            Select FirstName, LastName, Email From Contact
            With SECURITY_ENFORCED
            ORDER BY FirstName
        ];

        // throw new AuraHandledException('Forced error');

    }


    
}


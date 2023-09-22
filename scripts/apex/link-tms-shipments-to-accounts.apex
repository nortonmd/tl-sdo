// Get Accounts for Shippers
List<Id> shipperIds = new List<Id>();
for ( Account account : [SELECT Id, Name FROM Account WHERE Name IN ('Acme Partners', 'Omega, Inc.')]) {
    shipperIds.add( account.Id);
}

List<Id> consigneeIds = new List<Id>();
for ( Account account : [SELECT Id, Name FROM Account WHERE Name IN ('Salesforce') ] ) {
    consigneeIds.add( account.Id);
}

List<TMSShipment__c> tmsShipments = new List<TMSShipment__c>();

Integer i = 0;
for ( TMSShipment__c tmsShipment : [SELECT Id FROM TMSShipment__c]) {
    tmsShipment.ShipperId__c = shipperIds[i];
    i = i == 0 ? 1 : 0;
    tmsShipment.ConsigneeId__c = consigneeIds[0];
}
update tmsShipments;
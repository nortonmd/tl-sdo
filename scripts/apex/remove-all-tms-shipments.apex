List<TMSShipment__c> tmsShipments = new List<TMSShipment__c>();
tmsShipments = [SELECT Id FROM TMSShipment__c];
System.debug( 'BEFORE: Shipment records [' + tmsShipments.size() + ']');
delete tmsShipments;
tmsShipments = [SELECT Id FROM TMSShipment__c];
System.debug( 'AFTER: Shipment records [' + tmsShipments.size() + ']');

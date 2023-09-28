SELECT CreatedDate__c, Name__c, ShipmentStatus_c__c, ShipmentType_c__c, DestinationLocation_c__c, ExpectedArrivalDateTime_c__c 
FROM TMS_Shipment__dlm 
WHERE ShipmentType_c__c = 'Refrigerated' 
AND ShipmentStatus_c__c = 'In Transit' 
LIMIT 100

SELECT COUNT( TMS_Temperature_Reading__dlm.ShiptmentID_c__c) AS Shipment_Count__c,
              TMS_Temperature_Reading__dlm.ShiptmentID_c__c AS Shipment_Id__c,
              TMS_Shipment__dlm.DestinationLocation_c__c AS Destination_Location__c
  FROM TMS_Temperature_Reading__dlm
  LEFT JOIN TMS_Shipment__dlm ON TMS_Shipment__dlm.Name__c = TMS_Temperature_Reading__dlm.ShiptmentID_c__c
   AND TMS_Shipment__dlm.ShipmentType_c__c = 'Refrigerated'
 GROUP
    BY Shipment_Id__c,
       Destination_Location__c

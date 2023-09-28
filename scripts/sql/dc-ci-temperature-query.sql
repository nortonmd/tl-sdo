SELECT COUNT( TMS_Temperature_Reading__dlm.ShiptmentID_c__c) AS Shipment_Count, 
              TMS_Temperature_Reading__dlm.ShiptmentID_c__c AS Shipment_Id
  FROM TMS_Temperature_Reading__dlm
  LEFT JOIN TMS_Shipment__dlm ON TMS_Shipment__dlm.ShiptmentID_c__c = TMS_Temperature_Reading__dlm.ShiptmentID_c__c
   AND TMS_Shipment__dlm.ShipmentType_c__c = 'Refrigerated'
GROUP BY Shipment_Id

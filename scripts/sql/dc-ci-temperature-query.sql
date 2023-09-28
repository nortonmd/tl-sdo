SELECT COUNT( TMS_Temperature_Reading__dlm.ShipmentID_c__c) AS Shipment_Count__c, 
              TMS_Temperature_Reading__dlm.ShipmentID_c__c AS Shipment_Id__c
  FROM TMS_Temperature_Reading__dlm
  LEFT JOIN TMS_Shipment__dlm 
    ON TMS_Shipment__dlm.Name__c = TMS_Temperature_Reading__dlm.ShipmentID_c__c
   AND TMS_Shipment__dlm.ShipmentType_c__c = 'Refrigerated'
   AND TMS_Temperature_Reading__dlm.Source_c__c = 'IoT Device'
   AND TMS_Temperature_Reading__dlm.TemperatureUnit_c__c = 'Celsius'
   AND (TMS_Temperature_Reading__dlm.Temperature_c__c > TMS_Shipment__dlm.ReferTempMax__c
    OR TMS_Temperature_Reading__dlm.Temperature_c__c < TMS_Shipment__dlm.ReferTempMin__c)
GROUP BY Shipment_Id__c

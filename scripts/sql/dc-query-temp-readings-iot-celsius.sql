SELECT Humidity_c__c, ShiptmentID_c__c, Temperature_c__c, Source_c__c, TemperatureUnit_c__c 
  FROM TMS_Temperature_Reading__dlm 
 WHERE Source_c__c = 'IoT Device' 
   AND TemperatureUnit_c__c = 'Celsius' 
 LIMIT 100

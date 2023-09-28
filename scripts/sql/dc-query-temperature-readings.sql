SELECT ShiptmentID_c__c, DateTimeStemp_c__c, Humidity_c__c, Temperature_c__c, TemperatureUnit_c__c 
FROM TMS_Temperature_Reading__dlm 
WHERE TemperatureUnit_c__c = 'Celsius' 
AND Temperature_c__c > 42 
AND Source_c__c = 'IoT Device' 
ORDER BY DateTimeStemp_c__c ASC 
LIMIT 100

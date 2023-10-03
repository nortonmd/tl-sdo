String jsonPayload = '{\n' +
        '  "Shipment_Temperature_Check__cio_Shipment_Count__c": 2.000000000000000000,\n' +
        '  "Shipment_Temperature_Check__cio_Shipment_Id__c": "SP-0108"\n' +
        '}';

// What fields to search for
Set<String> keys = new Set<String>();
keys.add( 'Shipment_Temperature_Check__cio_Shipment_Id__c');
keys.add( 'Shipment_Temperature_Check__cio_Shipment_Count__c');
keys.add( 'Shipment_Temperature_Check__cio_Foo__c');


Map<String,String> tokenMap = JSONHelper.getValuesFromJSON( jsonPayload, keys);

System.debug( 'tokenMap = [' + tokenMap + ']');

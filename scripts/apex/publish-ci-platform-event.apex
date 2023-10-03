List<DataObjectDataChgEvent> dataChgEvents = new List<DataObjectDataChgEvent>();

List<String> shipmentIds = new List<String>();
shipmentIds.add( 'SP-0108');

for ( String shipmentId : shipmentIds) {
    dataChgEvents.add( new DataObjectDataChgEvent(
            SourceObjectDeveloperName = 'Shipment_Temperature_Check__cio',
            EventPrompt = 'INSERT',
            EventType = 'CDCEvent',
            PayloadMetadata = '{"ChangeEventHeader":{"changedFields":["Shipment_Temperature_Check__cio_Shipment_Count__c","Shipment_Temperature_Check__cio_Shipment_Id__c"],"commitTimestamp":"2023-09-29 04:02:43.2","commitVersion":"2"}}',
            PayloadCurrentValue = '{"Shipment_Temperature_Check__cio_Shipment_Count__c":2.000000000000000000,"Shipment_Temperature_Check__cio_Shipment_Id__c":"' + shipmentId + '"}'
        )
    );
}

Integer errorCount = 0;
for ( Database.SaveResult saveResult : EventBus.publish( dataChgEvents)) {
    System.debug( 'Published Platform Event');
    if ( !saveResult.isSuccess()) {
        System.debug( 'ERROR: ' + saveResult.getErrors());
        errorCount++;
    }
}

System.debug( 'Number of errors [' + errorCount + ']');

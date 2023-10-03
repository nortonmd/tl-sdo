/**
 * Created by michael.norton on 10/2/23.
 */

public with sharing class DataCloudTemperatureCheckCIHandler {

    private static final String SHIPMENT_ID = 'Shipment_Temperature_Check__cio_Shipment_Id__c';
    private static final String SHIPMENT_COUNT = 'Shipment_Temperature_Check__cio_Shipment_Count__c';

    public static void handleEvents( List<Data_Cloud_Event__c> dataCloudEvents) {
        System.debug( 'Inside Data Temperature Check CI Handler');

        Set<String> keys = new Set<String>();
        keys.add( SHIPMENT_ID);
        keys.add( SHIPMENT_COUNT);

        Set<String> shipmentIds = new Set<String>();

        Map<String,Integer> shipmentMap = new Map<String,Integer>();
        for ( Data_Cloud_Event__c dataCloudEvent : dataCloudEvents ) {
            Map<String,String> tokenMap = JSONHelper.getValuesFromJSON( dataCloudEvent.Message__c, keys);
            shipmentIds.add( tokenMap.get( SHIPMENT_ID));
        }

        System.debug( 'Shipment Ids [' + shipmentIds + ']');
        ShipmentInspectionHelper.createShipmentInspections( shipmentIds, 'IoT Temperature Reading outside of threshold');
    }

}
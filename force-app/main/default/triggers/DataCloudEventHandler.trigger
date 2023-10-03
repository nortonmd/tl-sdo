/**
 * Created by michael.norton on 9/29/23.
 */

trigger DataCloudEventHandler on Data_Cloud_Event__c (after insert) {

    // Types of Events
    private static final String TEMPERATURE_CHECK_CIO = 'Shipment_Temperature_Check__cio';

    List<Data_Cloud_Event__c> temperatureCheckCIEvents = new List<Data_Cloud_Event__c>();

    for ( Data_Cloud_Event__c dataCloudEvent : Trigger.new) {
        if ( dataCloudEvent.Source_Object_Developer_Name__c == TEMPERATURE_CHECK_CIO ) {
            temperatureCheckCIEvents.add( dataCloudEvent);
        }
    }

    if ( temperatureCheckCIEvents.size() > 0 ) {
        // Handle Temperature Check Calculated Insight Object Records
        DataCloudTemperatureCheckCIHandler.handleEvents( temperatureCheckCIEvents);
    }

}
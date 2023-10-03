/**
 * Created by michael.norton on 10/2/23.
 */

public with sharing class ShipmentInspectionHelper {

    public static void createShipmentInspections( Set<String> shipmentIds, String inspectionReason) {
        // List of Shipment Inspections
        List<Shipment_Inspection__c> shipmentInspections = new List<Shipment_Inspection__c>();

        // Iterate over shipment
        for ( String shipmentId : shipmentIds) {
            shipmentInspections.add( new Shipment_Inspection__c( ShipmentID__c = shipmentId, Inspection_Reason__c = inspectionReason));
        }

        // Insert List of Shipment Inspections
        insert shipmentInspections;
    }
}
/**
 * Created by michael.norton on 9/29/23.
 */

@IsTest
private class JSONHelperTest {
    @IsTest
    static void testGetValuesFromJSON() {
        // Arrange
        String jsonPayload = '{\n' +
                '  "Shipment_Temperature_Check__cio_Shipment_Count__c": 2.000000000000000000,\n' +
                '  "Shipment_Temperature_Check__cio_Shipment_Id__c": "SP-0108"\n' +
                '}';
        // What fields to search for
        Set<String> keys = new Set<String>();
        keys.add( 'Shipment_Temperature_Check__cio_Shipment_Id__c');
        keys.add( 'Shipment_Temperature_Check__cio_Shipment_Count__c');
        keys.add( 'Shipment_Temperature_Check__cio_Foo__c');

        // Act
        Map<String,String> tokenMap = JSONHelper.getValuesFromJSON( jsonPayload, keys);

        // Assert
        System.assertEquals( 'SP-0108', tokenMap.get( 'Shipment_Temperature_Check__cio_Shipment_Id__c'),
                'Expected SP-0108 as the Shipment Id');
        System.assertEquals( '2.000000000000000000', tokenMap.get( 'Shipment_Temperature_Check__cio_Shipment_Count__c'),
                'Expected 2 as the Shipment Count');
        System.assertEquals( null, tokenMap.get( 'Shipment_Temperature_Check__cio_Foo__c'),
                'Expected null as the Foo value');
    }


}
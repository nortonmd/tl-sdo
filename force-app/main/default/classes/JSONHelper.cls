/**
 * Created by michael.norton on 9/29/23.
 */

public class JSONHelper {
    public static Map<String,String> getValuesFromJSON( String jsonPayload, Set<String> keys) {
        Map<String,String> tokenMap = new Map<String,String>();
        for ( String key : keys) {
            tokenMap.put( key, null);
        }

        JSONParser parser = JSON.createParser( jsonPayload);
        while ( parser.nextToken() != null) {
            if ( parser.getCurrentToken() == JSONToken.FIELD_NAME ) {
                String fieldName = parser.getText();
                if ( keys.contains( fieldName)) {
                    parser.nextToken();
                    String fieldValue = parser.getText();
                    tokenMap.put( fieldName, fieldValue);
                }
            }
        }
        return tokenMap;
    }


}
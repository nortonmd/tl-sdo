// Warehouse Locations
Set<String> locationNames = new Set<String>();
locationNames.add( 'Nashville WH');
locationNames.add( 'Atlanta WH');
locationNames.add( 'Chicago WH');
locationNames.add( 'Durham WH');
locationNames.add( 'New Orleans WH');
locationNames.add( 'Miami WH');
locationNames.add( 'Detroit WH');

// Locations
List<Schema.Location> locations = new List<Schema.Location>();
//locations = [SELECT Id, Name FROM Schema.Location WHERE Name in :locationNames];
for ( Schema.Location location : [SELECT Name FROM Schema.Location WHERE Name IN :locationNames]) {

}

// Location Map
Map<String,Id> locationMap = new Map<String,Id>();



locations.add( new Schema.Location( Name = 'Nashville WH', LocationType = 'Warehouse', OpenDate = Date.today()-365));
locations.add( new Schema.Location( Name = 'Atlanta WH', LocationType = 'Warehouse', OpenDate = Date.today()-365));
locations.add( new Schema.Location( Name = 'Chicago WH', LocationType = 'Warehouse', OpenDate = Date.today()-365));
locations.add( new Schema.Location( Name = 'Durham WH', LocationType = 'Warehouse', OpenDate = Date.today()-365));
locations.add( new Schema.Location( Name = 'New Orleans WH', LocationType = 'Warehouse', OpenDate = Date.today()-365));
locations.add( new Schema.Location( Name = 'Miami WH', LocationType = 'Warehouse', OpenDate = Date.today()-365));
locations.add( new Schema.Location( Name = 'Detroit WH', LocationType = 'Warehouse', OpenDate = Date.today()-365));

// Locations
/*
Nashville WH,Atlanta WH,Chicago WH,Durham WH,New Orleans WH,Miami WH,Detroit WH

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinate coordinates;
 
  UserLocation({
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.street,
    required this.coordinates,
  });

  factory UserLocation.fromMap(Map<String, dynamic>json){

    final coordinates = LocationCoordinate.fromMap(json['coordinates']);

          final street = LocationStreet.fromMap(json['street']);

          return UserLocation(
            city: json['city'], 
            state: json['state'], 
            country: json['country'], 
            postcode: json['postcode'].toString(), 
            street: street, 
            coordinates: coordinates,
            );

  }
}

class LocationCoordinate {
  final String latitude;
  final String longitude;

  LocationCoordinate({required this.latitude, required this.longitude});

  factory LocationCoordinate.fromMap(Map<String, dynamic> json){
    return LocationCoordinate(
      latitude: json['latitude'],
      longitude: json['longitude'],
      );
  }


}

class LocationStreet {
  final int number;
  final String name;

  LocationStreet({required this.number, required this.name});

  factory LocationStreet.fromMap(Map<String, dynamic> json){
    return LocationStreet(
      number: json['number'],
      name: json['name'],
      );
  }


}

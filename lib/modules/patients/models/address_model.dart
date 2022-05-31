class AddressModel {
  final int streetNumber;
  final String streetName;
  final String city;
  final String state;
  final String country;
  final String postcode;

  const AddressModel({
    required this.streetNumber,
    required this.streetName,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) => AddressModel(
        streetNumber: json['street']['number'],
        streetName: json['street']['name'],
        city: json['city'],
        state: json['state'],
        country: json['country'],
        postcode: json['postcode'] is int
            ? json['postcode'].toString()
            : json['postcode'],
      );

  //TODO: melhorar método
  @override
  String toString() {
    return 'AddressModel(streetNumber: $streetNumber, streetName: $streetName, city: $city, state: $state, country: $country, postcode: $postcode)';
  }
}

class Address {
  final int streetNumber;
  final String streetName;
  final String city;
  final String state;
  final String country;
  final String postcode;

  const Address({
    required this.streetNumber,
    required this.streetName,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
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
    final buffer = StringBuffer()..writeln('$streetNumber $streetName');
    buffer.writeln('$city, $state $postcode');
    buffer.write(country);

    return buffer.toString();
  }
}

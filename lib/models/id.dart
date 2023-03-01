class Id {
  final String? name;
  final String? value;

  const Id({this.name, this.value});

  factory Id.fromJson(Map<String, dynamic> json) {
    return Id(name: json['name'], value: json['value']);
  }

  @override
  String toString() => '${name ?? ''}-${value ?? ''}';
}

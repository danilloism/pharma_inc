class IdModel {
  final String? name;
  final String? value;

  IdModel({this.name, this.value});

  factory IdModel.fromJson(Map<String, dynamic> json) {
    return IdModel(name: json['name'], value: json['value']);
  }
}

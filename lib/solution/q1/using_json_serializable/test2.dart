// To parse this JSON data, do
//
//     final test2 = test2FromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'test2.g.dart';

Test2 test2FromJson(String str) => Test2.fromJson(json.decode(str));

String test2ToJson(Test2 data) => json.encode(data.toJson());

@JsonSerializable()
class Test2 {
  @JsonKey(name: "company")
  Company company;

  Test2({
    required this.company,
  });

  factory Test2.fromJson(Map<String, dynamic> json) => _$Test2FromJson(json);

  Map<String, dynamic> toJson() => _$Test2ToJson(this);
}

@JsonSerializable()
class Company {
  @JsonKey(name: "isActive")
  int isActive;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "address")
  dynamic address;
  @JsonKey(name: "established")
  DateTime established;
  @JsonKey(name: "departments")
  List<dynamic> departments;

  Company({
    required this.isActive,
    required this.name,
    required this.address,
    required this.established,
    required this.departments,
  });

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}

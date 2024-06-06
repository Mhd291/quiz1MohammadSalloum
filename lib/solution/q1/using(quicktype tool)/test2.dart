
import 'dart:convert';

import '../../../core/helpers/utc_date.dart';

Test2 test2FromJson(String str) => Test2.fromJson(json.decode(str));

String test2ToJson(Test2 data) => json.encode(data.toJson());

class Test2 {
  Company company;

  Test2({
    required this.company,
  });

  factory Test2.fromJson(Map<String, dynamic> json) => Test2(
    company: Company.fromJson(json["company"]),
  );

  Map<String, dynamic> toJson() => {
    "company": company.toJson(),
  };
}

class Company {
  int isActive;
  String name;
  dynamic address;
  DateTime established;
  List<dynamic> departments;

  Company({
    required this.isActive,
    required this.name,
    required this.address,
    required this.established,
    required this.departments,
  });

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    isActive: json["isActive"],
    name: json["name"],
    address: json["address"],
    established: DateTime.parse(json["established"]),
    departments: List<dynamic>.from(json["departments"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "isActive": isActive,
    "name": name,
    "address": address,
    "established": DateHelper.DateInUTC(established),
    "departments": List<dynamic>.from(departments.map((x) => x)),
  };
}

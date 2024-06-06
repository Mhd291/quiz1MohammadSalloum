// To parse this JSON data, do
//
//     final test2 = test2FromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'test2.freezed.dart';
part 'test2.g.dart';

Test2 test2FromJson(String str) => Test2.fromJson(json.decode(str));

String test2ToJson(Test2 data) => json.encode(data.toJson());

@freezed
class Test2 with _$Test2 {
  const factory Test2({
    required Company company,
  }) = _Test2;

  factory Test2.fromJson(Map<String, dynamic> json) => _$Test2FromJson(json);
}

@freezed
class Company with _$Company {
  const factory Company({
    required int isActive,
    required String name,
    required dynamic address,
    required DateTime established,
    required List<dynamic> departments,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}

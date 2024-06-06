
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'test1.freezed.dart';
part 'test1.g.dart';

Test1 test1FromJson(String str) => Test1.fromJson(json.decode(str));

String test1ToJson(Test1 data) => json.encode(data.toJson());

@freezed
class Test1 with _$Test1 {
  const factory Test1({
    required Company company,
  }) = _Test1;

  factory Test1.fromJson(Map<String, dynamic> json) => _$Test1FromJson(json);
}

@freezed
class Company with _$Company {
  const factory Company({
    required int isActive,
    required String name,
    required Address address,
    required DateTime established,
    required List<Department> departments,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    required String street,
    required String city,
    required String state,
    required String postalCode,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

@freezed
class Department with _$Department {
  const factory Department({
    required String deptId,
    required String name,
    required String manager,
    required int budget,
    int? year,
    Availability? availability,
    required String meetingTime,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) => _$DepartmentFromJson(json);
}

@freezed
class Availability with _$Availability {
  const factory Availability({
    required bool online,
    required bool inStore,
  }) = _Availability;

  factory Availability.fromJson(Map<String, dynamic> json) => _$AvailabilityFromJson(json);
}

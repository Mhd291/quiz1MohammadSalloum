// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Test2 _$Test2FromJson(Map<String, dynamic> json) => Test2(
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Test2ToJson(Test2 instance) => <String, dynamic>{
      'company': instance.company,
    };

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      isActive: (json['isActive'] as num).toInt(),
      name: json['name'] as String,
      address: json['address'],
      established: DateTime.parse(json['established'] as String),
      departments: json['departments'] as List<dynamic>,
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'isActive': instance.isActive,
      'name': instance.name,
      'address': instance.address,
      'established': instance.established.toIso8601String(),
      'departments': instance.departments,
    };

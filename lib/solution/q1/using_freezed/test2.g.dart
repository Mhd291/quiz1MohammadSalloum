// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Test2Impl _$$Test2ImplFromJson(Map<String, dynamic> json) => _$Test2Impl(
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$Test2ImplToJson(_$Test2Impl instance) =>
    <String, dynamic>{
      'company': instance.company,
    };

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      isActive: (json['isActive'] as num).toInt(),
      name: json['name'] as String,
      address: json['address'],
      established: DateTime.parse(json['established'] as String),
      departments: json['departments'] as List<dynamic>,
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'isActive': instance.isActive,
      'name': instance.name,
      'address': instance.address,
      'established': instance.established.toIso8601String(),
      'departments': instance.departments,
    };

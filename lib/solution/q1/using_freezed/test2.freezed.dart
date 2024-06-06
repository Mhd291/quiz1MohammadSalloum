// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Test2 _$Test2FromJson(Map<String, dynamic> json) {
  return _Test2.fromJson(json);
}

/// @nodoc
mixin _$Test2 {
  Company get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Test2CopyWith<Test2> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Test2CopyWith<$Res> {
  factory $Test2CopyWith(Test2 value, $Res Function(Test2) then) =
      _$Test2CopyWithImpl<$Res, Test2>;
  @useResult
  $Res call({Company company});

  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class _$Test2CopyWithImpl<$Res, $Val extends Test2>
    implements $Test2CopyWith<$Res> {
  _$Test2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
  }) {
    return _then(_value.copyWith(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res> get company {
    return $CompanyCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Test2ImplCopyWith<$Res> implements $Test2CopyWith<$Res> {
  factory _$$Test2ImplCopyWith(
          _$Test2Impl value, $Res Function(_$Test2Impl) then) =
      __$$Test2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Company company});

  @override
  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class __$$Test2ImplCopyWithImpl<$Res>
    extends _$Test2CopyWithImpl<$Res, _$Test2Impl>
    implements _$$Test2ImplCopyWith<$Res> {
  __$$Test2ImplCopyWithImpl(
      _$Test2Impl _value, $Res Function(_$Test2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
  }) {
    return _then(_$Test2Impl(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Test2Impl implements _Test2 {
  const _$Test2Impl({required this.company});

  factory _$Test2Impl.fromJson(Map<String, dynamic> json) =>
      _$$Test2ImplFromJson(json);

  @override
  final Company company;

  @override
  String toString() {
    return 'Test2(company: $company)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Test2Impl &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Test2ImplCopyWith<_$Test2Impl> get copyWith =>
      __$$Test2ImplCopyWithImpl<_$Test2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Test2ImplToJson(
      this,
    );
  }
}

abstract class _Test2 implements Test2 {
  const factory _Test2({required final Company company}) = _$Test2Impl;

  factory _Test2.fromJson(Map<String, dynamic> json) = _$Test2Impl.fromJson;

  @override
  Company get company;
  @override
  @JsonKey(ignore: true)
  _$$Test2ImplCopyWith<_$Test2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  int get isActive => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  dynamic get address => throw _privateConstructorUsedError;
  DateTime get established => throw _privateConstructorUsedError;
  List<dynamic> get departments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call(
      {int isActive,
      String name,
      dynamic address,
      DateTime established,
      List<dynamic> departments});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? name = null,
    Object? address = freezed,
    Object? established = null,
    Object? departments = null,
  }) {
    return _then(_value.copyWith(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      established: null == established
          ? _value.established
          : established // ignore: cast_nullable_to_non_nullable
              as DateTime,
      departments: null == departments
          ? _value.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyImplCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$CompanyImplCopyWith(
          _$CompanyImpl value, $Res Function(_$CompanyImpl) then) =
      __$$CompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int isActive,
      String name,
      dynamic address,
      DateTime established,
      List<dynamic> departments});
}

/// @nodoc
class __$$CompanyImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanyImpl>
    implements _$$CompanyImplCopyWith<$Res> {
  __$$CompanyImplCopyWithImpl(
      _$CompanyImpl _value, $Res Function(_$CompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? name = null,
    Object? address = freezed,
    Object? established = null,
    Object? departments = null,
  }) {
    return _then(_$CompanyImpl(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      established: null == established
          ? _value.established
          : established // ignore: cast_nullable_to_non_nullable
              as DateTime,
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyImpl implements _Company {
  const _$CompanyImpl(
      {required this.isActive,
      required this.name,
      required this.address,
      required this.established,
      required final List<dynamic> departments})
      : _departments = departments;

  factory _$CompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyImplFromJson(json);

  @override
  final int isActive;
  @override
  final String name;
  @override
  final dynamic address;
  @override
  final DateTime established;
  final List<dynamic> _departments;
  @override
  List<dynamic> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  String toString() {
    return 'Company(isActive: $isActive, name: $name, address: $address, established: $established, departments: $departments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyImpl &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            (identical(other.established, established) ||
                other.established == established) &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isActive,
      name,
      const DeepCollectionEquality().hash(address),
      established,
      const DeepCollectionEquality().hash(_departments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      __$$CompanyImplCopyWithImpl<_$CompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyImplToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  const factory _Company(
      {required final int isActive,
      required final String name,
      required final dynamic address,
      required final DateTime established,
      required final List<dynamic> departments}) = _$CompanyImpl;

  factory _Company.fromJson(Map<String, dynamic> json) = _$CompanyImpl.fromJson;

  @override
  int get isActive;
  @override
  String get name;
  @override
  dynamic get address;
  @override
  DateTime get established;
  @override
  List<dynamic> get departments;
  @override
  @JsonKey(ignore: true)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

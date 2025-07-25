/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import '../../long_identifiers/deep_includes/person_with_long_table_name.dart'
    as _i2;
import '../../long_identifiers/deep_includes/organization_with_long_table_name.dart'
    as _i3;

abstract class CityWithLongTableName implements _i1.SerializableModel {
  CityWithLongTableName._({
    this.id,
    required this.name,
    this.citizens,
    this.organizations,
  });

  factory CityWithLongTableName({
    int? id,
    required String name,
    List<_i2.PersonWithLongTableName>? citizens,
    List<_i3.OrganizationWithLongTableName>? organizations,
  }) = _CityWithLongTableNameImpl;

  factory CityWithLongTableName.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return CityWithLongTableName(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      citizens: (jsonSerialization['citizens'] as List?)
          ?.map((e) =>
              _i2.PersonWithLongTableName.fromJson((e as Map<String, dynamic>)))
          .toList(),
      organizations: (jsonSerialization['organizations'] as List?)
          ?.map((e) => _i3.OrganizationWithLongTableName.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  List<_i2.PersonWithLongTableName>? citizens;

  List<_i3.OrganizationWithLongTableName>? organizations;

  /// Returns a shallow copy of this [CityWithLongTableName]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  CityWithLongTableName copyWith({
    int? id,
    String? name,
    List<_i2.PersonWithLongTableName>? citizens,
    List<_i3.OrganizationWithLongTableName>? organizations,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (citizens != null)
        'citizens': citizens?.toJson(valueToJson: (v) => v.toJson()),
      if (organizations != null)
        'organizations': organizations?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CityWithLongTableNameImpl extends CityWithLongTableName {
  _CityWithLongTableNameImpl({
    int? id,
    required String name,
    List<_i2.PersonWithLongTableName>? citizens,
    List<_i3.OrganizationWithLongTableName>? organizations,
  }) : super._(
          id: id,
          name: name,
          citizens: citizens,
          organizations: organizations,
        );

  /// Returns a shallow copy of this [CityWithLongTableName]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  CityWithLongTableName copyWith({
    Object? id = _Undefined,
    String? name,
    Object? citizens = _Undefined,
    Object? organizations = _Undefined,
  }) {
    return CityWithLongTableName(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      citizens: citizens is List<_i2.PersonWithLongTableName>?
          ? citizens
          : this.citizens?.map((e0) => e0.copyWith()).toList(),
      organizations: organizations is List<_i3.OrganizationWithLongTableName>?
          ? organizations
          : this.organizations?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

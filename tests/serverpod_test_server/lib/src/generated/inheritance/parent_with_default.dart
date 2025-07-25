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
import 'package:serverpod/serverpod.dart' as _i1;

class ParentWithDefault
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  ParentWithDefault({
    required this.name,
    int? parentDefault,
  }) : parentDefault = parentDefault ?? 0;

  factory ParentWithDefault.fromJson(Map<String, dynamic> jsonSerialization) {
    return ParentWithDefault(
      name: jsonSerialization['name'] as String,
      parentDefault: jsonSerialization['parentDefault'] as int,
    );
  }

  String name;

  int parentDefault;

  /// Returns a shallow copy of this [ParentWithDefault]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ParentWithDefault copyWith({
    String? name,
    int? parentDefault,
  }) {
    return ParentWithDefault(
      name: name ?? this.name,
      parentDefault: parentDefault ?? this.parentDefault,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'parentDefault': parentDefault,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'name': name,
      'parentDefault': parentDefault,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

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

/// Describes how to react if the row a foreign key refers to changes / is deleted.
enum ForeignKeyAction implements _i1.SerializableModel {
  /// [setNull] specifies that the appropriate values
  /// of a row referencing an other one should be set to
  /// null on update or deletion.
  setNull,

  /// [setNull] specifies that the appropriate values
  /// of a row referencing an other one should be set to
  /// the default value on update or deletion.
  setDefault,

  /// Prevent the change from occurring.
  restrict,

  /// Same as [restrict], but allows the check to be deferred
  /// until later in the transaction.
  ///
  /// [noAction] is the default
  noAction,

  /// [cascade] specifies that deletion or updating of a
  /// referred row, should be propagated down.
  cascade;

  static ForeignKeyAction fromJson(int index) {
    switch (index) {
      case 0:
        return ForeignKeyAction.setNull;
      case 1:
        return ForeignKeyAction.setDefault;
      case 2:
        return ForeignKeyAction.restrict;
      case 3:
        return ForeignKeyAction.noAction;
      case 4:
        return ForeignKeyAction.cascade;
      default:
        throw ArgumentError(
            'Value "$index" cannot be converted to "ForeignKeyAction"');
    }
  }

  @override
  int toJson() => index;
  @override
  String toString() => name;
}

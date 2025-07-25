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
import 'log_level.dart' as _i2;

/// Bindings to a log entry in the database.
abstract class LogEntry
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  LogEntry._({
    this.id,
    required this.sessionLogId,
    this.messageId,
    this.reference,
    required this.serverId,
    required this.time,
    required this.logLevel,
    required this.message,
    this.error,
    this.stackTrace,
    required this.order,
  });

  factory LogEntry({
    int? id,
    required int sessionLogId,
    int? messageId,
    String? reference,
    required String serverId,
    required DateTime time,
    required _i2.LogLevel logLevel,
    required String message,
    String? error,
    String? stackTrace,
    required int order,
  }) = _LogEntryImpl;

  factory LogEntry.fromJson(Map<String, dynamic> jsonSerialization) {
    return LogEntry(
      id: jsonSerialization['id'] as int?,
      sessionLogId: jsonSerialization['sessionLogId'] as int,
      messageId: jsonSerialization['messageId'] as int?,
      reference: jsonSerialization['reference'] as String?,
      serverId: jsonSerialization['serverId'] as String,
      time: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['time']),
      logLevel: _i2.LogLevel.fromJson((jsonSerialization['logLevel'] as int)),
      message: jsonSerialization['message'] as String,
      error: jsonSerialization['error'] as String?,
      stackTrace: jsonSerialization['stackTrace'] as String?,
      order: jsonSerialization['order'] as int,
    );
  }

  static final t = LogEntryTable();

  static const db = LogEntryRepository._();

  @override
  int? id;

  /// The id of the session this log entry is associated with.
  int sessionLogId;

  /// The message id this entry is associated with, if in a streaming session.
  int? messageId;

  /// Currently unused.
  String? reference;

  /// The id of the server which created this log entry.
  String serverId;

  /// Timestamp of this log entry.
  DateTime time;

  /// The log level of this entry.
  _i2.LogLevel logLevel;

  /// The logging message.
  String message;

  /// Optional error associated with this log entry.
  String? error;

  /// Optional stack trace associated with this log entry.
  String? stackTrace;

  /// The order of this log entry, used for sorting.
  int order;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [LogEntry]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  LogEntry copyWith({
    int? id,
    int? sessionLogId,
    int? messageId,
    String? reference,
    String? serverId,
    DateTime? time,
    _i2.LogLevel? logLevel,
    String? message,
    String? error,
    String? stackTrace,
    int? order,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'sessionLogId': sessionLogId,
      if (messageId != null) 'messageId': messageId,
      if (reference != null) 'reference': reference,
      'serverId': serverId,
      'time': time.toJson(),
      'logLevel': logLevel.toJson(),
      'message': message,
      if (error != null) 'error': error,
      if (stackTrace != null) 'stackTrace': stackTrace,
      'order': order,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'sessionLogId': sessionLogId,
      if (messageId != null) 'messageId': messageId,
      if (reference != null) 'reference': reference,
      'serverId': serverId,
      'time': time.toJson(),
      'logLevel': logLevel.toJson(),
      'message': message,
      if (error != null) 'error': error,
      if (stackTrace != null) 'stackTrace': stackTrace,
      'order': order,
    };
  }

  static LogEntryInclude include() {
    return LogEntryInclude._();
  }

  static LogEntryIncludeList includeList({
    _i1.WhereExpressionBuilder<LogEntryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LogEntryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LogEntryTable>? orderByList,
    LogEntryInclude? include,
  }) {
    return LogEntryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(LogEntry.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(LogEntry.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LogEntryImpl extends LogEntry {
  _LogEntryImpl({
    int? id,
    required int sessionLogId,
    int? messageId,
    String? reference,
    required String serverId,
    required DateTime time,
    required _i2.LogLevel logLevel,
    required String message,
    String? error,
    String? stackTrace,
    required int order,
  }) : super._(
          id: id,
          sessionLogId: sessionLogId,
          messageId: messageId,
          reference: reference,
          serverId: serverId,
          time: time,
          logLevel: logLevel,
          message: message,
          error: error,
          stackTrace: stackTrace,
          order: order,
        );

  /// Returns a shallow copy of this [LogEntry]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  LogEntry copyWith({
    Object? id = _Undefined,
    int? sessionLogId,
    Object? messageId = _Undefined,
    Object? reference = _Undefined,
    String? serverId,
    DateTime? time,
    _i2.LogLevel? logLevel,
    String? message,
    Object? error = _Undefined,
    Object? stackTrace = _Undefined,
    int? order,
  }) {
    return LogEntry(
      id: id is int? ? id : this.id,
      sessionLogId: sessionLogId ?? this.sessionLogId,
      messageId: messageId is int? ? messageId : this.messageId,
      reference: reference is String? ? reference : this.reference,
      serverId: serverId ?? this.serverId,
      time: time ?? this.time,
      logLevel: logLevel ?? this.logLevel,
      message: message ?? this.message,
      error: error is String? ? error : this.error,
      stackTrace: stackTrace is String? ? stackTrace : this.stackTrace,
      order: order ?? this.order,
    );
  }
}

class LogEntryTable extends _i1.Table<int?> {
  LogEntryTable({super.tableRelation}) : super(tableName: 'serverpod_log') {
    sessionLogId = _i1.ColumnInt(
      'sessionLogId',
      this,
    );
    messageId = _i1.ColumnInt(
      'messageId',
      this,
    );
    reference = _i1.ColumnString(
      'reference',
      this,
    );
    serverId = _i1.ColumnString(
      'serverId',
      this,
    );
    time = _i1.ColumnDateTime(
      'time',
      this,
    );
    logLevel = _i1.ColumnEnum(
      'logLevel',
      this,
      _i1.EnumSerialization.byIndex,
    );
    message = _i1.ColumnString(
      'message',
      this,
    );
    error = _i1.ColumnString(
      'error',
      this,
    );
    stackTrace = _i1.ColumnString(
      'stackTrace',
      this,
    );
    order = _i1.ColumnInt(
      'order',
      this,
    );
  }

  /// The id of the session this log entry is associated with.
  late final _i1.ColumnInt sessionLogId;

  /// The message id this entry is associated with, if in a streaming session.
  late final _i1.ColumnInt messageId;

  /// Currently unused.
  late final _i1.ColumnString reference;

  /// The id of the server which created this log entry.
  late final _i1.ColumnString serverId;

  /// Timestamp of this log entry.
  late final _i1.ColumnDateTime time;

  /// The log level of this entry.
  late final _i1.ColumnEnum<_i2.LogLevel> logLevel;

  /// The logging message.
  late final _i1.ColumnString message;

  /// Optional error associated with this log entry.
  late final _i1.ColumnString error;

  /// Optional stack trace associated with this log entry.
  late final _i1.ColumnString stackTrace;

  /// The order of this log entry, used for sorting.
  late final _i1.ColumnInt order;

  @override
  List<_i1.Column> get columns => [
        id,
        sessionLogId,
        messageId,
        reference,
        serverId,
        time,
        logLevel,
        message,
        error,
        stackTrace,
        order,
      ];
}

class LogEntryInclude extends _i1.IncludeObject {
  LogEntryInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => LogEntry.t;
}

class LogEntryIncludeList extends _i1.IncludeList {
  LogEntryIncludeList._({
    _i1.WhereExpressionBuilder<LogEntryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(LogEntry.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => LogEntry.t;
}

class LogEntryRepository {
  const LogEntryRepository._();

  /// Returns a list of [LogEntry]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<LogEntry>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LogEntryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LogEntryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LogEntryTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<LogEntry>(
      where: where?.call(LogEntry.t),
      orderBy: orderBy?.call(LogEntry.t),
      orderByList: orderByList?.call(LogEntry.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [LogEntry] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<LogEntry?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LogEntryTable>? where,
    int? offset,
    _i1.OrderByBuilder<LogEntryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LogEntryTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<LogEntry>(
      where: where?.call(LogEntry.t),
      orderBy: orderBy?.call(LogEntry.t),
      orderByList: orderByList?.call(LogEntry.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [LogEntry] by its [id] or null if no such row exists.
  Future<LogEntry?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<LogEntry>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [LogEntry]s in the list and returns the inserted rows.
  ///
  /// The returned [LogEntry]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<LogEntry>> insert(
    _i1.Session session,
    List<LogEntry> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<LogEntry>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [LogEntry] and returns the inserted row.
  ///
  /// The returned [LogEntry] will have its `id` field set.
  Future<LogEntry> insertRow(
    _i1.Session session,
    LogEntry row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<LogEntry>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [LogEntry]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<LogEntry>> update(
    _i1.Session session,
    List<LogEntry> rows, {
    _i1.ColumnSelections<LogEntryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<LogEntry>(
      rows,
      columns: columns?.call(LogEntry.t),
      transaction: transaction,
    );
  }

  /// Updates a single [LogEntry]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<LogEntry> updateRow(
    _i1.Session session,
    LogEntry row, {
    _i1.ColumnSelections<LogEntryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<LogEntry>(
      row,
      columns: columns?.call(LogEntry.t),
      transaction: transaction,
    );
  }

  /// Deletes all [LogEntry]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<LogEntry>> delete(
    _i1.Session session,
    List<LogEntry> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<LogEntry>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [LogEntry].
  Future<LogEntry> deleteRow(
    _i1.Session session,
    LogEntry row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<LogEntry>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<LogEntry>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LogEntryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<LogEntry>(
      where: where(LogEntry.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LogEntryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<LogEntry>(
      where: where?.call(LogEntry.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

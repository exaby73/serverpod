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

/// Log settings for the server.
abstract class LogSettings
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  LogSettings._({
    required this.logLevel,
    required this.logAllSessions,
    required this.logAllQueries,
    required this.logSlowSessions,
    required this.logStreamingSessionsContinuously,
    required this.logSlowQueries,
    required this.logFailedSessions,
    required this.logFailedQueries,
    required this.slowSessionDuration,
    required this.slowQueryDuration,
  });

  factory LogSettings({
    required _i2.LogLevel logLevel,
    required bool logAllSessions,
    required bool logAllQueries,
    required bool logSlowSessions,
    required bool logStreamingSessionsContinuously,
    required bool logSlowQueries,
    required bool logFailedSessions,
    required bool logFailedQueries,
    required double slowSessionDuration,
    required double slowQueryDuration,
  }) = _LogSettingsImpl;

  factory LogSettings.fromJson(Map<String, dynamic> jsonSerialization) {
    return LogSettings(
      logLevel: _i2.LogLevel.fromJson((jsonSerialization['logLevel'] as int)),
      logAllSessions: jsonSerialization['logAllSessions'] as bool,
      logAllQueries: jsonSerialization['logAllQueries'] as bool,
      logSlowSessions: jsonSerialization['logSlowSessions'] as bool,
      logStreamingSessionsContinuously:
          jsonSerialization['logStreamingSessionsContinuously'] as bool,
      logSlowQueries: jsonSerialization['logSlowQueries'] as bool,
      logFailedSessions: jsonSerialization['logFailedSessions'] as bool,
      logFailedQueries: jsonSerialization['logFailedQueries'] as bool,
      slowSessionDuration:
          (jsonSerialization['slowSessionDuration'] as num).toDouble(),
      slowQueryDuration:
          (jsonSerialization['slowQueryDuration'] as num).toDouble(),
    );
  }

  /// Log level. Everything above this level will be logged.
  _i2.LogLevel logLevel;

  /// True if all sessions should be logged.
  bool logAllSessions;

  /// True if all queries should be logged.
  bool logAllQueries;

  /// True if all slow sessions should be logged.
  bool logSlowSessions;

  /// True if streaming sessions should be logged continuously. If set to false,
  /// the logging will take place when the session is closed.
  bool logStreamingSessionsContinuously;

  /// True if all slow queries should be logged.
  bool logSlowQueries;

  /// True if all failed sessions should be logged.
  bool logFailedSessions;

  /// True if all failed queries should be logged.
  bool logFailedQueries;

  /// The duration in seconds for a session to be considered slow.
  double slowSessionDuration;

  /// The duration in seconds for a query to be considered slow.
  double slowQueryDuration;

  /// Returns a shallow copy of this [LogSettings]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  LogSettings copyWith({
    _i2.LogLevel? logLevel,
    bool? logAllSessions,
    bool? logAllQueries,
    bool? logSlowSessions,
    bool? logStreamingSessionsContinuously,
    bool? logSlowQueries,
    bool? logFailedSessions,
    bool? logFailedQueries,
    double? slowSessionDuration,
    double? slowQueryDuration,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'logLevel': logLevel.toJson(),
      'logAllSessions': logAllSessions,
      'logAllQueries': logAllQueries,
      'logSlowSessions': logSlowSessions,
      'logStreamingSessionsContinuously': logStreamingSessionsContinuously,
      'logSlowQueries': logSlowQueries,
      'logFailedSessions': logFailedSessions,
      'logFailedQueries': logFailedQueries,
      'slowSessionDuration': slowSessionDuration,
      'slowQueryDuration': slowQueryDuration,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'logLevel': logLevel.toJson(),
      'logAllSessions': logAllSessions,
      'logAllQueries': logAllQueries,
      'logSlowSessions': logSlowSessions,
      'logStreamingSessionsContinuously': logStreamingSessionsContinuously,
      'logSlowQueries': logSlowQueries,
      'logFailedSessions': logFailedSessions,
      'logFailedQueries': logFailedQueries,
      'slowSessionDuration': slowSessionDuration,
      'slowQueryDuration': slowQueryDuration,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _LogSettingsImpl extends LogSettings {
  _LogSettingsImpl({
    required _i2.LogLevel logLevel,
    required bool logAllSessions,
    required bool logAllQueries,
    required bool logSlowSessions,
    required bool logStreamingSessionsContinuously,
    required bool logSlowQueries,
    required bool logFailedSessions,
    required bool logFailedQueries,
    required double slowSessionDuration,
    required double slowQueryDuration,
  }) : super._(
          logLevel: logLevel,
          logAllSessions: logAllSessions,
          logAllQueries: logAllQueries,
          logSlowSessions: logSlowSessions,
          logStreamingSessionsContinuously: logStreamingSessionsContinuously,
          logSlowQueries: logSlowQueries,
          logFailedSessions: logFailedSessions,
          logFailedQueries: logFailedQueries,
          slowSessionDuration: slowSessionDuration,
          slowQueryDuration: slowQueryDuration,
        );

  /// Returns a shallow copy of this [LogSettings]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  LogSettings copyWith({
    _i2.LogLevel? logLevel,
    bool? logAllSessions,
    bool? logAllQueries,
    bool? logSlowSessions,
    bool? logStreamingSessionsContinuously,
    bool? logSlowQueries,
    bool? logFailedSessions,
    bool? logFailedQueries,
    double? slowSessionDuration,
    double? slowQueryDuration,
  }) {
    return LogSettings(
      logLevel: logLevel ?? this.logLevel,
      logAllSessions: logAllSessions ?? this.logAllSessions,
      logAllQueries: logAllQueries ?? this.logAllQueries,
      logSlowSessions: logSlowSessions ?? this.logSlowSessions,
      logStreamingSessionsContinuously: logStreamingSessionsContinuously ??
          this.logStreamingSessionsContinuously,
      logSlowQueries: logSlowQueries ?? this.logSlowQueries,
      logFailedSessions: logFailedSessions ?? this.logFailedSessions,
      logFailedQueries: logFailedQueries ?? this.logFailedQueries,
      slowSessionDuration: slowSessionDuration ?? this.slowSessionDuration,
      slowQueryDuration: slowQueryDuration ?? this.slowQueryDuration,
    );
  }
}

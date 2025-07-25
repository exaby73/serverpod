/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../../../models_with_relations/self_relation/one_to_one/post.dart'
    as _i2;

abstract class Post implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Post._({
    this.id,
    required this.content,
    this.previous,
    this.nextId,
    this.next,
  });

  factory Post({
    int? id,
    required String content,
    _i2.Post? previous,
    int? nextId,
    _i2.Post? next,
  }) = _PostImpl;

  factory Post.fromJson(Map<String, dynamic> jsonSerialization) {
    return Post(
      id: jsonSerialization['id'] as int?,
      content: jsonSerialization['content'] as String,
      previous: jsonSerialization['previous'] == null
          ? null
          : _i2.Post.fromJson(
              (jsonSerialization['previous'] as Map<String, dynamic>)),
      nextId: jsonSerialization['nextId'] as int?,
      next: jsonSerialization['next'] == null
          ? null
          : _i2.Post.fromJson(
              (jsonSerialization['next'] as Map<String, dynamic>)),
    );
  }

  static final t = PostTable();

  static const db = PostRepository._();

  @override
  int? id;

  String content;

  _i2.Post? previous;

  int? nextId;

  _i2.Post? next;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Post]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Post copyWith({
    int? id,
    String? content,
    _i2.Post? previous,
    int? nextId,
    _i2.Post? next,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'content': content,
      if (previous != null) 'previous': previous?.toJson(),
      if (nextId != null) 'nextId': nextId,
      if (next != null) 'next': next?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'content': content,
      if (previous != null) 'previous': previous?.toJsonForProtocol(),
      if (nextId != null) 'nextId': nextId,
      if (next != null) 'next': next?.toJsonForProtocol(),
    };
  }

  static PostInclude include({
    _i2.PostInclude? previous,
    _i2.PostInclude? next,
  }) {
    return PostInclude._(
      previous: previous,
      next: next,
    );
  }

  static PostIncludeList includeList({
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTable>? orderByList,
    PostInclude? include,
  }) {
    return PostIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Post.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Post.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PostImpl extends Post {
  _PostImpl({
    int? id,
    required String content,
    _i2.Post? previous,
    int? nextId,
    _i2.Post? next,
  }) : super._(
          id: id,
          content: content,
          previous: previous,
          nextId: nextId,
          next: next,
        );

  /// Returns a shallow copy of this [Post]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Post copyWith({
    Object? id = _Undefined,
    String? content,
    Object? previous = _Undefined,
    Object? nextId = _Undefined,
    Object? next = _Undefined,
  }) {
    return Post(
      id: id is int? ? id : this.id,
      content: content ?? this.content,
      previous: previous is _i2.Post? ? previous : this.previous?.copyWith(),
      nextId: nextId is int? ? nextId : this.nextId,
      next: next is _i2.Post? ? next : this.next?.copyWith(),
    );
  }
}

class PostTable extends _i1.Table<int?> {
  PostTable({super.tableRelation}) : super(tableName: 'post') {
    content = _i1.ColumnString(
      'content',
      this,
    );
    nextId = _i1.ColumnInt(
      'nextId',
      this,
    );
  }

  late final _i1.ColumnString content;

  _i2.PostTable? _previous;

  late final _i1.ColumnInt nextId;

  _i2.PostTable? _next;

  _i2.PostTable get previous {
    if (_previous != null) return _previous!;
    _previous = _i1.createRelationTable(
      relationFieldName: 'previous',
      field: Post.t.id,
      foreignField: _i2.Post.t.nextId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.PostTable(tableRelation: foreignTableRelation),
    );
    return _previous!;
  }

  _i2.PostTable get next {
    if (_next != null) return _next!;
    _next = _i1.createRelationTable(
      relationFieldName: 'next',
      field: Post.t.nextId,
      foreignField: _i2.Post.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.PostTable(tableRelation: foreignTableRelation),
    );
    return _next!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        content,
        nextId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'previous') {
      return previous;
    }
    if (relationField == 'next') {
      return next;
    }
    return null;
  }
}

class PostInclude extends _i1.IncludeObject {
  PostInclude._({
    _i2.PostInclude? previous,
    _i2.PostInclude? next,
  }) {
    _previous = previous;
    _next = next;
  }

  _i2.PostInclude? _previous;

  _i2.PostInclude? _next;

  @override
  Map<String, _i1.Include?> get includes => {
        'previous': _previous,
        'next': _next,
      };

  @override
  _i1.Table<int?> get table => Post.t;
}

class PostIncludeList extends _i1.IncludeList {
  PostIncludeList._({
    _i1.WhereExpressionBuilder<PostTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Post.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Post.t;
}

class PostRepository {
  const PostRepository._();

  final attachRow = const PostAttachRowRepository._();

  final detachRow = const PostDetachRowRepository._();

  /// Returns a list of [Post]s matching the given query parameters.
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
  Future<List<Post>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTable>? orderByList,
    _i1.Transaction? transaction,
    PostInclude? include,
  }) async {
    return session.db.find<Post>(
      where: where?.call(Post.t),
      orderBy: orderBy?.call(Post.t),
      orderByList: orderByList?.call(Post.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Post] matching the given query parameters.
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
  Future<Post?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? offset,
    _i1.OrderByBuilder<PostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTable>? orderByList,
    _i1.Transaction? transaction,
    PostInclude? include,
  }) async {
    return session.db.findFirstRow<Post>(
      where: where?.call(Post.t),
      orderBy: orderBy?.call(Post.t),
      orderByList: orderByList?.call(Post.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Post] by its [id] or null if no such row exists.
  Future<Post?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    PostInclude? include,
  }) async {
    return session.db.findById<Post>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Post]s in the list and returns the inserted rows.
  ///
  /// The returned [Post]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Post>> insert(
    _i1.Session session,
    List<Post> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Post>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Post] and returns the inserted row.
  ///
  /// The returned [Post] will have its `id` field set.
  Future<Post> insertRow(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Post>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Post]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Post>> update(
    _i1.Session session,
    List<Post> rows, {
    _i1.ColumnSelections<PostTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Post>(
      rows,
      columns: columns?.call(Post.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Post]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Post> updateRow(
    _i1.Session session,
    Post row, {
    _i1.ColumnSelections<PostTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Post>(
      row,
      columns: columns?.call(Post.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Post]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Post>> delete(
    _i1.Session session,
    List<Post> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Post>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Post].
  Future<Post> deleteRow(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Post>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Post>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PostTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Post>(
      where: where(Post.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Post>(
      where: where?.call(Post.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class PostAttachRowRepository {
  const PostAttachRowRepository._();

  /// Creates a relation between the given [Post] and [Post]
  /// by setting the [Post]'s foreign key `id` to refer to the [Post].
  Future<void> previous(
    _i1.Session session,
    Post post,
    _i2.Post previous, {
    _i1.Transaction? transaction,
  }) async {
    if (previous.id == null) {
      throw ArgumentError.notNull('previous.id');
    }
    if (post.id == null) {
      throw ArgumentError.notNull('post.id');
    }

    var $previous = previous.copyWith(nextId: post.id);
    await session.db.updateRow<_i2.Post>(
      $previous,
      columns: [_i2.Post.t.nextId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Post] and [Post]
  /// by setting the [Post]'s foreign key `nextId` to refer to the [Post].
  Future<void> next(
    _i1.Session session,
    Post post,
    _i2.Post next, {
    _i1.Transaction? transaction,
  }) async {
    if (post.id == null) {
      throw ArgumentError.notNull('post.id');
    }
    if (next.id == null) {
      throw ArgumentError.notNull('next.id');
    }

    var $post = post.copyWith(nextId: next.id);
    await session.db.updateRow<Post>(
      $post,
      columns: [Post.t.nextId],
      transaction: transaction,
    );
  }
}

class PostDetachRowRepository {
  const PostDetachRowRepository._();

  /// Detaches the relation between this [Post] and the [Post] set in `previous`
  /// by setting the [Post]'s foreign key `id` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> previous(
    _i1.Session session,
    Post post, {
    _i1.Transaction? transaction,
  }) async {
    var $previous = post.previous;

    if ($previous == null) {
      throw ArgumentError.notNull('post.previous');
    }
    if ($previous.id == null) {
      throw ArgumentError.notNull('post.previous.id');
    }
    if (post.id == null) {
      throw ArgumentError.notNull('post.id');
    }

    var $$previous = $previous.copyWith(nextId: null);
    await session.db.updateRow<_i2.Post>(
      $$previous,
      columns: [_i2.Post.t.nextId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Post] and the [Post] set in `next`
  /// by setting the [Post]'s foreign key `nextId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> next(
    _i1.Session session,
    Post post, {
    _i1.Transaction? transaction,
  }) async {
    if (post.id == null) {
      throw ArgumentError.notNull('post.id');
    }

    var $post = post.copyWith(nextId: null);
    await session.db.updateRow<Post>(
      $post,
      columns: [Post.t.nextId],
      transaction: transaction,
    );
  }
}

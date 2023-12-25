import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$getMyBook {
  factory Variables$Query$getMyBook({required String getBook}) =>
      Variables$Query$getMyBook._({
        r'getBook': getBook,
      });

  Variables$Query$getMyBook._(this._$data);

  factory Variables$Query$getMyBook.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$getBook = data['getBook'];
    result$data['getBook'] = (l$getBook as String);
    return Variables$Query$getMyBook._(result$data);
  }

  Map<String, dynamic> _$data;

  String get getBook => (_$data['getBook'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$getBook = getBook;
    result$data['getBook'] = l$getBook;
    return result$data;
  }

  CopyWith$Variables$Query$getMyBook<Variables$Query$getMyBook> get copyWith =>
      CopyWith$Variables$Query$getMyBook(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getMyBook) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getBook = getBook;
    final lOther$getBook = other.getBook;
    if (l$getBook != lOther$getBook) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$getBook = getBook;
    return Object.hashAll([l$getBook]);
  }
}

abstract class CopyWith$Variables$Query$getMyBook<TRes> {
  factory CopyWith$Variables$Query$getMyBook(
    Variables$Query$getMyBook instance,
    TRes Function(Variables$Query$getMyBook) then,
  ) = _CopyWithImpl$Variables$Query$getMyBook;

  factory CopyWith$Variables$Query$getMyBook.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getMyBook;

  TRes call({String? getBook});
}

class _CopyWithImpl$Variables$Query$getMyBook<TRes>
    implements CopyWith$Variables$Query$getMyBook<TRes> {
  _CopyWithImpl$Variables$Query$getMyBook(
    this._instance,
    this._then,
  );

  final Variables$Query$getMyBook _instance;

  final TRes Function(Variables$Query$getMyBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? getBook = _undefined}) =>
      _then(Variables$Query$getMyBook._({
        ..._instance._$data,
        if (getBook != _undefined && getBook != null)
          'getBook': (getBook as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$getMyBook<TRes>
    implements CopyWith$Variables$Query$getMyBook<TRes> {
  _CopyWithStubImpl$Variables$Query$getMyBook(this._res);

  TRes _res;

  call({String? getBook}) => _res;
}

class Query$getMyBook {
  Query$getMyBook({
    this.getMyBook,
    this.$__typename = 'Query',
  });

  factory Query$getMyBook.fromJson(Map<String, dynamic> json) {
    final l$getMyBook = json['getMyBook'];
    final l$$__typename = json['__typename'];
    return Query$getMyBook(
      getMyBook: l$getMyBook == null
          ? null
          : Query$getMyBook$getMyBook.fromJson(
              (l$getMyBook as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getMyBook$getMyBook? getMyBook;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getMyBook = getMyBook;
    _resultData['getMyBook'] = l$getMyBook?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getMyBook = getMyBook;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getMyBook,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getMyBook) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getMyBook = getMyBook;
    final lOther$getMyBook = other.getMyBook;
    if (l$getMyBook != lOther$getMyBook) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getMyBook on Query$getMyBook {
  CopyWith$Query$getMyBook<Query$getMyBook> get copyWith =>
      CopyWith$Query$getMyBook(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getMyBook<TRes> {
  factory CopyWith$Query$getMyBook(
    Query$getMyBook instance,
    TRes Function(Query$getMyBook) then,
  ) = _CopyWithImpl$Query$getMyBook;

  factory CopyWith$Query$getMyBook.stub(TRes res) =
      _CopyWithStubImpl$Query$getMyBook;

  TRes call({
    Query$getMyBook$getMyBook? getMyBook,
    String? $__typename,
  });
  CopyWith$Query$getMyBook$getMyBook<TRes> get getMyBook;
}

class _CopyWithImpl$Query$getMyBook<TRes>
    implements CopyWith$Query$getMyBook<TRes> {
  _CopyWithImpl$Query$getMyBook(
    this._instance,
    this._then,
  );

  final Query$getMyBook _instance;

  final TRes Function(Query$getMyBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getMyBook = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMyBook(
        getMyBook: getMyBook == _undefined
            ? _instance.getMyBook
            : (getMyBook as Query$getMyBook$getMyBook?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getMyBook$getMyBook<TRes> get getMyBook {
    final local$getMyBook = _instance.getMyBook;
    return local$getMyBook == null
        ? CopyWith$Query$getMyBook$getMyBook.stub(_then(_instance))
        : CopyWith$Query$getMyBook$getMyBook(
            local$getMyBook, (e) => call(getMyBook: e));
  }
}

class _CopyWithStubImpl$Query$getMyBook<TRes>
    implements CopyWith$Query$getMyBook<TRes> {
  _CopyWithStubImpl$Query$getMyBook(this._res);

  TRes _res;

  call({
    Query$getMyBook$getMyBook? getMyBook,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getMyBook$getMyBook<TRes> get getMyBook =>
      CopyWith$Query$getMyBook$getMyBook.stub(_res);
}

const documentNodeQuerygetMyBook = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getMyBook'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'getBook')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getMyBook'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'getBook')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bookNumber'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'readOn'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'favorite'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$getMyBook _parserFn$Query$getMyBook(Map<String, dynamic> data) =>
    Query$getMyBook.fromJson(data);
typedef OnQueryComplete$Query$getMyBook = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getMyBook?,
);

class Options$Query$getMyBook extends graphql.QueryOptions<Query$getMyBook> {
  Options$Query$getMyBook({
    String? operationName,
    required Variables$Query$getMyBook variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getMyBook? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getMyBook? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$getMyBook(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetMyBook,
          parserFn: _parserFn$Query$getMyBook,
        );

  final OnQueryComplete$Query$getMyBook? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getMyBook
    extends graphql.WatchQueryOptions<Query$getMyBook> {
  WatchOptions$Query$getMyBook({
    String? operationName,
    required Variables$Query$getMyBook variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getMyBook? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetMyBook,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getMyBook,
        );
}

class FetchMoreOptions$Query$getMyBook extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getMyBook({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$getMyBook variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerygetMyBook,
        );
}

extension ClientExtension$Query$getMyBook on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getMyBook>> query$getMyBook(
          Options$Query$getMyBook options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$getMyBook> watchQuery$getMyBook(
          WatchOptions$Query$getMyBook options) =>
      this.watchQuery(options);
  void writeQuery$getMyBook({
    required Query$getMyBook data,
    required Variables$Query$getMyBook variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerygetMyBook),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getMyBook? readQuery$getMyBook({
    required Variables$Query$getMyBook variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerygetMyBook),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getMyBook.fromJson(result);
  }
}

class Query$getMyBook$getMyBook {
  Query$getMyBook$getMyBook({
    required this.id,
    required this.bookNumber,
    required this.title,
    required this.readOn,
    this.favorite,
    this.$__typename = 'MyBook',
  });

  factory Query$getMyBook$getMyBook.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$bookNumber = json['bookNumber'];
    final l$title = json['title'];
    final l$readOn = json['readOn'];
    final l$favorite = json['favorite'];
    final l$$__typename = json['__typename'];
    return Query$getMyBook$getMyBook(
      id: (l$id as String),
      bookNumber: (l$bookNumber as int),
      title: (l$title as String),
      readOn: DateTime.parse((l$readOn as String)),
      favorite: (l$favorite as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final int bookNumber;

  final String title;

  final DateTime readOn;

  final bool? favorite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$bookNumber = bookNumber;
    _resultData['bookNumber'] = l$bookNumber;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$readOn = readOn;
    _resultData['readOn'] = l$readOn.toIso8601String();
    final l$favorite = favorite;
    _resultData['favorite'] = l$favorite;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$bookNumber = bookNumber;
    final l$title = title;
    final l$readOn = readOn;
    final l$favorite = favorite;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$bookNumber,
      l$title,
      l$readOn,
      l$favorite,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getMyBook$getMyBook) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$bookNumber = bookNumber;
    final lOther$bookNumber = other.bookNumber;
    if (l$bookNumber != lOther$bookNumber) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$readOn = readOn;
    final lOther$readOn = other.readOn;
    if (l$readOn != lOther$readOn) {
      return false;
    }
    final l$favorite = favorite;
    final lOther$favorite = other.favorite;
    if (l$favorite != lOther$favorite) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getMyBook$getMyBook
    on Query$getMyBook$getMyBook {
  CopyWith$Query$getMyBook$getMyBook<Query$getMyBook$getMyBook> get copyWith =>
      CopyWith$Query$getMyBook$getMyBook(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getMyBook$getMyBook<TRes> {
  factory CopyWith$Query$getMyBook$getMyBook(
    Query$getMyBook$getMyBook instance,
    TRes Function(Query$getMyBook$getMyBook) then,
  ) = _CopyWithImpl$Query$getMyBook$getMyBook;

  factory CopyWith$Query$getMyBook$getMyBook.stub(TRes res) =
      _CopyWithStubImpl$Query$getMyBook$getMyBook;

  TRes call({
    String? id,
    int? bookNumber,
    String? title,
    DateTime? readOn,
    bool? favorite,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getMyBook$getMyBook<TRes>
    implements CopyWith$Query$getMyBook$getMyBook<TRes> {
  _CopyWithImpl$Query$getMyBook$getMyBook(
    this._instance,
    this._then,
  );

  final Query$getMyBook$getMyBook _instance;

  final TRes Function(Query$getMyBook$getMyBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? bookNumber = _undefined,
    Object? title = _undefined,
    Object? readOn = _undefined,
    Object? favorite = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMyBook$getMyBook(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        bookNumber: bookNumber == _undefined || bookNumber == null
            ? _instance.bookNumber
            : (bookNumber as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        readOn: readOn == _undefined || readOn == null
            ? _instance.readOn
            : (readOn as DateTime),
        favorite:
            favorite == _undefined ? _instance.favorite : (favorite as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getMyBook$getMyBook<TRes>
    implements CopyWith$Query$getMyBook$getMyBook<TRes> {
  _CopyWithStubImpl$Query$getMyBook$getMyBook(this._res);

  TRes _res;

  call({
    String? id,
    int? bookNumber,
    String? title,
    DateTime? readOn,
    bool? favorite,
    String? $__typename,
  }) =>
      _res;
}

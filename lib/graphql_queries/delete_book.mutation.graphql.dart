import '../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$deleteMyBook {
  factory Variables$Mutation$deleteMyBook(
          {required Input$MyBookFilter deleteBook}) =>
      Variables$Mutation$deleteMyBook._({
        r'deleteBook': deleteBook,
      });

  Variables$Mutation$deleteMyBook._(this._$data);

  factory Variables$Mutation$deleteMyBook.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deleteBook = data['deleteBook'];
    result$data['deleteBook'] =
        Input$MyBookFilter.fromJson((l$deleteBook as Map<String, dynamic>));
    return Variables$Mutation$deleteMyBook._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$MyBookFilter get deleteBook =>
      (_$data['deleteBook'] as Input$MyBookFilter);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deleteBook = deleteBook;
    result$data['deleteBook'] = l$deleteBook.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$deleteMyBook<Variables$Mutation$deleteMyBook>
      get copyWith => CopyWith$Variables$Mutation$deleteMyBook(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$deleteMyBook) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteBook = deleteBook;
    final lOther$deleteBook = other.deleteBook;
    if (l$deleteBook != lOther$deleteBook) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deleteBook = deleteBook;
    return Object.hashAll([l$deleteBook]);
  }
}

abstract class CopyWith$Variables$Mutation$deleteMyBook<TRes> {
  factory CopyWith$Variables$Mutation$deleteMyBook(
    Variables$Mutation$deleteMyBook instance,
    TRes Function(Variables$Mutation$deleteMyBook) then,
  ) = _CopyWithImpl$Variables$Mutation$deleteMyBook;

  factory CopyWith$Variables$Mutation$deleteMyBook.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$deleteMyBook;

  TRes call({Input$MyBookFilter? deleteBook});
}

class _CopyWithImpl$Variables$Mutation$deleteMyBook<TRes>
    implements CopyWith$Variables$Mutation$deleteMyBook<TRes> {
  _CopyWithImpl$Variables$Mutation$deleteMyBook(
    this._instance,
    this._then,
  );

  final Variables$Mutation$deleteMyBook _instance;

  final TRes Function(Variables$Mutation$deleteMyBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deleteBook = _undefined}) =>
      _then(Variables$Mutation$deleteMyBook._({
        ..._instance._$data,
        if (deleteBook != _undefined && deleteBook != null)
          'deleteBook': (deleteBook as Input$MyBookFilter),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$deleteMyBook<TRes>
    implements CopyWith$Variables$Mutation$deleteMyBook<TRes> {
  _CopyWithStubImpl$Variables$Mutation$deleteMyBook(this._res);

  TRes _res;

  call({Input$MyBookFilter? deleteBook}) => _res;
}

class Mutation$deleteMyBook {
  Mutation$deleteMyBook({
    this.deleteMyBook,
    this.$__typename = 'Mutation',
  });

  factory Mutation$deleteMyBook.fromJson(Map<String, dynamic> json) {
    final l$deleteMyBook = json['deleteMyBook'];
    final l$$__typename = json['__typename'];
    return Mutation$deleteMyBook(
      deleteMyBook: l$deleteMyBook == null
          ? null
          : Mutation$deleteMyBook$deleteMyBook.fromJson(
              (l$deleteMyBook as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$deleteMyBook$deleteMyBook? deleteMyBook;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteMyBook = deleteMyBook;
    _resultData['deleteMyBook'] = l$deleteMyBook?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteMyBook = deleteMyBook;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteMyBook,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$deleteMyBook) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteMyBook = deleteMyBook;
    final lOther$deleteMyBook = other.deleteMyBook;
    if (l$deleteMyBook != lOther$deleteMyBook) {
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

extension UtilityExtension$Mutation$deleteMyBook on Mutation$deleteMyBook {
  CopyWith$Mutation$deleteMyBook<Mutation$deleteMyBook> get copyWith =>
      CopyWith$Mutation$deleteMyBook(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$deleteMyBook<TRes> {
  factory CopyWith$Mutation$deleteMyBook(
    Mutation$deleteMyBook instance,
    TRes Function(Mutation$deleteMyBook) then,
  ) = _CopyWithImpl$Mutation$deleteMyBook;

  factory CopyWith$Mutation$deleteMyBook.stub(TRes res) =
      _CopyWithStubImpl$Mutation$deleteMyBook;

  TRes call({
    Mutation$deleteMyBook$deleteMyBook? deleteMyBook,
    String? $__typename,
  });
  CopyWith$Mutation$deleteMyBook$deleteMyBook<TRes> get deleteMyBook;
}

class _CopyWithImpl$Mutation$deleteMyBook<TRes>
    implements CopyWith$Mutation$deleteMyBook<TRes> {
  _CopyWithImpl$Mutation$deleteMyBook(
    this._instance,
    this._then,
  );

  final Mutation$deleteMyBook _instance;

  final TRes Function(Mutation$deleteMyBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteMyBook = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$deleteMyBook(
        deleteMyBook: deleteMyBook == _undefined
            ? _instance.deleteMyBook
            : (deleteMyBook as Mutation$deleteMyBook$deleteMyBook?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$deleteMyBook$deleteMyBook<TRes> get deleteMyBook {
    final local$deleteMyBook = _instance.deleteMyBook;
    return local$deleteMyBook == null
        ? CopyWith$Mutation$deleteMyBook$deleteMyBook.stub(_then(_instance))
        : CopyWith$Mutation$deleteMyBook$deleteMyBook(
            local$deleteMyBook, (e) => call(deleteMyBook: e));
  }
}

class _CopyWithStubImpl$Mutation$deleteMyBook<TRes>
    implements CopyWith$Mutation$deleteMyBook<TRes> {
  _CopyWithStubImpl$Mutation$deleteMyBook(this._res);

  TRes _res;

  call({
    Mutation$deleteMyBook$deleteMyBook? deleteMyBook,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$deleteMyBook$deleteMyBook<TRes> get deleteMyBook =>
      CopyWith$Mutation$deleteMyBook$deleteMyBook.stub(_res);
}

const documentNodeMutationdeleteMyBook = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'deleteMyBook'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deleteBook')),
        type: NamedTypeNode(
          name: NameNode(value: 'MyBookFilter'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteMyBook'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'deleteBook')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'msg'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'myBook'),
            alias: null,
            arguments: [],
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
Mutation$deleteMyBook _parserFn$Mutation$deleteMyBook(
        Map<String, dynamic> data) =>
    Mutation$deleteMyBook.fromJson(data);
typedef OnMutationCompleted$Mutation$deleteMyBook = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$deleteMyBook?,
);

class Options$Mutation$deleteMyBook
    extends graphql.MutationOptions<Mutation$deleteMyBook> {
  Options$Mutation$deleteMyBook({
    String? operationName,
    required Variables$Mutation$deleteMyBook variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$deleteMyBook? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$deleteMyBook? onCompleted,
    graphql.OnMutationUpdate<Mutation$deleteMyBook>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$deleteMyBook(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationdeleteMyBook,
          parserFn: _parserFn$Mutation$deleteMyBook,
        );

  final OnMutationCompleted$Mutation$deleteMyBook? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$deleteMyBook
    extends graphql.WatchQueryOptions<Mutation$deleteMyBook> {
  WatchOptions$Mutation$deleteMyBook({
    String? operationName,
    required Variables$Mutation$deleteMyBook variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$deleteMyBook? typedOptimisticResult,
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
          document: documentNodeMutationdeleteMyBook,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$deleteMyBook,
        );
}

extension ClientExtension$Mutation$deleteMyBook on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$deleteMyBook>> mutate$deleteMyBook(
          Options$Mutation$deleteMyBook options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$deleteMyBook> watchMutation$deleteMyBook(
          WatchOptions$Mutation$deleteMyBook options) =>
      this.watchMutation(options);
}

class Mutation$deleteMyBook$deleteMyBook {
  Mutation$deleteMyBook$deleteMyBook({
    this.msg,
    this.myBook,
    this.$__typename = 'DeleteMyBookPayload',
  });

  factory Mutation$deleteMyBook$deleteMyBook.fromJson(
      Map<String, dynamic> json) {
    final l$msg = json['msg'];
    final l$myBook = json['myBook'];
    final l$$__typename = json['__typename'];
    return Mutation$deleteMyBook$deleteMyBook(
      msg: (l$msg as String?),
      myBook: (l$myBook as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Mutation$deleteMyBook$deleteMyBook$myBook.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? msg;

  final List<Mutation$deleteMyBook$deleteMyBook$myBook?>? myBook;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$msg = msg;
    _resultData['msg'] = l$msg;
    final l$myBook = myBook;
    _resultData['myBook'] = l$myBook?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$msg = msg;
    final l$myBook = myBook;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$msg,
      l$myBook == null ? null : Object.hashAll(l$myBook.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$deleteMyBook$deleteMyBook) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$msg = msg;
    final lOther$msg = other.msg;
    if (l$msg != lOther$msg) {
      return false;
    }
    final l$myBook = myBook;
    final lOther$myBook = other.myBook;
    if (l$myBook != null && lOther$myBook != null) {
      if (l$myBook.length != lOther$myBook.length) {
        return false;
      }
      for (int i = 0; i < l$myBook.length; i++) {
        final l$myBook$entry = l$myBook[i];
        final lOther$myBook$entry = lOther$myBook[i];
        if (l$myBook$entry != lOther$myBook$entry) {
          return false;
        }
      }
    } else if (l$myBook != lOther$myBook) {
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

extension UtilityExtension$Mutation$deleteMyBook$deleteMyBook
    on Mutation$deleteMyBook$deleteMyBook {
  CopyWith$Mutation$deleteMyBook$deleteMyBook<
          Mutation$deleteMyBook$deleteMyBook>
      get copyWith => CopyWith$Mutation$deleteMyBook$deleteMyBook(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$deleteMyBook$deleteMyBook<TRes> {
  factory CopyWith$Mutation$deleteMyBook$deleteMyBook(
    Mutation$deleteMyBook$deleteMyBook instance,
    TRes Function(Mutation$deleteMyBook$deleteMyBook) then,
  ) = _CopyWithImpl$Mutation$deleteMyBook$deleteMyBook;

  factory CopyWith$Mutation$deleteMyBook$deleteMyBook.stub(TRes res) =
      _CopyWithStubImpl$Mutation$deleteMyBook$deleteMyBook;

  TRes call({
    String? msg,
    List<Mutation$deleteMyBook$deleteMyBook$myBook?>? myBook,
    String? $__typename,
  });
  TRes myBook(
      Iterable<Mutation$deleteMyBook$deleteMyBook$myBook?>? Function(
              Iterable<
                  CopyWith$Mutation$deleteMyBook$deleteMyBook$myBook<
                      Mutation$deleteMyBook$deleteMyBook$myBook>?>?)
          _fn);
}

class _CopyWithImpl$Mutation$deleteMyBook$deleteMyBook<TRes>
    implements CopyWith$Mutation$deleteMyBook$deleteMyBook<TRes> {
  _CopyWithImpl$Mutation$deleteMyBook$deleteMyBook(
    this._instance,
    this._then,
  );

  final Mutation$deleteMyBook$deleteMyBook _instance;

  final TRes Function(Mutation$deleteMyBook$deleteMyBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? msg = _undefined,
    Object? myBook = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$deleteMyBook$deleteMyBook(
        msg: msg == _undefined ? _instance.msg : (msg as String?),
        myBook: myBook == _undefined
            ? _instance.myBook
            : (myBook as List<Mutation$deleteMyBook$deleteMyBook$myBook?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes myBook(
          Iterable<Mutation$deleteMyBook$deleteMyBook$myBook?>? Function(
                  Iterable<
                      CopyWith$Mutation$deleteMyBook$deleteMyBook$myBook<
                          Mutation$deleteMyBook$deleteMyBook$myBook>?>?)
              _fn) =>
      call(
          myBook: _fn(_instance.myBook?.map((e) => e == null
              ? null
              : CopyWith$Mutation$deleteMyBook$deleteMyBook$myBook(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Mutation$deleteMyBook$deleteMyBook<TRes>
    implements CopyWith$Mutation$deleteMyBook$deleteMyBook<TRes> {
  _CopyWithStubImpl$Mutation$deleteMyBook$deleteMyBook(this._res);

  TRes _res;

  call({
    String? msg,
    List<Mutation$deleteMyBook$deleteMyBook$myBook?>? myBook,
    String? $__typename,
  }) =>
      _res;

  myBook(_fn) => _res;
}

class Mutation$deleteMyBook$deleteMyBook$myBook {
  Mutation$deleteMyBook$deleteMyBook$myBook({
    required this.id,
    required this.bookNumber,
    required this.title,
    required this.readOn,
    this.favorite,
    this.$__typename = 'MyBook',
  });

  factory Mutation$deleteMyBook$deleteMyBook$myBook.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$bookNumber = json['bookNumber'];
    final l$title = json['title'];
    final l$readOn = json['readOn'];
    final l$favorite = json['favorite'];
    final l$$__typename = json['__typename'];
    return Mutation$deleteMyBook$deleteMyBook$myBook(
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
    if (!(other is Mutation$deleteMyBook$deleteMyBook$myBook) ||
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

extension UtilityExtension$Mutation$deleteMyBook$deleteMyBook$myBook
    on Mutation$deleteMyBook$deleteMyBook$myBook {
  CopyWith$Mutation$deleteMyBook$deleteMyBook$myBook<
          Mutation$deleteMyBook$deleteMyBook$myBook>
      get copyWith => CopyWith$Mutation$deleteMyBook$deleteMyBook$myBook(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$deleteMyBook$deleteMyBook$myBook<TRes> {
  factory CopyWith$Mutation$deleteMyBook$deleteMyBook$myBook(
    Mutation$deleteMyBook$deleteMyBook$myBook instance,
    TRes Function(Mutation$deleteMyBook$deleteMyBook$myBook) then,
  ) = _CopyWithImpl$Mutation$deleteMyBook$deleteMyBook$myBook;

  factory CopyWith$Mutation$deleteMyBook$deleteMyBook$myBook.stub(TRes res) =
      _CopyWithStubImpl$Mutation$deleteMyBook$deleteMyBook$myBook;

  TRes call({
    String? id,
    int? bookNumber,
    String? title,
    DateTime? readOn,
    bool? favorite,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$deleteMyBook$deleteMyBook$myBook<TRes>
    implements CopyWith$Mutation$deleteMyBook$deleteMyBook$myBook<TRes> {
  _CopyWithImpl$Mutation$deleteMyBook$deleteMyBook$myBook(
    this._instance,
    this._then,
  );

  final Mutation$deleteMyBook$deleteMyBook$myBook _instance;

  final TRes Function(Mutation$deleteMyBook$deleteMyBook$myBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? bookNumber = _undefined,
    Object? title = _undefined,
    Object? readOn = _undefined,
    Object? favorite = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$deleteMyBook$deleteMyBook$myBook(
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

class _CopyWithStubImpl$Mutation$deleteMyBook$deleteMyBook$myBook<TRes>
    implements CopyWith$Mutation$deleteMyBook$deleteMyBook$myBook<TRes> {
  _CopyWithStubImpl$Mutation$deleteMyBook$deleteMyBook$myBook(this._res);

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

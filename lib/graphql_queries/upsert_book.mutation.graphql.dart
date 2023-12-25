import '../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$upsertMyBook {
  factory Variables$Mutation$upsertMyBook(
          {required List<Input$AddMyBookInput> upsertBook}) =>
      Variables$Mutation$upsertMyBook._({
        r'upsertBook': upsertBook,
      });

  Variables$Mutation$upsertMyBook._(this._$data);

  factory Variables$Mutation$upsertMyBook.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$upsertBook = data['upsertBook'];
    result$data['upsertBook'] = (l$upsertBook as List<dynamic>)
        .map((e) => Input$AddMyBookInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Variables$Mutation$upsertMyBook._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AddMyBookInput> get upsertBook =>
      (_$data['upsertBook'] as List<Input$AddMyBookInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$upsertBook = upsertBook;
    result$data['upsertBook'] = l$upsertBook.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$upsertMyBook<Variables$Mutation$upsertMyBook>
      get copyWith => CopyWith$Variables$Mutation$upsertMyBook(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$upsertMyBook) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$upsertBook = upsertBook;
    final lOther$upsertBook = other.upsertBook;
    if (l$upsertBook.length != lOther$upsertBook.length) {
      return false;
    }
    for (int i = 0; i < l$upsertBook.length; i++) {
      final l$upsertBook$entry = l$upsertBook[i];
      final lOther$upsertBook$entry = lOther$upsertBook[i];
      if (l$upsertBook$entry != lOther$upsertBook$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$upsertBook = upsertBook;
    return Object.hashAll([Object.hashAll(l$upsertBook.map((v) => v))]);
  }
}

abstract class CopyWith$Variables$Mutation$upsertMyBook<TRes> {
  factory CopyWith$Variables$Mutation$upsertMyBook(
    Variables$Mutation$upsertMyBook instance,
    TRes Function(Variables$Mutation$upsertMyBook) then,
  ) = _CopyWithImpl$Variables$Mutation$upsertMyBook;

  factory CopyWith$Variables$Mutation$upsertMyBook.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$upsertMyBook;

  TRes call({List<Input$AddMyBookInput>? upsertBook});
}

class _CopyWithImpl$Variables$Mutation$upsertMyBook<TRes>
    implements CopyWith$Variables$Mutation$upsertMyBook<TRes> {
  _CopyWithImpl$Variables$Mutation$upsertMyBook(
    this._instance,
    this._then,
  );

  final Variables$Mutation$upsertMyBook _instance;

  final TRes Function(Variables$Mutation$upsertMyBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? upsertBook = _undefined}) =>
      _then(Variables$Mutation$upsertMyBook._({
        ..._instance._$data,
        if (upsertBook != _undefined && upsertBook != null)
          'upsertBook': (upsertBook as List<Input$AddMyBookInput>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$upsertMyBook<TRes>
    implements CopyWith$Variables$Mutation$upsertMyBook<TRes> {
  _CopyWithStubImpl$Variables$Mutation$upsertMyBook(this._res);

  TRes _res;

  call({List<Input$AddMyBookInput>? upsertBook}) => _res;
}

class Mutation$upsertMyBook {
  Mutation$upsertMyBook({
    this.addMyBook,
    this.$__typename = 'Mutation',
  });

  factory Mutation$upsertMyBook.fromJson(Map<String, dynamic> json) {
    final l$addMyBook = json['addMyBook'];
    final l$$__typename = json['__typename'];
    return Mutation$upsertMyBook(
      addMyBook: l$addMyBook == null
          ? null
          : Mutation$upsertMyBook$addMyBook.fromJson(
              (l$addMyBook as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$upsertMyBook$addMyBook? addMyBook;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addMyBook = addMyBook;
    _resultData['addMyBook'] = l$addMyBook?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addMyBook = addMyBook;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$addMyBook,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$upsertMyBook) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$addMyBook = addMyBook;
    final lOther$addMyBook = other.addMyBook;
    if (l$addMyBook != lOther$addMyBook) {
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

extension UtilityExtension$Mutation$upsertMyBook on Mutation$upsertMyBook {
  CopyWith$Mutation$upsertMyBook<Mutation$upsertMyBook> get copyWith =>
      CopyWith$Mutation$upsertMyBook(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$upsertMyBook<TRes> {
  factory CopyWith$Mutation$upsertMyBook(
    Mutation$upsertMyBook instance,
    TRes Function(Mutation$upsertMyBook) then,
  ) = _CopyWithImpl$Mutation$upsertMyBook;

  factory CopyWith$Mutation$upsertMyBook.stub(TRes res) =
      _CopyWithStubImpl$Mutation$upsertMyBook;

  TRes call({
    Mutation$upsertMyBook$addMyBook? addMyBook,
    String? $__typename,
  });
  CopyWith$Mutation$upsertMyBook$addMyBook<TRes> get addMyBook;
}

class _CopyWithImpl$Mutation$upsertMyBook<TRes>
    implements CopyWith$Mutation$upsertMyBook<TRes> {
  _CopyWithImpl$Mutation$upsertMyBook(
    this._instance,
    this._then,
  );

  final Mutation$upsertMyBook _instance;

  final TRes Function(Mutation$upsertMyBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addMyBook = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$upsertMyBook(
        addMyBook: addMyBook == _undefined
            ? _instance.addMyBook
            : (addMyBook as Mutation$upsertMyBook$addMyBook?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$upsertMyBook$addMyBook<TRes> get addMyBook {
    final local$addMyBook = _instance.addMyBook;
    return local$addMyBook == null
        ? CopyWith$Mutation$upsertMyBook$addMyBook.stub(_then(_instance))
        : CopyWith$Mutation$upsertMyBook$addMyBook(
            local$addMyBook, (e) => call(addMyBook: e));
  }
}

class _CopyWithStubImpl$Mutation$upsertMyBook<TRes>
    implements CopyWith$Mutation$upsertMyBook<TRes> {
  _CopyWithStubImpl$Mutation$upsertMyBook(this._res);

  TRes _res;

  call({
    Mutation$upsertMyBook$addMyBook? addMyBook,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$upsertMyBook$addMyBook<TRes> get addMyBook =>
      CopyWith$Mutation$upsertMyBook$addMyBook.stub(_res);
}

const documentNodeMutationupsertMyBook = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'upsertMyBook'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'upsertBook')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'AddMyBookInput'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'addMyBook'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'upsertBook')),
          ),
          ArgumentNode(
            name: NameNode(value: 'upsert'),
            value: BooleanValueNode(value: true),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
Mutation$upsertMyBook _parserFn$Mutation$upsertMyBook(
        Map<String, dynamic> data) =>
    Mutation$upsertMyBook.fromJson(data);
typedef OnMutationCompleted$Mutation$upsertMyBook = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$upsertMyBook?,
);

class Options$Mutation$upsertMyBook
    extends graphql.MutationOptions<Mutation$upsertMyBook> {
  Options$Mutation$upsertMyBook({
    String? operationName,
    required Variables$Mutation$upsertMyBook variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$upsertMyBook? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$upsertMyBook? onCompleted,
    graphql.OnMutationUpdate<Mutation$upsertMyBook>? update,
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
                    data == null ? null : _parserFn$Mutation$upsertMyBook(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupsertMyBook,
          parserFn: _parserFn$Mutation$upsertMyBook,
        );

  final OnMutationCompleted$Mutation$upsertMyBook? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$upsertMyBook
    extends graphql.WatchQueryOptions<Mutation$upsertMyBook> {
  WatchOptions$Mutation$upsertMyBook({
    String? operationName,
    required Variables$Mutation$upsertMyBook variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$upsertMyBook? typedOptimisticResult,
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
          document: documentNodeMutationupsertMyBook,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$upsertMyBook,
        );
}

extension ClientExtension$Mutation$upsertMyBook on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$upsertMyBook>> mutate$upsertMyBook(
          Options$Mutation$upsertMyBook options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$upsertMyBook> watchMutation$upsertMyBook(
          WatchOptions$Mutation$upsertMyBook options) =>
      this.watchMutation(options);
}

class Mutation$upsertMyBook$addMyBook {
  Mutation$upsertMyBook$addMyBook({
    this.myBook,
    this.$__typename = 'AddMyBookPayload',
  });

  factory Mutation$upsertMyBook$addMyBook.fromJson(Map<String, dynamic> json) {
    final l$myBook = json['myBook'];
    final l$$__typename = json['__typename'];
    return Mutation$upsertMyBook$addMyBook(
      myBook: (l$myBook as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Mutation$upsertMyBook$addMyBook$myBook.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$upsertMyBook$addMyBook$myBook?>? myBook;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$myBook = myBook;
    _resultData['myBook'] = l$myBook?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$myBook = myBook;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$myBook == null ? null : Object.hashAll(l$myBook.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$upsertMyBook$addMyBook) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$upsertMyBook$addMyBook
    on Mutation$upsertMyBook$addMyBook {
  CopyWith$Mutation$upsertMyBook$addMyBook<Mutation$upsertMyBook$addMyBook>
      get copyWith => CopyWith$Mutation$upsertMyBook$addMyBook(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$upsertMyBook$addMyBook<TRes> {
  factory CopyWith$Mutation$upsertMyBook$addMyBook(
    Mutation$upsertMyBook$addMyBook instance,
    TRes Function(Mutation$upsertMyBook$addMyBook) then,
  ) = _CopyWithImpl$Mutation$upsertMyBook$addMyBook;

  factory CopyWith$Mutation$upsertMyBook$addMyBook.stub(TRes res) =
      _CopyWithStubImpl$Mutation$upsertMyBook$addMyBook;

  TRes call({
    List<Mutation$upsertMyBook$addMyBook$myBook?>? myBook,
    String? $__typename,
  });
  TRes myBook(
      Iterable<Mutation$upsertMyBook$addMyBook$myBook?>? Function(
              Iterable<
                  CopyWith$Mutation$upsertMyBook$addMyBook$myBook<
                      Mutation$upsertMyBook$addMyBook$myBook>?>?)
          _fn);
}

class _CopyWithImpl$Mutation$upsertMyBook$addMyBook<TRes>
    implements CopyWith$Mutation$upsertMyBook$addMyBook<TRes> {
  _CopyWithImpl$Mutation$upsertMyBook$addMyBook(
    this._instance,
    this._then,
  );

  final Mutation$upsertMyBook$addMyBook _instance;

  final TRes Function(Mutation$upsertMyBook$addMyBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? myBook = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$upsertMyBook$addMyBook(
        myBook: myBook == _undefined
            ? _instance.myBook
            : (myBook as List<Mutation$upsertMyBook$addMyBook$myBook?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes myBook(
          Iterable<Mutation$upsertMyBook$addMyBook$myBook?>? Function(
                  Iterable<
                      CopyWith$Mutation$upsertMyBook$addMyBook$myBook<
                          Mutation$upsertMyBook$addMyBook$myBook>?>?)
              _fn) =>
      call(
          myBook: _fn(_instance.myBook?.map((e) => e == null
              ? null
              : CopyWith$Mutation$upsertMyBook$addMyBook$myBook(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Mutation$upsertMyBook$addMyBook<TRes>
    implements CopyWith$Mutation$upsertMyBook$addMyBook<TRes> {
  _CopyWithStubImpl$Mutation$upsertMyBook$addMyBook(this._res);

  TRes _res;

  call({
    List<Mutation$upsertMyBook$addMyBook$myBook?>? myBook,
    String? $__typename,
  }) =>
      _res;

  myBook(_fn) => _res;
}

class Mutation$upsertMyBook$addMyBook$myBook {
  Mutation$upsertMyBook$addMyBook$myBook({
    required this.id,
    required this.bookNumber,
    required this.title,
    required this.readOn,
    this.favorite,
    this.$__typename = 'MyBook',
  });

  factory Mutation$upsertMyBook$addMyBook$myBook.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$bookNumber = json['bookNumber'];
    final l$title = json['title'];
    final l$readOn = json['readOn'];
    final l$favorite = json['favorite'];
    final l$$__typename = json['__typename'];
    return Mutation$upsertMyBook$addMyBook$myBook(
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
    if (!(other is Mutation$upsertMyBook$addMyBook$myBook) ||
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

extension UtilityExtension$Mutation$upsertMyBook$addMyBook$myBook
    on Mutation$upsertMyBook$addMyBook$myBook {
  CopyWith$Mutation$upsertMyBook$addMyBook$myBook<
          Mutation$upsertMyBook$addMyBook$myBook>
      get copyWith => CopyWith$Mutation$upsertMyBook$addMyBook$myBook(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$upsertMyBook$addMyBook$myBook<TRes> {
  factory CopyWith$Mutation$upsertMyBook$addMyBook$myBook(
    Mutation$upsertMyBook$addMyBook$myBook instance,
    TRes Function(Mutation$upsertMyBook$addMyBook$myBook) then,
  ) = _CopyWithImpl$Mutation$upsertMyBook$addMyBook$myBook;

  factory CopyWith$Mutation$upsertMyBook$addMyBook$myBook.stub(TRes res) =
      _CopyWithStubImpl$Mutation$upsertMyBook$addMyBook$myBook;

  TRes call({
    String? id,
    int? bookNumber,
    String? title,
    DateTime? readOn,
    bool? favorite,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$upsertMyBook$addMyBook$myBook<TRes>
    implements CopyWith$Mutation$upsertMyBook$addMyBook$myBook<TRes> {
  _CopyWithImpl$Mutation$upsertMyBook$addMyBook$myBook(
    this._instance,
    this._then,
  );

  final Mutation$upsertMyBook$addMyBook$myBook _instance;

  final TRes Function(Mutation$upsertMyBook$addMyBook$myBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? bookNumber = _undefined,
    Object? title = _undefined,
    Object? readOn = _undefined,
    Object? favorite = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$upsertMyBook$addMyBook$myBook(
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

class _CopyWithStubImpl$Mutation$upsertMyBook$addMyBook$myBook<TRes>
    implements CopyWith$Mutation$upsertMyBook$addMyBook$myBook<TRes> {
  _CopyWithStubImpl$Mutation$upsertMyBook$addMyBook$myBook(this._res);

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

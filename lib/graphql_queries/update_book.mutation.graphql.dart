import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$updateMyBook {
  factory Variables$Mutation$updateMyBook(
          {required Input$UpdateMyBookInput updateBook}) =>
      Variables$Mutation$updateMyBook._({
        r'updateBook': updateBook,
      });

  Variables$Mutation$updateMyBook._(this._$data);

  factory Variables$Mutation$updateMyBook.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$updateBook = data['updateBook'];
    result$data['updateBook'] = Input$UpdateMyBookInput.fromJson(
        (l$updateBook as Map<String, dynamic>));
    return Variables$Mutation$updateMyBook._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateMyBookInput get updateBook =>
      (_$data['updateBook'] as Input$UpdateMyBookInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$updateBook = updateBook;
    result$data['updateBook'] = l$updateBook.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$updateMyBook<Variables$Mutation$updateMyBook>
      get copyWith => CopyWith$Variables$Mutation$updateMyBook(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$updateMyBook) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateBook = updateBook;
    final lOther$updateBook = other.updateBook;
    if (l$updateBook != lOther$updateBook) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$updateBook = updateBook;
    return Object.hashAll([l$updateBook]);
  }
}

abstract class CopyWith$Variables$Mutation$updateMyBook<TRes> {
  factory CopyWith$Variables$Mutation$updateMyBook(
    Variables$Mutation$updateMyBook instance,
    TRes Function(Variables$Mutation$updateMyBook) then,
  ) = _CopyWithImpl$Variables$Mutation$updateMyBook;

  factory CopyWith$Variables$Mutation$updateMyBook.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateMyBook;

  TRes call({Input$UpdateMyBookInput? updateBook});
}

class _CopyWithImpl$Variables$Mutation$updateMyBook<TRes>
    implements CopyWith$Variables$Mutation$updateMyBook<TRes> {
  _CopyWithImpl$Variables$Mutation$updateMyBook(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateMyBook _instance;

  final TRes Function(Variables$Mutation$updateMyBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateBook = _undefined}) =>
      _then(Variables$Mutation$updateMyBook._({
        ..._instance._$data,
        if (updateBook != _undefined && updateBook != null)
          'updateBook': (updateBook as Input$UpdateMyBookInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateMyBook<TRes>
    implements CopyWith$Variables$Mutation$updateMyBook<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateMyBook(this._res);

  TRes _res;

  call({Input$UpdateMyBookInput? updateBook}) => _res;
}

class Mutation$updateMyBook {
  Mutation$updateMyBook({
    this.updateMyBook,
    this.$__typename = 'Mutation',
  });

  factory Mutation$updateMyBook.fromJson(Map<String, dynamic> json) {
    final l$updateMyBook = json['updateMyBook'];
    final l$$__typename = json['__typename'];
    return Mutation$updateMyBook(
      updateMyBook: l$updateMyBook == null
          ? null
          : Mutation$updateMyBook$updateMyBook.fromJson(
              (l$updateMyBook as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updateMyBook$updateMyBook? updateMyBook;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMyBook = updateMyBook;
    _resultData['updateMyBook'] = l$updateMyBook?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMyBook = updateMyBook;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMyBook,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updateMyBook) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMyBook = updateMyBook;
    final lOther$updateMyBook = other.updateMyBook;
    if (l$updateMyBook != lOther$updateMyBook) {
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

extension UtilityExtension$Mutation$updateMyBook on Mutation$updateMyBook {
  CopyWith$Mutation$updateMyBook<Mutation$updateMyBook> get copyWith =>
      CopyWith$Mutation$updateMyBook(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updateMyBook<TRes> {
  factory CopyWith$Mutation$updateMyBook(
    Mutation$updateMyBook instance,
    TRes Function(Mutation$updateMyBook) then,
  ) = _CopyWithImpl$Mutation$updateMyBook;

  factory CopyWith$Mutation$updateMyBook.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateMyBook;

  TRes call({
    Mutation$updateMyBook$updateMyBook? updateMyBook,
    String? $__typename,
  });
  CopyWith$Mutation$updateMyBook$updateMyBook<TRes> get updateMyBook;
}

class _CopyWithImpl$Mutation$updateMyBook<TRes>
    implements CopyWith$Mutation$updateMyBook<TRes> {
  _CopyWithImpl$Mutation$updateMyBook(
    this._instance,
    this._then,
  );

  final Mutation$updateMyBook _instance;

  final TRes Function(Mutation$updateMyBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMyBook = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateMyBook(
        updateMyBook: updateMyBook == _undefined
            ? _instance.updateMyBook
            : (updateMyBook as Mutation$updateMyBook$updateMyBook?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$updateMyBook$updateMyBook<TRes> get updateMyBook {
    final local$updateMyBook = _instance.updateMyBook;
    return local$updateMyBook == null
        ? CopyWith$Mutation$updateMyBook$updateMyBook.stub(_then(_instance))
        : CopyWith$Mutation$updateMyBook$updateMyBook(
            local$updateMyBook, (e) => call(updateMyBook: e));
  }
}

class _CopyWithStubImpl$Mutation$updateMyBook<TRes>
    implements CopyWith$Mutation$updateMyBook<TRes> {
  _CopyWithStubImpl$Mutation$updateMyBook(this._res);

  TRes _res;

  call({
    Mutation$updateMyBook$updateMyBook? updateMyBook,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$updateMyBook$updateMyBook<TRes> get updateMyBook =>
      CopyWith$Mutation$updateMyBook$updateMyBook.stub(_res);
}

const documentNodeMutationupdateMyBook = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateMyBook'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'updateBook')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateMyBookInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateMyBook'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'updateBook')),
          )
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

class Mutation$updateMyBook$updateMyBook {
  Mutation$updateMyBook$updateMyBook({
    this.myBook,
    this.$__typename = 'UpdateMyBookPayload',
  });

  factory Mutation$updateMyBook$updateMyBook.fromJson(
      Map<String, dynamic> json) {
    final l$myBook = json['myBook'];
    final l$$__typename = json['__typename'];
    return Mutation$updateMyBook$updateMyBook(
      myBook: (l$myBook as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Mutation$updateMyBook$updateMyBook$myBook.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$updateMyBook$updateMyBook$myBook?>? myBook;

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
    if (!(other is Mutation$updateMyBook$updateMyBook) ||
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

extension UtilityExtension$Mutation$updateMyBook$updateMyBook
    on Mutation$updateMyBook$updateMyBook {
  CopyWith$Mutation$updateMyBook$updateMyBook<
          Mutation$updateMyBook$updateMyBook>
      get copyWith => CopyWith$Mutation$updateMyBook$updateMyBook(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateMyBook$updateMyBook<TRes> {
  factory CopyWith$Mutation$updateMyBook$updateMyBook(
    Mutation$updateMyBook$updateMyBook instance,
    TRes Function(Mutation$updateMyBook$updateMyBook) then,
  ) = _CopyWithImpl$Mutation$updateMyBook$updateMyBook;

  factory CopyWith$Mutation$updateMyBook$updateMyBook.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateMyBook$updateMyBook;

  TRes call({
    List<Mutation$updateMyBook$updateMyBook$myBook?>? myBook,
    String? $__typename,
  });
  TRes myBook(
      Iterable<Mutation$updateMyBook$updateMyBook$myBook?>? Function(
              Iterable<
                  CopyWith$Mutation$updateMyBook$updateMyBook$myBook<
                      Mutation$updateMyBook$updateMyBook$myBook>?>?)
          _fn);
}

class _CopyWithImpl$Mutation$updateMyBook$updateMyBook<TRes>
    implements CopyWith$Mutation$updateMyBook$updateMyBook<TRes> {
  _CopyWithImpl$Mutation$updateMyBook$updateMyBook(
    this._instance,
    this._then,
  );

  final Mutation$updateMyBook$updateMyBook _instance;

  final TRes Function(Mutation$updateMyBook$updateMyBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? myBook = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateMyBook$updateMyBook(
        myBook: myBook == _undefined
            ? _instance.myBook
            : (myBook as List<Mutation$updateMyBook$updateMyBook$myBook?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes myBook(
          Iterable<Mutation$updateMyBook$updateMyBook$myBook?>? Function(
                  Iterable<
                      CopyWith$Mutation$updateMyBook$updateMyBook$myBook<
                          Mutation$updateMyBook$updateMyBook$myBook>?>?)
              _fn) =>
      call(
          myBook: _fn(_instance.myBook?.map((e) => e == null
              ? null
              : CopyWith$Mutation$updateMyBook$updateMyBook$myBook(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Mutation$updateMyBook$updateMyBook<TRes>
    implements CopyWith$Mutation$updateMyBook$updateMyBook<TRes> {
  _CopyWithStubImpl$Mutation$updateMyBook$updateMyBook(this._res);

  TRes _res;

  call({
    List<Mutation$updateMyBook$updateMyBook$myBook?>? myBook,
    String? $__typename,
  }) =>
      _res;

  myBook(_fn) => _res;
}

class Mutation$updateMyBook$updateMyBook$myBook {
  Mutation$updateMyBook$updateMyBook$myBook({
    required this.id,
    required this.bookNumber,
    required this.title,
    required this.readOn,
    this.favorite,
    this.$__typename = 'MyBook',
  });

  factory Mutation$updateMyBook$updateMyBook$myBook.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$bookNumber = json['bookNumber'];
    final l$title = json['title'];
    final l$readOn = json['readOn'];
    final l$favorite = json['favorite'];
    final l$$__typename = json['__typename'];
    return Mutation$updateMyBook$updateMyBook$myBook(
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
    if (!(other is Mutation$updateMyBook$updateMyBook$myBook) ||
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

extension UtilityExtension$Mutation$updateMyBook$updateMyBook$myBook
    on Mutation$updateMyBook$updateMyBook$myBook {
  CopyWith$Mutation$updateMyBook$updateMyBook$myBook<
          Mutation$updateMyBook$updateMyBook$myBook>
      get copyWith => CopyWith$Mutation$updateMyBook$updateMyBook$myBook(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateMyBook$updateMyBook$myBook<TRes> {
  factory CopyWith$Mutation$updateMyBook$updateMyBook$myBook(
    Mutation$updateMyBook$updateMyBook$myBook instance,
    TRes Function(Mutation$updateMyBook$updateMyBook$myBook) then,
  ) = _CopyWithImpl$Mutation$updateMyBook$updateMyBook$myBook;

  factory CopyWith$Mutation$updateMyBook$updateMyBook$myBook.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateMyBook$updateMyBook$myBook;

  TRes call({
    String? id,
    int? bookNumber,
    String? title,
    DateTime? readOn,
    bool? favorite,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateMyBook$updateMyBook$myBook<TRes>
    implements CopyWith$Mutation$updateMyBook$updateMyBook$myBook<TRes> {
  _CopyWithImpl$Mutation$updateMyBook$updateMyBook$myBook(
    this._instance,
    this._then,
  );

  final Mutation$updateMyBook$updateMyBook$myBook _instance;

  final TRes Function(Mutation$updateMyBook$updateMyBook$myBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? bookNumber = _undefined,
    Object? title = _undefined,
    Object? readOn = _undefined,
    Object? favorite = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateMyBook$updateMyBook$myBook(
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

class _CopyWithStubImpl$Mutation$updateMyBook$updateMyBook$myBook<TRes>
    implements CopyWith$Mutation$updateMyBook$updateMyBook$myBook<TRes> {
  _CopyWithStubImpl$Mutation$updateMyBook$updateMyBook$myBook(this._res);

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

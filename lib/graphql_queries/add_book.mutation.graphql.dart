import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$addMyBook {
  factory Variables$Mutation$addMyBook(
          {required List<Input$AddMyBookInput> addBook}) =>
      Variables$Mutation$addMyBook._({
        r'addBook': addBook,
      });

  Variables$Mutation$addMyBook._(this._$data);

  factory Variables$Mutation$addMyBook.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$addBook = data['addBook'];
    result$data['addBook'] = (l$addBook as List<dynamic>)
        .map((e) => Input$AddMyBookInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Variables$Mutation$addMyBook._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AddMyBookInput> get addBook =>
      (_$data['addBook'] as List<Input$AddMyBookInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$addBook = addBook;
    result$data['addBook'] = l$addBook.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$addMyBook<Variables$Mutation$addMyBook>
      get copyWith => CopyWith$Variables$Mutation$addMyBook(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$addMyBook) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addBook = addBook;
    final lOther$addBook = other.addBook;
    if (l$addBook.length != lOther$addBook.length) {
      return false;
    }
    for (int i = 0; i < l$addBook.length; i++) {
      final l$addBook$entry = l$addBook[i];
      final lOther$addBook$entry = lOther$addBook[i];
      if (l$addBook$entry != lOther$addBook$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$addBook = addBook;
    return Object.hashAll([Object.hashAll(l$addBook.map((v) => v))]);
  }
}

abstract class CopyWith$Variables$Mutation$addMyBook<TRes> {
  factory CopyWith$Variables$Mutation$addMyBook(
    Variables$Mutation$addMyBook instance,
    TRes Function(Variables$Mutation$addMyBook) then,
  ) = _CopyWithImpl$Variables$Mutation$addMyBook;

  factory CopyWith$Variables$Mutation$addMyBook.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$addMyBook;

  TRes call({List<Input$AddMyBookInput>? addBook});
}

class _CopyWithImpl$Variables$Mutation$addMyBook<TRes>
    implements CopyWith$Variables$Mutation$addMyBook<TRes> {
  _CopyWithImpl$Variables$Mutation$addMyBook(
    this._instance,
    this._then,
  );

  final Variables$Mutation$addMyBook _instance;

  final TRes Function(Variables$Mutation$addMyBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? addBook = _undefined}) =>
      _then(Variables$Mutation$addMyBook._({
        ..._instance._$data,
        if (addBook != _undefined && addBook != null)
          'addBook': (addBook as List<Input$AddMyBookInput>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$addMyBook<TRes>
    implements CopyWith$Variables$Mutation$addMyBook<TRes> {
  _CopyWithStubImpl$Variables$Mutation$addMyBook(this._res);

  TRes _res;

  call({List<Input$AddMyBookInput>? addBook}) => _res;
}

class Mutation$addMyBook {
  Mutation$addMyBook({
    this.addMyBook,
    this.$__typename = 'Mutation',
  });

  factory Mutation$addMyBook.fromJson(Map<String, dynamic> json) {
    final l$addMyBook = json['addMyBook'];
    final l$$__typename = json['__typename'];
    return Mutation$addMyBook(
      addMyBook: l$addMyBook == null
          ? null
          : Mutation$addMyBook$addMyBook.fromJson(
              (l$addMyBook as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$addMyBook$addMyBook? addMyBook;

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
    if (!(other is Mutation$addMyBook) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$addMyBook on Mutation$addMyBook {
  CopyWith$Mutation$addMyBook<Mutation$addMyBook> get copyWith =>
      CopyWith$Mutation$addMyBook(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$addMyBook<TRes> {
  factory CopyWith$Mutation$addMyBook(
    Mutation$addMyBook instance,
    TRes Function(Mutation$addMyBook) then,
  ) = _CopyWithImpl$Mutation$addMyBook;

  factory CopyWith$Mutation$addMyBook.stub(TRes res) =
      _CopyWithStubImpl$Mutation$addMyBook;

  TRes call({
    Mutation$addMyBook$addMyBook? addMyBook,
    String? $__typename,
  });
  CopyWith$Mutation$addMyBook$addMyBook<TRes> get addMyBook;
}

class _CopyWithImpl$Mutation$addMyBook<TRes>
    implements CopyWith$Mutation$addMyBook<TRes> {
  _CopyWithImpl$Mutation$addMyBook(
    this._instance,
    this._then,
  );

  final Mutation$addMyBook _instance;

  final TRes Function(Mutation$addMyBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addMyBook = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$addMyBook(
        addMyBook: addMyBook == _undefined
            ? _instance.addMyBook
            : (addMyBook as Mutation$addMyBook$addMyBook?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$addMyBook$addMyBook<TRes> get addMyBook {
    final local$addMyBook = _instance.addMyBook;
    return local$addMyBook == null
        ? CopyWith$Mutation$addMyBook$addMyBook.stub(_then(_instance))
        : CopyWith$Mutation$addMyBook$addMyBook(
            local$addMyBook, (e) => call(addMyBook: e));
  }
}

class _CopyWithStubImpl$Mutation$addMyBook<TRes>
    implements CopyWith$Mutation$addMyBook<TRes> {
  _CopyWithStubImpl$Mutation$addMyBook(this._res);

  TRes _res;

  call({
    Mutation$addMyBook$addMyBook? addMyBook,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$addMyBook$addMyBook<TRes> get addMyBook =>
      CopyWith$Mutation$addMyBook$addMyBook.stub(_res);
}

const documentNodeMutationaddMyBook = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'addMyBook'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'addBook')),
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
            value: VariableNode(name: NameNode(value: 'addBook')),
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

class Mutation$addMyBook$addMyBook {
  Mutation$addMyBook$addMyBook({
    this.myBook,
    this.$__typename = 'AddMyBookPayload',
  });

  factory Mutation$addMyBook$addMyBook.fromJson(Map<String, dynamic> json) {
    final l$myBook = json['myBook'];
    final l$$__typename = json['__typename'];
    return Mutation$addMyBook$addMyBook(
      myBook: (l$myBook as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Mutation$addMyBook$addMyBook$myBook.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$addMyBook$addMyBook$myBook?>? myBook;

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
    if (!(other is Mutation$addMyBook$addMyBook) ||
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

extension UtilityExtension$Mutation$addMyBook$addMyBook
    on Mutation$addMyBook$addMyBook {
  CopyWith$Mutation$addMyBook$addMyBook<Mutation$addMyBook$addMyBook>
      get copyWith => CopyWith$Mutation$addMyBook$addMyBook(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$addMyBook$addMyBook<TRes> {
  factory CopyWith$Mutation$addMyBook$addMyBook(
    Mutation$addMyBook$addMyBook instance,
    TRes Function(Mutation$addMyBook$addMyBook) then,
  ) = _CopyWithImpl$Mutation$addMyBook$addMyBook;

  factory CopyWith$Mutation$addMyBook$addMyBook.stub(TRes res) =
      _CopyWithStubImpl$Mutation$addMyBook$addMyBook;

  TRes call({
    List<Mutation$addMyBook$addMyBook$myBook?>? myBook,
    String? $__typename,
  });
  TRes myBook(
      Iterable<Mutation$addMyBook$addMyBook$myBook?>? Function(
              Iterable<
                  CopyWith$Mutation$addMyBook$addMyBook$myBook<
                      Mutation$addMyBook$addMyBook$myBook>?>?)
          _fn);
}

class _CopyWithImpl$Mutation$addMyBook$addMyBook<TRes>
    implements CopyWith$Mutation$addMyBook$addMyBook<TRes> {
  _CopyWithImpl$Mutation$addMyBook$addMyBook(
    this._instance,
    this._then,
  );

  final Mutation$addMyBook$addMyBook _instance;

  final TRes Function(Mutation$addMyBook$addMyBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? myBook = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$addMyBook$addMyBook(
        myBook: myBook == _undefined
            ? _instance.myBook
            : (myBook as List<Mutation$addMyBook$addMyBook$myBook?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes myBook(
          Iterable<Mutation$addMyBook$addMyBook$myBook?>? Function(
                  Iterable<
                      CopyWith$Mutation$addMyBook$addMyBook$myBook<
                          Mutation$addMyBook$addMyBook$myBook>?>?)
              _fn) =>
      call(
          myBook: _fn(_instance.myBook?.map((e) => e == null
              ? null
              : CopyWith$Mutation$addMyBook$addMyBook$myBook(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Mutation$addMyBook$addMyBook<TRes>
    implements CopyWith$Mutation$addMyBook$addMyBook<TRes> {
  _CopyWithStubImpl$Mutation$addMyBook$addMyBook(this._res);

  TRes _res;

  call({
    List<Mutation$addMyBook$addMyBook$myBook?>? myBook,
    String? $__typename,
  }) =>
      _res;

  myBook(_fn) => _res;
}

class Mutation$addMyBook$addMyBook$myBook {
  Mutation$addMyBook$addMyBook$myBook({
    required this.id,
    required this.bookNumber,
    required this.title,
    required this.readOn,
    this.favorite,
    this.$__typename = 'MyBook',
  });

  factory Mutation$addMyBook$addMyBook$myBook.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$bookNumber = json['bookNumber'];
    final l$title = json['title'];
    final l$readOn = json['readOn'];
    final l$favorite = json['favorite'];
    final l$$__typename = json['__typename'];
    return Mutation$addMyBook$addMyBook$myBook(
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
    if (!(other is Mutation$addMyBook$addMyBook$myBook) ||
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

extension UtilityExtension$Mutation$addMyBook$addMyBook$myBook
    on Mutation$addMyBook$addMyBook$myBook {
  CopyWith$Mutation$addMyBook$addMyBook$myBook<
          Mutation$addMyBook$addMyBook$myBook>
      get copyWith => CopyWith$Mutation$addMyBook$addMyBook$myBook(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$addMyBook$addMyBook$myBook<TRes> {
  factory CopyWith$Mutation$addMyBook$addMyBook$myBook(
    Mutation$addMyBook$addMyBook$myBook instance,
    TRes Function(Mutation$addMyBook$addMyBook$myBook) then,
  ) = _CopyWithImpl$Mutation$addMyBook$addMyBook$myBook;

  factory CopyWith$Mutation$addMyBook$addMyBook$myBook.stub(TRes res) =
      _CopyWithStubImpl$Mutation$addMyBook$addMyBook$myBook;

  TRes call({
    String? id,
    int? bookNumber,
    String? title,
    DateTime? readOn,
    bool? favorite,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$addMyBook$addMyBook$myBook<TRes>
    implements CopyWith$Mutation$addMyBook$addMyBook$myBook<TRes> {
  _CopyWithImpl$Mutation$addMyBook$addMyBook$myBook(
    this._instance,
    this._then,
  );

  final Mutation$addMyBook$addMyBook$myBook _instance;

  final TRes Function(Mutation$addMyBook$addMyBook$myBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? bookNumber = _undefined,
    Object? title = _undefined,
    Object? readOn = _undefined,
    Object? favorite = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$addMyBook$addMyBook$myBook(
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

class _CopyWithStubImpl$Mutation$addMyBook$addMyBook$myBook<TRes>
    implements CopyWith$Mutation$addMyBook$addMyBook$myBook<TRes> {
  _CopyWithStubImpl$Mutation$addMyBook$addMyBook$myBook(this._res);

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

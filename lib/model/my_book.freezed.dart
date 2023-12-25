// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyBook _$MyBookFromJson(Map<String, dynamic> json) {
  return _MyBook.fromJson(json);
}

/// @nodoc
mixin _$MyBook {
  String get id => throw _privateConstructorUsedError;
  int get bookNumber => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get readOn => throw _privateConstructorUsedError;
  bool? get favorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyBookCopyWith<MyBook> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyBookCopyWith<$Res> {
  factory $MyBookCopyWith(MyBook value, $Res Function(MyBook) then) =
      _$MyBookCopyWithImpl<$Res, MyBook>;
  @useResult
  $Res call(
      {String id,
      int bookNumber,
      String title,
      DateTime readOn,
      bool? favorite});
}

/// @nodoc
class _$MyBookCopyWithImpl<$Res, $Val extends MyBook>
    implements $MyBookCopyWith<$Res> {
  _$MyBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookNumber = null,
    Object? title = null,
    Object? readOn = null,
    Object? favorite = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bookNumber: null == bookNumber
          ? _value.bookNumber
          : bookNumber // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      readOn: null == readOn
          ? _value.readOn
          : readOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      favorite: freezed == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyBookImplCopyWith<$Res> implements $MyBookCopyWith<$Res> {
  factory _$$MyBookImplCopyWith(
          _$MyBookImpl value, $Res Function(_$MyBookImpl) then) =
      __$$MyBookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int bookNumber,
      String title,
      DateTime readOn,
      bool? favorite});
}

/// @nodoc
class __$$MyBookImplCopyWithImpl<$Res>
    extends _$MyBookCopyWithImpl<$Res, _$MyBookImpl>
    implements _$$MyBookImplCopyWith<$Res> {
  __$$MyBookImplCopyWithImpl(
      _$MyBookImpl _value, $Res Function(_$MyBookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookNumber = null,
    Object? title = null,
    Object? readOn = null,
    Object? favorite = freezed,
  }) {
    return _then(_$MyBookImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bookNumber: null == bookNumber
          ? _value.bookNumber
          : bookNumber // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      readOn: null == readOn
          ? _value.readOn
          : readOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      favorite: freezed == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyBookImpl with DiagnosticableTreeMixin implements _MyBook {
  const _$MyBookImpl(
      {required this.id,
      required this.bookNumber,
      required this.title,
      required this.readOn,
      required this.favorite});

  factory _$MyBookImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyBookImplFromJson(json);

  @override
  final String id;
  @override
  final int bookNumber;
  @override
  final String title;
  @override
  final DateTime readOn;
  @override
  final bool? favorite;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyBook(id: $id, bookNumber: $bookNumber, title: $title, readOn: $readOn, favorite: $favorite)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyBook'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('bookNumber', bookNumber))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('readOn', readOn))
      ..add(DiagnosticsProperty('favorite', favorite));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyBookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookNumber, bookNumber) ||
                other.bookNumber == bookNumber) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.readOn, readOn) || other.readOn == readOn) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, bookNumber, title, readOn, favorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyBookImplCopyWith<_$MyBookImpl> get copyWith =>
      __$$MyBookImplCopyWithImpl<_$MyBookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyBookImplToJson(
      this,
    );
  }
}

abstract class _MyBook implements MyBook {
  const factory _MyBook(
      {required final String id,
      required final int bookNumber,
      required final String title,
      required final DateTime readOn,
      required final bool? favorite}) = _$MyBookImpl;

  factory _MyBook.fromJson(Map<String, dynamic> json) = _$MyBookImpl.fromJson;

  @override
  String get id;
  @override
  int get bookNumber;
  @override
  String get title;
  @override
  DateTime get readOn;
  @override
  bool? get favorite;
  @override
  @JsonKey(ignore: true)
  _$$MyBookImplCopyWith<_$MyBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

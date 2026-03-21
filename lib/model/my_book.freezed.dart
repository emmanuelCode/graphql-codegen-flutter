// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyBook implements DiagnosticableTreeMixin {

 String get id; int get bookNumber; String get title; DateTime get readOn; bool? get favorite;
/// Create a copy of MyBook
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyBookCopyWith<MyBook> get copyWith => _$MyBookCopyWithImpl<MyBook>(this as MyBook, _$identity);

  /// Serializes this MyBook to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyBook'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('bookNumber', bookNumber))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('readOn', readOn))..add(DiagnosticsProperty('favorite', favorite));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyBook&&(identical(other.id, id) || other.id == id)&&(identical(other.bookNumber, bookNumber) || other.bookNumber == bookNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.readOn, readOn) || other.readOn == readOn)&&(identical(other.favorite, favorite) || other.favorite == favorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,bookNumber,title,readOn,favorite);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyBook(id: $id, bookNumber: $bookNumber, title: $title, readOn: $readOn, favorite: $favorite)';
}


}

/// @nodoc
abstract mixin class $MyBookCopyWith<$Res>  {
  factory $MyBookCopyWith(MyBook value, $Res Function(MyBook) _then) = _$MyBookCopyWithImpl;
@useResult
$Res call({
 String id, int bookNumber, String title, DateTime readOn, bool? favorite
});




}
/// @nodoc
class _$MyBookCopyWithImpl<$Res>
    implements $MyBookCopyWith<$Res> {
  _$MyBookCopyWithImpl(this._self, this._then);

  final MyBook _self;
  final $Res Function(MyBook) _then;

/// Create a copy of MyBook
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? bookNumber = null,Object? title = null,Object? readOn = null,Object? favorite = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,bookNumber: null == bookNumber ? _self.bookNumber : bookNumber // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,readOn: null == readOn ? _self.readOn : readOn // ignore: cast_nullable_to_non_nullable
as DateTime,favorite: freezed == favorite ? _self.favorite : favorite // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyBook].
extension MyBookPatterns on MyBook {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyBook value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyBook() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyBook value)  $default,){
final _that = this;
switch (_that) {
case _MyBook():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyBook value)?  $default,){
final _that = this;
switch (_that) {
case _MyBook() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int bookNumber,  String title,  DateTime readOn,  bool? favorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyBook() when $default != null:
return $default(_that.id,_that.bookNumber,_that.title,_that.readOn,_that.favorite);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int bookNumber,  String title,  DateTime readOn,  bool? favorite)  $default,) {final _that = this;
switch (_that) {
case _MyBook():
return $default(_that.id,_that.bookNumber,_that.title,_that.readOn,_that.favorite);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int bookNumber,  String title,  DateTime readOn,  bool? favorite)?  $default,) {final _that = this;
switch (_that) {
case _MyBook() when $default != null:
return $default(_that.id,_that.bookNumber,_that.title,_that.readOn,_that.favorite);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyBook with DiagnosticableTreeMixin implements MyBook {
  const _MyBook({required this.id, required this.bookNumber, required this.title, required this.readOn, required this.favorite});
  factory _MyBook.fromJson(Map<String, dynamic> json) => _$MyBookFromJson(json);

@override final  String id;
@override final  int bookNumber;
@override final  String title;
@override final  DateTime readOn;
@override final  bool? favorite;

/// Create a copy of MyBook
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyBookCopyWith<_MyBook> get copyWith => __$MyBookCopyWithImpl<_MyBook>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyBookToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MyBook'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('bookNumber', bookNumber))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('readOn', readOn))..add(DiagnosticsProperty('favorite', favorite));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyBook&&(identical(other.id, id) || other.id == id)&&(identical(other.bookNumber, bookNumber) || other.bookNumber == bookNumber)&&(identical(other.title, title) || other.title == title)&&(identical(other.readOn, readOn) || other.readOn == readOn)&&(identical(other.favorite, favorite) || other.favorite == favorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,bookNumber,title,readOn,favorite);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MyBook(id: $id, bookNumber: $bookNumber, title: $title, readOn: $readOn, favorite: $favorite)';
}


}

/// @nodoc
abstract mixin class _$MyBookCopyWith<$Res> implements $MyBookCopyWith<$Res> {
  factory _$MyBookCopyWith(_MyBook value, $Res Function(_MyBook) _then) = __$MyBookCopyWithImpl;
@override @useResult
$Res call({
 String id, int bookNumber, String title, DateTime readOn, bool? favorite
});




}
/// @nodoc
class __$MyBookCopyWithImpl<$Res>
    implements _$MyBookCopyWith<$Res> {
  __$MyBookCopyWithImpl(this._self, this._then);

  final _MyBook _self;
  final $Res Function(_MyBook) _then;

/// Create a copy of MyBook
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? bookNumber = null,Object? title = null,Object? readOn = null,Object? favorite = freezed,}) {
  return _then(_MyBook(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,bookNumber: null == bookNumber ? _self.bookNumber : bookNumber // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,readOn: null == readOn ? _self.readOn : readOn // ignore: cast_nullable_to_non_nullable
as DateTime,favorite: freezed == favorite ? _self.favorite : favorite // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on

import 'package:freezed_annotation/freezed_annotation.dart';
// hide the JsonSerializable as there is a library conflict with json_annotation
import 'package:graphql/client.dart' hide JsonSerializable;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_book.freezed.dart';

part 'my_book.g.dart';

@freezed
class MyBook with _$MyBook {
  const factory MyBook({
    required String id,
    required int bookNumber,
    required String title,
    required DateTime readOn,
    required bool? favorite,
  }) = _MyBook;

  factory MyBook.fromJson(Map<String, Object?> json) => _$MyBookFromJson(json);
}


@riverpod
class MyBookQueries extends _$MyBookQueries {

  @override
  MyBook build(GraphQLClient client) {
    return MyBook(
      id: '',
      bookNumber: 0,
      title: '',
      readOn: DateTime.now(),
      favorite: null,
    );
  }
}

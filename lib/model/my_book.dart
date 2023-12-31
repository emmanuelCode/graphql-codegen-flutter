import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// hide the JsonSerializable as there is a library conflict with json_annotation
import 'package:graphql/client.dart' hide JsonSerializable;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';
import '../graphql_queries/upsert_book.mutation.graphql.dart';
import '../schema.graphql.dart';

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
  final Uuid uuid = Uuid(options: {'grnd': UuidUtil.cryptoRNG()});
  final List<MyBook> myBookListActivity = [];

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

  Future<void> upsertBook({
    String? id,
    required int bookNumber,
    required String title,
    required DateTime readOn,
    bool? favorite,
  }) async {
    final result = await client.mutate$upsertMyBook(
      Options$Mutation$upsertMyBook(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$upsertMyBook(
          upsertBook: [
            Input$AddMyBookInput(
              // if no id is given or doesn't match
              // in the database then we want to
              // add a book otherwise we update
              id: id ?? uuid.v4(),
              bookNumber: bookNumber,
              title: title,
              readOn: readOn,
              favorite: favorite,
            )
          ],
        ),
      ),
    );

    final parsedData = result.parsedData;
    debugPrint('$parsedData');

    final myBook = parsedData?.addMyBook?.myBook?[0];
    debugPrint('$myBook');

    final MyBook book = MyBook(
      id: myBook!.id,
      bookNumber: myBook.bookNumber,
      title: myBook.title,
      readOn: myBook.readOn,
      favorite: myBook.favorite,
    );

    myBookListActivity.add(book);

    state = book;

    debugPrint('${uuid.options} $parsedData');
  }
}

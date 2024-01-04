import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// hide the JsonSerializable as there is a library conflict with json_annotation
import 'package:graphql/client.dart' hide JsonSerializable;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/data.dart';
import 'package:uuid/rng.dart';
import 'package:uuid/uuid.dart';
import '../graphql_queries/upsert_book.mutation.graphql.dart';
import '../graphql_queries/get_book.query.graphql.dart';
import '../graphql_queries/delete_book.mutation.graphql.dart';
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
  final Uuid uuid = Uuid(goptions:  GlobalOptions(CryptoRNG()));
  final List<MyBook> myBookListActivity = [];
  final List<String> graphQLActivityListType = [];

  @override
  MyBook build(GraphQLClient client) {
    debugPrint('${uuid.goptions!.rng}');
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
    final myBook =
        parsedData?.addMyBook?.myBook?[0]?.toJson() as Map<String, Object?>;

    final MyBook book = MyBook.fromJson(myBook);

    myBookListActivity.add(book);
    graphQLActivityListType.add('UPSERT');

    state = book;

    debugPrint('Upsert: ${result.data}');
  }

  Future<void> getBook({required String id}) async {
    final result = await client.query$getMyBook(
      Options$Query$getMyBook(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Query$getMyBook(getBook: id),
      ),
    );

    final parsedData = result.parsedData;
    final myBook = parsedData?.getMyBook?.toJson() as Map<String, Object?>;

    final MyBook book = MyBook.fromJson(myBook);

    myBookListActivity.add(book);
    graphQLActivityListType.add('GET');

    state = book;

    debugPrint('Get: ${result.data}');
  }

  Future<void> deleteBook({required String id}) async {
    final result = await client.mutate$deleteMyBook(
      Options$Mutation$deleteMyBook(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$deleteMyBook(
          deleteBook: Input$MyBookFilter(id: Input$StringHashFilter(eq: id)),
        ),
      ),
    );

    final parsedData = result.parsedData;
    final myBook =
        parsedData?.deleteMyBook?.myBook?[0]?.toJson() as Map<String, Object?>;

    final MyBook book = MyBook.fromJson(myBook);

    myBookListActivity.add(book);
    graphQLActivityListType.add('DELETE');

    state = book;

    debugPrint('Delete: ${result.data}');
  }
}

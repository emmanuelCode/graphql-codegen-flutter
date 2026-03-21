// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyBook _$MyBookFromJson(Map<String, dynamic> json) => _MyBook(
  id: json['id'] as String,
  bookNumber: (json['bookNumber'] as num).toInt(),
  title: json['title'] as String,
  readOn: DateTime.parse(json['readOn'] as String),
  favorite: json['favorite'] as bool?,
);

Map<String, dynamic> _$MyBookToJson(_MyBook instance) => <String, dynamic>{
  'id': instance.id,
  'bookNumber': instance.bookNumber,
  'title': instance.title,
  'readOn': instance.readOn.toIso8601String(),
  'favorite': instance.favorite,
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MyBookQueries)
final myBookQueriesProvider = MyBookQueriesFamily._();

final class MyBookQueriesProvider
    extends $NotifierProvider<MyBookQueries, MyBook> {
  MyBookQueriesProvider._({
    required MyBookQueriesFamily super.from,
    required GraphQLClient super.argument,
  }) : super(
         retry: null,
         name: r'myBookQueriesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$myBookQueriesHash();

  @override
  String toString() {
    return r'myBookQueriesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MyBookQueries create() => MyBookQueries();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MyBook value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MyBook>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyBookQueriesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$myBookQueriesHash() => r'65d479f7437a7b98a323777e99a54a1185c18b87';

final class MyBookQueriesFamily extends $Family
    with
        $ClassFamilyOverride<
          MyBookQueries,
          MyBook,
          MyBook,
          MyBook,
          GraphQLClient
        > {
  MyBookQueriesFamily._()
    : super(
        retry: null,
        name: r'myBookQueriesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MyBookQueriesProvider call(GraphQLClient client) =>
      MyBookQueriesProvider._(argument: client, from: this);

  @override
  String toString() => r'myBookQueriesProvider';
}

abstract class _$MyBookQueries extends $Notifier<MyBook> {
  late final _$args = ref.$arg as GraphQLClient;
  GraphQLClient get client => _$args;

  MyBook build(GraphQLClient client);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<MyBook, MyBook>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MyBook, MyBook>,
              MyBook,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}

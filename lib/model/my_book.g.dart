// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyBookImpl _$$MyBookImplFromJson(Map<String, dynamic> json) => _$MyBookImpl(
      id: json['id'] as String,
      bookNumber: json['bookNumber'] as int,
      title: json['title'] as String,
      readOn: DateTime.parse(json['readOn'] as String),
      favorite: json['favorite'] as bool?,
    );

Map<String, dynamic> _$$MyBookImplToJson(_$MyBookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookNumber': instance.bookNumber,
      'title': instance.title,
      'readOn': instance.readOn.toIso8601String(),
      'favorite': instance.favorite,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myBookQueriesHash() => r'51d1aa004565023942da470695123c773418c172';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$MyBookQueries extends BuildlessAutoDisposeNotifier<MyBook> {
  late final GraphQLClient client;

  MyBook build(
    GraphQLClient client,
  );
}

/// See also [MyBookQueries].
@ProviderFor(MyBookQueries)
const myBookQueriesProvider = MyBookQueriesFamily();

/// See also [MyBookQueries].
class MyBookQueriesFamily extends Family<MyBook> {
  /// See also [MyBookQueries].
  const MyBookQueriesFamily();

  /// See also [MyBookQueries].
  MyBookQueriesProvider call(
    GraphQLClient client,
  ) {
    return MyBookQueriesProvider(
      client,
    );
  }

  @override
  MyBookQueriesProvider getProviderOverride(
    covariant MyBookQueriesProvider provider,
  ) {
    return call(
      provider.client,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'myBookQueriesProvider';
}

/// See also [MyBookQueries].
class MyBookQueriesProvider
    extends AutoDisposeNotifierProviderImpl<MyBookQueries, MyBook> {
  /// See also [MyBookQueries].
  MyBookQueriesProvider(
    GraphQLClient client,
  ) : this._internal(
          () => MyBookQueries()..client = client,
          from: myBookQueriesProvider,
          name: r'myBookQueriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myBookQueriesHash,
          dependencies: MyBookQueriesFamily._dependencies,
          allTransitiveDependencies:
              MyBookQueriesFamily._allTransitiveDependencies,
          client: client,
        );

  MyBookQueriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.client,
  }) : super.internal();

  final GraphQLClient client;

  @override
  MyBook runNotifierBuild(
    covariant MyBookQueries notifier,
  ) {
    return notifier.build(
      client,
    );
  }

  @override
  Override overrideWith(MyBookQueries Function() create) {
    return ProviderOverride(
      origin: this,
      override: MyBookQueriesProvider._internal(
        () => create()..client = client,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        client: client,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<MyBookQueries, MyBook> createElement() {
    return _MyBookQueriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyBookQueriesProvider && other.client == client;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, client.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MyBookQueriesRef on AutoDisposeNotifierProviderRef<MyBook> {
  /// The parameter `client` of this provider.
  GraphQLClient get client;
}

class _MyBookQueriesProviderElement
    extends AutoDisposeNotifierProviderElement<MyBookQueries, MyBook>
    with MyBookQueriesRef {
  _MyBookQueriesProviderElement(super.provider);

  @override
  GraphQLClient get client => (origin as MyBookQueriesProvider).client;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

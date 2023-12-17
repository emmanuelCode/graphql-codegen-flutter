class Input$AddMyBookInput {
  factory Input$AddMyBookInput({
    required int bookNumber,
    required String title,
    required DateTime readOn,
    bool? favorite,
  }) =>
      Input$AddMyBookInput._({
        r'bookNumber': bookNumber,
        r'title': title,
        r'readOn': readOn,
        if (favorite != null) r'favorite': favorite,
      });

  Input$AddMyBookInput._(this._$data);

  factory Input$AddMyBookInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$bookNumber = data['bookNumber'];
    result$data['bookNumber'] = (l$bookNumber as int);
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    final l$readOn = data['readOn'];
    result$data['readOn'] = DateTime.parse((l$readOn as String));
    if (data.containsKey('favorite')) {
      final l$favorite = data['favorite'];
      result$data['favorite'] = (l$favorite as bool?);
    }
    return Input$AddMyBookInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get bookNumber => (_$data['bookNumber'] as int);

  String get title => (_$data['title'] as String);

  DateTime get readOn => (_$data['readOn'] as DateTime);

  bool? get favorite => (_$data['favorite'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$bookNumber = bookNumber;
    result$data['bookNumber'] = l$bookNumber;
    final l$title = title;
    result$data['title'] = l$title;
    final l$readOn = readOn;
    result$data['readOn'] = l$readOn.toIso8601String();
    if (_$data.containsKey('favorite')) {
      final l$favorite = favorite;
      result$data['favorite'] = l$favorite;
    }
    return result$data;
  }

  CopyWith$Input$AddMyBookInput<Input$AddMyBookInput> get copyWith =>
      CopyWith$Input$AddMyBookInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AddMyBookInput) || runtimeType != other.runtimeType) {
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
    if (_$data.containsKey('favorite') !=
        other._$data.containsKey('favorite')) {
      return false;
    }
    if (l$favorite != lOther$favorite) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bookNumber = bookNumber;
    final l$title = title;
    final l$readOn = readOn;
    final l$favorite = favorite;
    return Object.hashAll([
      l$bookNumber,
      l$title,
      l$readOn,
      _$data.containsKey('favorite') ? l$favorite : const {},
    ]);
  }
}

abstract class CopyWith$Input$AddMyBookInput<TRes> {
  factory CopyWith$Input$AddMyBookInput(
    Input$AddMyBookInput instance,
    TRes Function(Input$AddMyBookInput) then,
  ) = _CopyWithImpl$Input$AddMyBookInput;

  factory CopyWith$Input$AddMyBookInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AddMyBookInput;

  TRes call({
    int? bookNumber,
    String? title,
    DateTime? readOn,
    bool? favorite,
  });
}

class _CopyWithImpl$Input$AddMyBookInput<TRes>
    implements CopyWith$Input$AddMyBookInput<TRes> {
  _CopyWithImpl$Input$AddMyBookInput(
    this._instance,
    this._then,
  );

  final Input$AddMyBookInput _instance;

  final TRes Function(Input$AddMyBookInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bookNumber = _undefined,
    Object? title = _undefined,
    Object? readOn = _undefined,
    Object? favorite = _undefined,
  }) =>
      _then(Input$AddMyBookInput._({
        ..._instance._$data,
        if (bookNumber != _undefined && bookNumber != null)
          'bookNumber': (bookNumber as int),
        if (title != _undefined && title != null) 'title': (title as String),
        if (readOn != _undefined && readOn != null)
          'readOn': (readOn as DateTime),
        if (favorite != _undefined) 'favorite': (favorite as bool?),
      }));
}

class _CopyWithStubImpl$Input$AddMyBookInput<TRes>
    implements CopyWith$Input$AddMyBookInput<TRes> {
  _CopyWithStubImpl$Input$AddMyBookInput(this._res);

  TRes _res;

  call({
    int? bookNumber,
    String? title,
    DateTime? readOn,
    bool? favorite,
  }) =>
      _res;
}

class Input$AuthRule {
  factory Input$AuthRule({
    List<Input$AuthRule?>? and,
    List<Input$AuthRule?>? or,
    Input$AuthRule? not,
    String? rule,
  }) =>
      Input$AuthRule._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (not != null) r'not': not,
        if (rule != null) r'rule': rule,
      });

  Input$AuthRule._(this._$data);

  factory Input$AuthRule.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$AuthRule.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$AuthRule.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$AuthRule.fromJson((l$not as Map<String, dynamic>));
    }
    if (data.containsKey('rule')) {
      final l$rule = data['rule'];
      result$data['rule'] = (l$rule as String?);
    }
    return Input$AuthRule._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AuthRule?>? get and => (_$data['and'] as List<Input$AuthRule?>?);

  List<Input$AuthRule?>? get or => (_$data['or'] as List<Input$AuthRule?>?);

  Input$AuthRule? get not => (_$data['not'] as Input$AuthRule?);

  String? get rule => (_$data['rule'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    if (_$data.containsKey('rule')) {
      final l$rule = rule;
      result$data['rule'] = l$rule;
    }
    return result$data;
  }

  CopyWith$Input$AuthRule<Input$AuthRule> get copyWith =>
      CopyWith$Input$AuthRule(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AuthRule) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    final l$rule = rule;
    final lOther$rule = other.rule;
    if (_$data.containsKey('rule') != other._$data.containsKey('rule')) {
      return false;
    }
    if (l$rule != lOther$rule) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$rule = rule;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('not') ? l$not : const {},
      _$data.containsKey('rule') ? l$rule : const {},
    ]);
  }
}

abstract class CopyWith$Input$AuthRule<TRes> {
  factory CopyWith$Input$AuthRule(
    Input$AuthRule instance,
    TRes Function(Input$AuthRule) then,
  ) = _CopyWithImpl$Input$AuthRule;

  factory CopyWith$Input$AuthRule.stub(TRes res) =
      _CopyWithStubImpl$Input$AuthRule;

  TRes call({
    List<Input$AuthRule?>? and,
    List<Input$AuthRule?>? or,
    Input$AuthRule? not,
    String? rule,
  });
  TRes and(
      Iterable<Input$AuthRule?>? Function(
              Iterable<CopyWith$Input$AuthRule<Input$AuthRule>?>?)
          _fn);
  TRes or(
      Iterable<Input$AuthRule?>? Function(
              Iterable<CopyWith$Input$AuthRule<Input$AuthRule>?>?)
          _fn);
  CopyWith$Input$AuthRule<TRes> get not;
}

class _CopyWithImpl$Input$AuthRule<TRes>
    implements CopyWith$Input$AuthRule<TRes> {
  _CopyWithImpl$Input$AuthRule(
    this._instance,
    this._then,
  );

  final Input$AuthRule _instance;

  final TRes Function(Input$AuthRule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? rule = _undefined,
  }) =>
      _then(Input$AuthRule._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$AuthRule?>?),
        if (or != _undefined) 'or': (or as List<Input$AuthRule?>?),
        if (not != _undefined) 'not': (not as Input$AuthRule?),
        if (rule != _undefined) 'rule': (rule as String?),
      }));

  TRes and(
          Iterable<Input$AuthRule?>? Function(
                  Iterable<CopyWith$Input$AuthRule<Input$AuthRule>?>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => e == null
              ? null
              : CopyWith$Input$AuthRule(
                  e,
                  (i) => i,
                )))?.toList());

  TRes or(
          Iterable<Input$AuthRule?>? Function(
                  Iterable<CopyWith$Input$AuthRule<Input$AuthRule>?>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => e == null
              ? null
              : CopyWith$Input$AuthRule(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Input$AuthRule<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$AuthRule.stub(_then(_instance))
        : CopyWith$Input$AuthRule(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$AuthRule<TRes>
    implements CopyWith$Input$AuthRule<TRes> {
  _CopyWithStubImpl$Input$AuthRule(this._res);

  TRes _res;

  call({
    List<Input$AuthRule?>? and,
    List<Input$AuthRule?>? or,
    Input$AuthRule? not,
    String? rule,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$AuthRule<TRes> get not => CopyWith$Input$AuthRule.stub(_res);
}

class Input$ContainsFilter {
  factory Input$ContainsFilter({
    Input$PointRef? point,
    Input$PolygonRef? polygon,
  }) =>
      Input$ContainsFilter._({
        if (point != null) r'point': point,
        if (polygon != null) r'polygon': polygon,
      });

  Input$ContainsFilter._(this._$data);

  factory Input$ContainsFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('point')) {
      final l$point = data['point'];
      result$data['point'] = l$point == null
          ? null
          : Input$PointRef.fromJson((l$point as Map<String, dynamic>));
    }
    if (data.containsKey('polygon')) {
      final l$polygon = data['polygon'];
      result$data['polygon'] = l$polygon == null
          ? null
          : Input$PolygonRef.fromJson((l$polygon as Map<String, dynamic>));
    }
    return Input$ContainsFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PointRef? get point => (_$data['point'] as Input$PointRef?);

  Input$PolygonRef? get polygon => (_$data['polygon'] as Input$PolygonRef?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('point')) {
      final l$point = point;
      result$data['point'] = l$point?.toJson();
    }
    if (_$data.containsKey('polygon')) {
      final l$polygon = polygon;
      result$data['polygon'] = l$polygon?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ContainsFilter<Input$ContainsFilter> get copyWith =>
      CopyWith$Input$ContainsFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ContainsFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$point = point;
    final lOther$point = other.point;
    if (_$data.containsKey('point') != other._$data.containsKey('point')) {
      return false;
    }
    if (l$point != lOther$point) {
      return false;
    }
    final l$polygon = polygon;
    final lOther$polygon = other.polygon;
    if (_$data.containsKey('polygon') != other._$data.containsKey('polygon')) {
      return false;
    }
    if (l$polygon != lOther$polygon) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$point = point;
    final l$polygon = polygon;
    return Object.hashAll([
      _$data.containsKey('point') ? l$point : const {},
      _$data.containsKey('polygon') ? l$polygon : const {},
    ]);
  }
}

abstract class CopyWith$Input$ContainsFilter<TRes> {
  factory CopyWith$Input$ContainsFilter(
    Input$ContainsFilter instance,
    TRes Function(Input$ContainsFilter) then,
  ) = _CopyWithImpl$Input$ContainsFilter;

  factory CopyWith$Input$ContainsFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ContainsFilter;

  TRes call({
    Input$PointRef? point,
    Input$PolygonRef? polygon,
  });
  CopyWith$Input$PointRef<TRes> get point;
  CopyWith$Input$PolygonRef<TRes> get polygon;
}

class _CopyWithImpl$Input$ContainsFilter<TRes>
    implements CopyWith$Input$ContainsFilter<TRes> {
  _CopyWithImpl$Input$ContainsFilter(
    this._instance,
    this._then,
  );

  final Input$ContainsFilter _instance;

  final TRes Function(Input$ContainsFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? point = _undefined,
    Object? polygon = _undefined,
  }) =>
      _then(Input$ContainsFilter._({
        ..._instance._$data,
        if (point != _undefined) 'point': (point as Input$PointRef?),
        if (polygon != _undefined) 'polygon': (polygon as Input$PolygonRef?),
      }));

  CopyWith$Input$PointRef<TRes> get point {
    final local$point = _instance.point;
    return local$point == null
        ? CopyWith$Input$PointRef.stub(_then(_instance))
        : CopyWith$Input$PointRef(local$point, (e) => call(point: e));
  }

  CopyWith$Input$PolygonRef<TRes> get polygon {
    final local$polygon = _instance.polygon;
    return local$polygon == null
        ? CopyWith$Input$PolygonRef.stub(_then(_instance))
        : CopyWith$Input$PolygonRef(local$polygon, (e) => call(polygon: e));
  }
}

class _CopyWithStubImpl$Input$ContainsFilter<TRes>
    implements CopyWith$Input$ContainsFilter<TRes> {
  _CopyWithStubImpl$Input$ContainsFilter(this._res);

  TRes _res;

  call({
    Input$PointRef? point,
    Input$PolygonRef? polygon,
  }) =>
      _res;

  CopyWith$Input$PointRef<TRes> get point => CopyWith$Input$PointRef.stub(_res);

  CopyWith$Input$PolygonRef<TRes> get polygon =>
      CopyWith$Input$PolygonRef.stub(_res);
}

class Input$CustomHTTP {
  factory Input$CustomHTTP({
    required String url,
    required Enum$HTTPMethod method,
    String? body,
    String? graphql,
    Enum$Mode? mode,
    List<String>? forwardHeaders,
    List<String>? secretHeaders,
    List<String>? introspectionHeaders,
    bool? skipIntrospection,
  }) =>
      Input$CustomHTTP._({
        r'url': url,
        r'method': method,
        if (body != null) r'body': body,
        if (graphql != null) r'graphql': graphql,
        if (mode != null) r'mode': mode,
        if (forwardHeaders != null) r'forwardHeaders': forwardHeaders,
        if (secretHeaders != null) r'secretHeaders': secretHeaders,
        if (introspectionHeaders != null)
          r'introspectionHeaders': introspectionHeaders,
        if (skipIntrospection != null) r'skipIntrospection': skipIntrospection,
      });

  Input$CustomHTTP._(this._$data);

  factory Input$CustomHTTP.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$url = data['url'];
    result$data['url'] = (l$url as String);
    final l$method = data['method'];
    result$data['method'] = fromJson$Enum$HTTPMethod((l$method as String));
    if (data.containsKey('body')) {
      final l$body = data['body'];
      result$data['body'] = (l$body as String?);
    }
    if (data.containsKey('graphql')) {
      final l$graphql = data['graphql'];
      result$data['graphql'] = (l$graphql as String?);
    }
    if (data.containsKey('mode')) {
      final l$mode = data['mode'];
      result$data['mode'] =
          l$mode == null ? null : fromJson$Enum$Mode((l$mode as String));
    }
    if (data.containsKey('forwardHeaders')) {
      final l$forwardHeaders = data['forwardHeaders'];
      result$data['forwardHeaders'] = (l$forwardHeaders as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('secretHeaders')) {
      final l$secretHeaders = data['secretHeaders'];
      result$data['secretHeaders'] = (l$secretHeaders as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('introspectionHeaders')) {
      final l$introspectionHeaders = data['introspectionHeaders'];
      result$data['introspectionHeaders'] =
          (l$introspectionHeaders as List<dynamic>?)
              ?.map((e) => (e as String))
              .toList();
    }
    if (data.containsKey('skipIntrospection')) {
      final l$skipIntrospection = data['skipIntrospection'];
      result$data['skipIntrospection'] = (l$skipIntrospection as bool?);
    }
    return Input$CustomHTTP._(result$data);
  }

  Map<String, dynamic> _$data;

  String get url => (_$data['url'] as String);

  Enum$HTTPMethod get method => (_$data['method'] as Enum$HTTPMethod);

  String? get body => (_$data['body'] as String?);

  String? get graphql => (_$data['graphql'] as String?);

  Enum$Mode? get mode => (_$data['mode'] as Enum$Mode?);

  List<String>? get forwardHeaders =>
      (_$data['forwardHeaders'] as List<String>?);

  List<String>? get secretHeaders => (_$data['secretHeaders'] as List<String>?);

  List<String>? get introspectionHeaders =>
      (_$data['introspectionHeaders'] as List<String>?);

  bool? get skipIntrospection => (_$data['skipIntrospection'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$url = url;
    result$data['url'] = l$url;
    final l$method = method;
    result$data['method'] = toJson$Enum$HTTPMethod(l$method);
    if (_$data.containsKey('body')) {
      final l$body = body;
      result$data['body'] = l$body;
    }
    if (_$data.containsKey('graphql')) {
      final l$graphql = graphql;
      result$data['graphql'] = l$graphql;
    }
    if (_$data.containsKey('mode')) {
      final l$mode = mode;
      result$data['mode'] = l$mode == null ? null : toJson$Enum$Mode(l$mode);
    }
    if (_$data.containsKey('forwardHeaders')) {
      final l$forwardHeaders = forwardHeaders;
      result$data['forwardHeaders'] = l$forwardHeaders?.map((e) => e).toList();
    }
    if (_$data.containsKey('secretHeaders')) {
      final l$secretHeaders = secretHeaders;
      result$data['secretHeaders'] = l$secretHeaders?.map((e) => e).toList();
    }
    if (_$data.containsKey('introspectionHeaders')) {
      final l$introspectionHeaders = introspectionHeaders;
      result$data['introspectionHeaders'] =
          l$introspectionHeaders?.map((e) => e).toList();
    }
    if (_$data.containsKey('skipIntrospection')) {
      final l$skipIntrospection = skipIntrospection;
      result$data['skipIntrospection'] = l$skipIntrospection;
    }
    return result$data;
  }

  CopyWith$Input$CustomHTTP<Input$CustomHTTP> get copyWith =>
      CopyWith$Input$CustomHTTP(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CustomHTTP) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$method = method;
    final lOther$method = other.method;
    if (l$method != lOther$method) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (_$data.containsKey('body') != other._$data.containsKey('body')) {
      return false;
    }
    if (l$body != lOther$body) {
      return false;
    }
    final l$graphql = graphql;
    final lOther$graphql = other.graphql;
    if (_$data.containsKey('graphql') != other._$data.containsKey('graphql')) {
      return false;
    }
    if (l$graphql != lOther$graphql) {
      return false;
    }
    final l$mode = mode;
    final lOther$mode = other.mode;
    if (_$data.containsKey('mode') != other._$data.containsKey('mode')) {
      return false;
    }
    if (l$mode != lOther$mode) {
      return false;
    }
    final l$forwardHeaders = forwardHeaders;
    final lOther$forwardHeaders = other.forwardHeaders;
    if (_$data.containsKey('forwardHeaders') !=
        other._$data.containsKey('forwardHeaders')) {
      return false;
    }
    if (l$forwardHeaders != null && lOther$forwardHeaders != null) {
      if (l$forwardHeaders.length != lOther$forwardHeaders.length) {
        return false;
      }
      for (int i = 0; i < l$forwardHeaders.length; i++) {
        final l$forwardHeaders$entry = l$forwardHeaders[i];
        final lOther$forwardHeaders$entry = lOther$forwardHeaders[i];
        if (l$forwardHeaders$entry != lOther$forwardHeaders$entry) {
          return false;
        }
      }
    } else if (l$forwardHeaders != lOther$forwardHeaders) {
      return false;
    }
    final l$secretHeaders = secretHeaders;
    final lOther$secretHeaders = other.secretHeaders;
    if (_$data.containsKey('secretHeaders') !=
        other._$data.containsKey('secretHeaders')) {
      return false;
    }
    if (l$secretHeaders != null && lOther$secretHeaders != null) {
      if (l$secretHeaders.length != lOther$secretHeaders.length) {
        return false;
      }
      for (int i = 0; i < l$secretHeaders.length; i++) {
        final l$secretHeaders$entry = l$secretHeaders[i];
        final lOther$secretHeaders$entry = lOther$secretHeaders[i];
        if (l$secretHeaders$entry != lOther$secretHeaders$entry) {
          return false;
        }
      }
    } else if (l$secretHeaders != lOther$secretHeaders) {
      return false;
    }
    final l$introspectionHeaders = introspectionHeaders;
    final lOther$introspectionHeaders = other.introspectionHeaders;
    if (_$data.containsKey('introspectionHeaders') !=
        other._$data.containsKey('introspectionHeaders')) {
      return false;
    }
    if (l$introspectionHeaders != null && lOther$introspectionHeaders != null) {
      if (l$introspectionHeaders.length != lOther$introspectionHeaders.length) {
        return false;
      }
      for (int i = 0; i < l$introspectionHeaders.length; i++) {
        final l$introspectionHeaders$entry = l$introspectionHeaders[i];
        final lOther$introspectionHeaders$entry =
            lOther$introspectionHeaders[i];
        if (l$introspectionHeaders$entry != lOther$introspectionHeaders$entry) {
          return false;
        }
      }
    } else if (l$introspectionHeaders != lOther$introspectionHeaders) {
      return false;
    }
    final l$skipIntrospection = skipIntrospection;
    final lOther$skipIntrospection = other.skipIntrospection;
    if (_$data.containsKey('skipIntrospection') !=
        other._$data.containsKey('skipIntrospection')) {
      return false;
    }
    if (l$skipIntrospection != lOther$skipIntrospection) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$method = method;
    final l$body = body;
    final l$graphql = graphql;
    final l$mode = mode;
    final l$forwardHeaders = forwardHeaders;
    final l$secretHeaders = secretHeaders;
    final l$introspectionHeaders = introspectionHeaders;
    final l$skipIntrospection = skipIntrospection;
    return Object.hashAll([
      l$url,
      l$method,
      _$data.containsKey('body') ? l$body : const {},
      _$data.containsKey('graphql') ? l$graphql : const {},
      _$data.containsKey('mode') ? l$mode : const {},
      _$data.containsKey('forwardHeaders')
          ? l$forwardHeaders == null
              ? null
              : Object.hashAll(l$forwardHeaders.map((v) => v))
          : const {},
      _$data.containsKey('secretHeaders')
          ? l$secretHeaders == null
              ? null
              : Object.hashAll(l$secretHeaders.map((v) => v))
          : const {},
      _$data.containsKey('introspectionHeaders')
          ? l$introspectionHeaders == null
              ? null
              : Object.hashAll(l$introspectionHeaders.map((v) => v))
          : const {},
      _$data.containsKey('skipIntrospection') ? l$skipIntrospection : const {},
    ]);
  }
}

abstract class CopyWith$Input$CustomHTTP<TRes> {
  factory CopyWith$Input$CustomHTTP(
    Input$CustomHTTP instance,
    TRes Function(Input$CustomHTTP) then,
  ) = _CopyWithImpl$Input$CustomHTTP;

  factory CopyWith$Input$CustomHTTP.stub(TRes res) =
      _CopyWithStubImpl$Input$CustomHTTP;

  TRes call({
    String? url,
    Enum$HTTPMethod? method,
    String? body,
    String? graphql,
    Enum$Mode? mode,
    List<String>? forwardHeaders,
    List<String>? secretHeaders,
    List<String>? introspectionHeaders,
    bool? skipIntrospection,
  });
}

class _CopyWithImpl$Input$CustomHTTP<TRes>
    implements CopyWith$Input$CustomHTTP<TRes> {
  _CopyWithImpl$Input$CustomHTTP(
    this._instance,
    this._then,
  );

  final Input$CustomHTTP _instance;

  final TRes Function(Input$CustomHTTP) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? method = _undefined,
    Object? body = _undefined,
    Object? graphql = _undefined,
    Object? mode = _undefined,
    Object? forwardHeaders = _undefined,
    Object? secretHeaders = _undefined,
    Object? introspectionHeaders = _undefined,
    Object? skipIntrospection = _undefined,
  }) =>
      _then(Input$CustomHTTP._({
        ..._instance._$data,
        if (url != _undefined && url != null) 'url': (url as String),
        if (method != _undefined && method != null)
          'method': (method as Enum$HTTPMethod),
        if (body != _undefined) 'body': (body as String?),
        if (graphql != _undefined) 'graphql': (graphql as String?),
        if (mode != _undefined) 'mode': (mode as Enum$Mode?),
        if (forwardHeaders != _undefined)
          'forwardHeaders': (forwardHeaders as List<String>?),
        if (secretHeaders != _undefined)
          'secretHeaders': (secretHeaders as List<String>?),
        if (introspectionHeaders != _undefined)
          'introspectionHeaders': (introspectionHeaders as List<String>?),
        if (skipIntrospection != _undefined)
          'skipIntrospection': (skipIntrospection as bool?),
      }));
}

class _CopyWithStubImpl$Input$CustomHTTP<TRes>
    implements CopyWith$Input$CustomHTTP<TRes> {
  _CopyWithStubImpl$Input$CustomHTTP(this._res);

  TRes _res;

  call({
    String? url,
    Enum$HTTPMethod? method,
    String? body,
    String? graphql,
    Enum$Mode? mode,
    List<String>? forwardHeaders,
    List<String>? secretHeaders,
    List<String>? introspectionHeaders,
    bool? skipIntrospection,
  }) =>
      _res;
}

class Input$DateTimeFilter {
  factory Input$DateTimeFilter({
    DateTime? eq,
    List<DateTime?>? $in,
    DateTime? le,
    DateTime? lt,
    DateTime? ge,
    DateTime? gt,
    Input$DateTimeRange? between,
  }) =>
      Input$DateTimeFilter._({
        if (eq != null) r'eq': eq,
        if ($in != null) r'in': $in,
        if (le != null) r'le': le,
        if (lt != null) r'lt': lt,
        if (ge != null) r'ge': ge,
        if (gt != null) r'gt': gt,
        if (between != null) r'between': between,
      });

  Input$DateTimeFilter._(this._$data);

  factory Input$DateTimeFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : DateTime.parse((l$eq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => e == null ? null : DateTime.parse((e as String)))
          .toList();
    }
    if (data.containsKey('le')) {
      final l$le = data['le'];
      result$data['le'] =
          l$le == null ? null : DateTime.parse((l$le as String));
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] =
          l$lt == null ? null : DateTime.parse((l$lt as String));
    }
    if (data.containsKey('ge')) {
      final l$ge = data['ge'];
      result$data['ge'] =
          l$ge == null ? null : DateTime.parse((l$ge as String));
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] =
          l$gt == null ? null : DateTime.parse((l$gt as String));
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = l$between == null
          ? null
          : Input$DateTimeRange.fromJson((l$between as Map<String, dynamic>));
    }
    return Input$DateTimeFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get eq => (_$data['eq'] as DateTime?);

  List<DateTime?>? get $in => (_$data['in'] as List<DateTime?>?);

  DateTime? get le => (_$data['le'] as DateTime?);

  DateTime? get lt => (_$data['lt'] as DateTime?);

  DateTime? get ge => (_$data['ge'] as DateTime?);

  DateTime? get gt => (_$data['gt'] as DateTime?);

  Input$DateTimeRange? get between =>
      (_$data['between'] as Input$DateTimeRange?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq?.toIso8601String();
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e?.toIso8601String()).toList();
    }
    if (_$data.containsKey('le')) {
      final l$le = le;
      result$data['le'] = l$le?.toIso8601String();
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt?.toIso8601String();
    }
    if (_$data.containsKey('ge')) {
      final l$ge = ge;
      result$data['ge'] = l$ge?.toIso8601String();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt?.toIso8601String();
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DateTimeFilter<Input$DateTimeFilter> get copyWith =>
      CopyWith$Input$DateTimeFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DateTimeFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$le = le;
    final lOther$le = other.le;
    if (_$data.containsKey('le') != other._$data.containsKey('le')) {
      return false;
    }
    if (l$le != lOther$le) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (_$data.containsKey('ge') != other._$data.containsKey('ge')) {
      return false;
    }
    if (l$ge != lOther$ge) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != lOther$between) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$$in = $in;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('le') ? l$le : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('ge') ? l$ge : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('between') ? l$between : const {},
    ]);
  }
}

abstract class CopyWith$Input$DateTimeFilter<TRes> {
  factory CopyWith$Input$DateTimeFilter(
    Input$DateTimeFilter instance,
    TRes Function(Input$DateTimeFilter) then,
  ) = _CopyWithImpl$Input$DateTimeFilter;

  factory CopyWith$Input$DateTimeFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$DateTimeFilter;

  TRes call({
    DateTime? eq,
    List<DateTime?>? $in,
    DateTime? le,
    DateTime? lt,
    DateTime? ge,
    DateTime? gt,
    Input$DateTimeRange? between,
  });
  CopyWith$Input$DateTimeRange<TRes> get between;
}

class _CopyWithImpl$Input$DateTimeFilter<TRes>
    implements CopyWith$Input$DateTimeFilter<TRes> {
  _CopyWithImpl$Input$DateTimeFilter(
    this._instance,
    this._then,
  );

  final Input$DateTimeFilter _instance;

  final TRes Function(Input$DateTimeFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? $in = _undefined,
    Object? le = _undefined,
    Object? lt = _undefined,
    Object? ge = _undefined,
    Object? gt = _undefined,
    Object? between = _undefined,
  }) =>
      _then(Input$DateTimeFilter._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as DateTime?),
        if ($in != _undefined) 'in': ($in as List<DateTime?>?),
        if (le != _undefined) 'le': (le as DateTime?),
        if (lt != _undefined) 'lt': (lt as DateTime?),
        if (ge != _undefined) 'ge': (ge as DateTime?),
        if (gt != _undefined) 'gt': (gt as DateTime?),
        if (between != _undefined) 'between': (between as Input$DateTimeRange?),
      }));

  CopyWith$Input$DateTimeRange<TRes> get between {
    final local$between = _instance.between;
    return local$between == null
        ? CopyWith$Input$DateTimeRange.stub(_then(_instance))
        : CopyWith$Input$DateTimeRange(local$between, (e) => call(between: e));
  }
}

class _CopyWithStubImpl$Input$DateTimeFilter<TRes>
    implements CopyWith$Input$DateTimeFilter<TRes> {
  _CopyWithStubImpl$Input$DateTimeFilter(this._res);

  TRes _res;

  call({
    DateTime? eq,
    List<DateTime?>? $in,
    DateTime? le,
    DateTime? lt,
    DateTime? ge,
    DateTime? gt,
    Input$DateTimeRange? between,
  }) =>
      _res;

  CopyWith$Input$DateTimeRange<TRes> get between =>
      CopyWith$Input$DateTimeRange.stub(_res);
}

class Input$DateTimeRange {
  factory Input$DateTimeRange({
    required DateTime min,
    required DateTime max,
  }) =>
      Input$DateTimeRange._({
        r'min': min,
        r'max': max,
      });

  Input$DateTimeRange._(this._$data);

  factory Input$DateTimeRange.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$min = data['min'];
    result$data['min'] = DateTime.parse((l$min as String));
    final l$max = data['max'];
    result$data['max'] = DateTime.parse((l$max as String));
    return Input$DateTimeRange._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get min => (_$data['min'] as DateTime);

  DateTime get max => (_$data['max'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$min = min;
    result$data['min'] = l$min.toIso8601String();
    final l$max = max;
    result$data['max'] = l$max.toIso8601String();
    return result$data;
  }

  CopyWith$Input$DateTimeRange<Input$DateTimeRange> get copyWith =>
      CopyWith$Input$DateTimeRange(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DateTimeRange) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$min = min;
    final l$max = max;
    return Object.hashAll([
      l$min,
      l$max,
    ]);
  }
}

abstract class CopyWith$Input$DateTimeRange<TRes> {
  factory CopyWith$Input$DateTimeRange(
    Input$DateTimeRange instance,
    TRes Function(Input$DateTimeRange) then,
  ) = _CopyWithImpl$Input$DateTimeRange;

  factory CopyWith$Input$DateTimeRange.stub(TRes res) =
      _CopyWithStubImpl$Input$DateTimeRange;

  TRes call({
    DateTime? min,
    DateTime? max,
  });
}

class _CopyWithImpl$Input$DateTimeRange<TRes>
    implements CopyWith$Input$DateTimeRange<TRes> {
  _CopyWithImpl$Input$DateTimeRange(
    this._instance,
    this._then,
  );

  final Input$DateTimeRange _instance;

  final TRes Function(Input$DateTimeRange) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? min = _undefined,
    Object? max = _undefined,
  }) =>
      _then(Input$DateTimeRange._({
        ..._instance._$data,
        if (min != _undefined && min != null) 'min': (min as DateTime),
        if (max != _undefined && max != null) 'max': (max as DateTime),
      }));
}

class _CopyWithStubImpl$Input$DateTimeRange<TRes>
    implements CopyWith$Input$DateTimeRange<TRes> {
  _CopyWithStubImpl$Input$DateTimeRange(this._res);

  TRes _res;

  call({
    DateTime? min,
    DateTime? max,
  }) =>
      _res;
}

class Input$FloatFilter {
  factory Input$FloatFilter({
    double? eq,
    List<double?>? $in,
    double? le,
    double? lt,
    double? ge,
    double? gt,
    Input$FloatRange? between,
  }) =>
      Input$FloatFilter._({
        if (eq != null) r'eq': eq,
        if ($in != null) r'in': $in,
        if (le != null) r'le': le,
        if (lt != null) r'lt': lt,
        if (ge != null) r'ge': ge,
        if (gt != null) r'gt': gt,
        if (between != null) r'between': between,
      });

  Input$FloatFilter._(this._$data);

  factory Input$FloatFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as num?)?.toDouble();
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('le')) {
      final l$le = data['le'];
      result$data['le'] = (l$le as num?)?.toDouble();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as num?)?.toDouble();
    }
    if (data.containsKey('ge')) {
      final l$ge = data['ge'];
      result$data['ge'] = (l$ge as num?)?.toDouble();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as num?)?.toDouble();
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = l$between == null
          ? null
          : Input$FloatRange.fromJson((l$between as Map<String, dynamic>));
    }
    return Input$FloatFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get eq => (_$data['eq'] as double?);

  List<double?>? get $in => (_$data['in'] as List<double?>?);

  double? get le => (_$data['le'] as double?);

  double? get lt => (_$data['lt'] as double?);

  double? get ge => (_$data['ge'] as double?);

  double? get gt => (_$data['gt'] as double?);

  Input$FloatRange? get between => (_$data['between'] as Input$FloatRange?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('le')) {
      final l$le = le;
      result$data['le'] = l$le;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('ge')) {
      final l$ge = ge;
      result$data['ge'] = l$ge;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$FloatFilter<Input$FloatFilter> get copyWith =>
      CopyWith$Input$FloatFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FloatFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$le = le;
    final lOther$le = other.le;
    if (_$data.containsKey('le') != other._$data.containsKey('le')) {
      return false;
    }
    if (l$le != lOther$le) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (_$data.containsKey('ge') != other._$data.containsKey('ge')) {
      return false;
    }
    if (l$ge != lOther$ge) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != lOther$between) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$$in = $in;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('le') ? l$le : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('ge') ? l$ge : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('between') ? l$between : const {},
    ]);
  }
}

abstract class CopyWith$Input$FloatFilter<TRes> {
  factory CopyWith$Input$FloatFilter(
    Input$FloatFilter instance,
    TRes Function(Input$FloatFilter) then,
  ) = _CopyWithImpl$Input$FloatFilter;

  factory CopyWith$Input$FloatFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$FloatFilter;

  TRes call({
    double? eq,
    List<double?>? $in,
    double? le,
    double? lt,
    double? ge,
    double? gt,
    Input$FloatRange? between,
  });
  CopyWith$Input$FloatRange<TRes> get between;
}

class _CopyWithImpl$Input$FloatFilter<TRes>
    implements CopyWith$Input$FloatFilter<TRes> {
  _CopyWithImpl$Input$FloatFilter(
    this._instance,
    this._then,
  );

  final Input$FloatFilter _instance;

  final TRes Function(Input$FloatFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? $in = _undefined,
    Object? le = _undefined,
    Object? lt = _undefined,
    Object? ge = _undefined,
    Object? gt = _undefined,
    Object? between = _undefined,
  }) =>
      _then(Input$FloatFilter._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as double?),
        if ($in != _undefined) 'in': ($in as List<double?>?),
        if (le != _undefined) 'le': (le as double?),
        if (lt != _undefined) 'lt': (lt as double?),
        if (ge != _undefined) 'ge': (ge as double?),
        if (gt != _undefined) 'gt': (gt as double?),
        if (between != _undefined) 'between': (between as Input$FloatRange?),
      }));

  CopyWith$Input$FloatRange<TRes> get between {
    final local$between = _instance.between;
    return local$between == null
        ? CopyWith$Input$FloatRange.stub(_then(_instance))
        : CopyWith$Input$FloatRange(local$between, (e) => call(between: e));
  }
}

class _CopyWithStubImpl$Input$FloatFilter<TRes>
    implements CopyWith$Input$FloatFilter<TRes> {
  _CopyWithStubImpl$Input$FloatFilter(this._res);

  TRes _res;

  call({
    double? eq,
    List<double?>? $in,
    double? le,
    double? lt,
    double? ge,
    double? gt,
    Input$FloatRange? between,
  }) =>
      _res;

  CopyWith$Input$FloatRange<TRes> get between =>
      CopyWith$Input$FloatRange.stub(_res);
}

class Input$FloatRange {
  factory Input$FloatRange({
    required double min,
    required double max,
  }) =>
      Input$FloatRange._({
        r'min': min,
        r'max': max,
      });

  Input$FloatRange._(this._$data);

  factory Input$FloatRange.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$min = data['min'];
    result$data['min'] = (l$min as num).toDouble();
    final l$max = data['max'];
    result$data['max'] = (l$max as num).toDouble();
    return Input$FloatRange._(result$data);
  }

  Map<String, dynamic> _$data;

  double get min => (_$data['min'] as double);

  double get max => (_$data['max'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$min = min;
    result$data['min'] = l$min;
    final l$max = max;
    result$data['max'] = l$max;
    return result$data;
  }

  CopyWith$Input$FloatRange<Input$FloatRange> get copyWith =>
      CopyWith$Input$FloatRange(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FloatRange) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$min = min;
    final l$max = max;
    return Object.hashAll([
      l$min,
      l$max,
    ]);
  }
}

abstract class CopyWith$Input$FloatRange<TRes> {
  factory CopyWith$Input$FloatRange(
    Input$FloatRange instance,
    TRes Function(Input$FloatRange) then,
  ) = _CopyWithImpl$Input$FloatRange;

  factory CopyWith$Input$FloatRange.stub(TRes res) =
      _CopyWithStubImpl$Input$FloatRange;

  TRes call({
    double? min,
    double? max,
  });
}

class _CopyWithImpl$Input$FloatRange<TRes>
    implements CopyWith$Input$FloatRange<TRes> {
  _CopyWithImpl$Input$FloatRange(
    this._instance,
    this._then,
  );

  final Input$FloatRange _instance;

  final TRes Function(Input$FloatRange) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? min = _undefined,
    Object? max = _undefined,
  }) =>
      _then(Input$FloatRange._({
        ..._instance._$data,
        if (min != _undefined && min != null) 'min': (min as double),
        if (max != _undefined && max != null) 'max': (max as double),
      }));
}

class _CopyWithStubImpl$Input$FloatRange<TRes>
    implements CopyWith$Input$FloatRange<TRes> {
  _CopyWithStubImpl$Input$FloatRange(this._res);

  TRes _res;

  call({
    double? min,
    double? max,
  }) =>
      _res;
}

class Input$GenerateMutationParams {
  factory Input$GenerateMutationParams({
    bool? add,
    bool? update,
    bool? delete,
  }) =>
      Input$GenerateMutationParams._({
        if (add != null) r'add': add,
        if (update != null) r'update': update,
        if (delete != null) r'delete': delete,
      });

  Input$GenerateMutationParams._(this._$data);

  factory Input$GenerateMutationParams.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('add')) {
      final l$add = data['add'];
      result$data['add'] = (l$add as bool?);
    }
    if (data.containsKey('update')) {
      final l$update = data['update'];
      result$data['update'] = (l$update as bool?);
    }
    if (data.containsKey('delete')) {
      final l$delete = data['delete'];
      result$data['delete'] = (l$delete as bool?);
    }
    return Input$GenerateMutationParams._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get add => (_$data['add'] as bool?);

  bool? get update => (_$data['update'] as bool?);

  bool? get delete => (_$data['delete'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('add')) {
      final l$add = add;
      result$data['add'] = l$add;
    }
    if (_$data.containsKey('update')) {
      final l$update = update;
      result$data['update'] = l$update;
    }
    if (_$data.containsKey('delete')) {
      final l$delete = delete;
      result$data['delete'] = l$delete;
    }
    return result$data;
  }

  CopyWith$Input$GenerateMutationParams<Input$GenerateMutationParams>
      get copyWith => CopyWith$Input$GenerateMutationParams(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GenerateMutationParams) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$add = add;
    final lOther$add = other.add;
    if (_$data.containsKey('add') != other._$data.containsKey('add')) {
      return false;
    }
    if (l$add != lOther$add) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (_$data.containsKey('update') != other._$data.containsKey('update')) {
      return false;
    }
    if (l$update != lOther$update) {
      return false;
    }
    final l$delete = delete;
    final lOther$delete = other.delete;
    if (_$data.containsKey('delete') != other._$data.containsKey('delete')) {
      return false;
    }
    if (l$delete != lOther$delete) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$add = add;
    final l$update = update;
    final l$delete = delete;
    return Object.hashAll([
      _$data.containsKey('add') ? l$add : const {},
      _$data.containsKey('update') ? l$update : const {},
      _$data.containsKey('delete') ? l$delete : const {},
    ]);
  }
}

abstract class CopyWith$Input$GenerateMutationParams<TRes> {
  factory CopyWith$Input$GenerateMutationParams(
    Input$GenerateMutationParams instance,
    TRes Function(Input$GenerateMutationParams) then,
  ) = _CopyWithImpl$Input$GenerateMutationParams;

  factory CopyWith$Input$GenerateMutationParams.stub(TRes res) =
      _CopyWithStubImpl$Input$GenerateMutationParams;

  TRes call({
    bool? add,
    bool? update,
    bool? delete,
  });
}

class _CopyWithImpl$Input$GenerateMutationParams<TRes>
    implements CopyWith$Input$GenerateMutationParams<TRes> {
  _CopyWithImpl$Input$GenerateMutationParams(
    this._instance,
    this._then,
  );

  final Input$GenerateMutationParams _instance;

  final TRes Function(Input$GenerateMutationParams) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? add = _undefined,
    Object? update = _undefined,
    Object? delete = _undefined,
  }) =>
      _then(Input$GenerateMutationParams._({
        ..._instance._$data,
        if (add != _undefined) 'add': (add as bool?),
        if (update != _undefined) 'update': (update as bool?),
        if (delete != _undefined) 'delete': (delete as bool?),
      }));
}

class _CopyWithStubImpl$Input$GenerateMutationParams<TRes>
    implements CopyWith$Input$GenerateMutationParams<TRes> {
  _CopyWithStubImpl$Input$GenerateMutationParams(this._res);

  TRes _res;

  call({
    bool? add,
    bool? update,
    bool? delete,
  }) =>
      _res;
}

class Input$GenerateQueryParams {
  factory Input$GenerateQueryParams({
    bool? $get,
    bool? query,
    bool? password,
    bool? aggregate,
  }) =>
      Input$GenerateQueryParams._({
        if ($get != null) r'get': $get,
        if (query != null) r'query': query,
        if (password != null) r'password': password,
        if (aggregate != null) r'aggregate': aggregate,
      });

  Input$GenerateQueryParams._(this._$data);

  factory Input$GenerateQueryParams.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('get')) {
      final l$$get = data['get'];
      result$data['get'] = (l$$get as bool?);
    }
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as bool?);
    }
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = (l$password as bool?);
    }
    if (data.containsKey('aggregate')) {
      final l$aggregate = data['aggregate'];
      result$data['aggregate'] = (l$aggregate as bool?);
    }
    return Input$GenerateQueryParams._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $get => (_$data['get'] as bool?);

  bool? get query => (_$data['query'] as bool?);

  bool? get password => (_$data['password'] as bool?);

  bool? get aggregate => (_$data['aggregate'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('get')) {
      final l$$get = $get;
      result$data['get'] = l$$get;
    }
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password;
    }
    if (_$data.containsKey('aggregate')) {
      final l$aggregate = aggregate;
      result$data['aggregate'] = l$aggregate;
    }
    return result$data;
  }

  CopyWith$Input$GenerateQueryParams<Input$GenerateQueryParams> get copyWith =>
      CopyWith$Input$GenerateQueryParams(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GenerateQueryParams) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$get = $get;
    final lOther$$get = other.$get;
    if (_$data.containsKey('get') != other._$data.containsKey('get')) {
      return false;
    }
    if (l$$get != lOther$$get) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (_$data.containsKey('aggregate') !=
        other._$data.containsKey('aggregate')) {
      return false;
    }
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$get = $get;
    final l$query = query;
    final l$password = password;
    final l$aggregate = aggregate;
    return Object.hashAll([
      _$data.containsKey('get') ? l$$get : const {},
      _$data.containsKey('query') ? l$query : const {},
      _$data.containsKey('password') ? l$password : const {},
      _$data.containsKey('aggregate') ? l$aggregate : const {},
    ]);
  }
}

abstract class CopyWith$Input$GenerateQueryParams<TRes> {
  factory CopyWith$Input$GenerateQueryParams(
    Input$GenerateQueryParams instance,
    TRes Function(Input$GenerateQueryParams) then,
  ) = _CopyWithImpl$Input$GenerateQueryParams;

  factory CopyWith$Input$GenerateQueryParams.stub(TRes res) =
      _CopyWithStubImpl$Input$GenerateQueryParams;

  TRes call({
    bool? $get,
    bool? query,
    bool? password,
    bool? aggregate,
  });
}

class _CopyWithImpl$Input$GenerateQueryParams<TRes>
    implements CopyWith$Input$GenerateQueryParams<TRes> {
  _CopyWithImpl$Input$GenerateQueryParams(
    this._instance,
    this._then,
  );

  final Input$GenerateQueryParams _instance;

  final TRes Function(Input$GenerateQueryParams) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $get = _undefined,
    Object? query = _undefined,
    Object? password = _undefined,
    Object? aggregate = _undefined,
  }) =>
      _then(Input$GenerateQueryParams._({
        ..._instance._$data,
        if ($get != _undefined) 'get': ($get as bool?),
        if (query != _undefined) 'query': (query as bool?),
        if (password != _undefined) 'password': (password as bool?),
        if (aggregate != _undefined) 'aggregate': (aggregate as bool?),
      }));
}

class _CopyWithStubImpl$Input$GenerateQueryParams<TRes>
    implements CopyWith$Input$GenerateQueryParams<TRes> {
  _CopyWithStubImpl$Input$GenerateQueryParams(this._res);

  TRes _res;

  call({
    bool? $get,
    bool? query,
    bool? password,
    bool? aggregate,
  }) =>
      _res;
}

class Input$Int64Filter {
  factory Input$Int64Filter({
    int? eq,
    List<int?>? $in,
    int? le,
    int? lt,
    int? ge,
    int? gt,
    Input$Int64Range? between,
  }) =>
      Input$Int64Filter._({
        if (eq != null) r'eq': eq,
        if ($in != null) r'in': $in,
        if (le != null) r'le': le,
        if (lt != null) r'lt': lt,
        if (ge != null) r'ge': ge,
        if (gt != null) r'gt': gt,
        if (between != null) r'between': between,
      });

  Input$Int64Filter._(this._$data);

  factory Input$Int64Filter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as int?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('le')) {
      final l$le = data['le'];
      result$data['le'] = (l$le as int?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as int?);
    }
    if (data.containsKey('ge')) {
      final l$ge = data['ge'];
      result$data['ge'] = (l$ge as int?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as int?);
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = l$between == null
          ? null
          : Input$Int64Range.fromJson((l$between as Map<String, dynamic>));
    }
    return Input$Int64Filter._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get eq => (_$data['eq'] as int?);

  List<int?>? get $in => (_$data['in'] as List<int?>?);

  int? get le => (_$data['le'] as int?);

  int? get lt => (_$data['lt'] as int?);

  int? get ge => (_$data['ge'] as int?);

  int? get gt => (_$data['gt'] as int?);

  Input$Int64Range? get between => (_$data['between'] as Input$Int64Range?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('le')) {
      final l$le = le;
      result$data['le'] = l$le;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('ge')) {
      final l$ge = ge;
      result$data['ge'] = l$ge;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$Int64Filter<Input$Int64Filter> get copyWith =>
      CopyWith$Input$Int64Filter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Int64Filter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$le = le;
    final lOther$le = other.le;
    if (_$data.containsKey('le') != other._$data.containsKey('le')) {
      return false;
    }
    if (l$le != lOther$le) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (_$data.containsKey('ge') != other._$data.containsKey('ge')) {
      return false;
    }
    if (l$ge != lOther$ge) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != lOther$between) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$$in = $in;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('le') ? l$le : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('ge') ? l$ge : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('between') ? l$between : const {},
    ]);
  }
}

abstract class CopyWith$Input$Int64Filter<TRes> {
  factory CopyWith$Input$Int64Filter(
    Input$Int64Filter instance,
    TRes Function(Input$Int64Filter) then,
  ) = _CopyWithImpl$Input$Int64Filter;

  factory CopyWith$Input$Int64Filter.stub(TRes res) =
      _CopyWithStubImpl$Input$Int64Filter;

  TRes call({
    int? eq,
    List<int?>? $in,
    int? le,
    int? lt,
    int? ge,
    int? gt,
    Input$Int64Range? between,
  });
  CopyWith$Input$Int64Range<TRes> get between;
}

class _CopyWithImpl$Input$Int64Filter<TRes>
    implements CopyWith$Input$Int64Filter<TRes> {
  _CopyWithImpl$Input$Int64Filter(
    this._instance,
    this._then,
  );

  final Input$Int64Filter _instance;

  final TRes Function(Input$Int64Filter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? $in = _undefined,
    Object? le = _undefined,
    Object? lt = _undefined,
    Object? ge = _undefined,
    Object? gt = _undefined,
    Object? between = _undefined,
  }) =>
      _then(Input$Int64Filter._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as int?),
        if ($in != _undefined) 'in': ($in as List<int?>?),
        if (le != _undefined) 'le': (le as int?),
        if (lt != _undefined) 'lt': (lt as int?),
        if (ge != _undefined) 'ge': (ge as int?),
        if (gt != _undefined) 'gt': (gt as int?),
        if (between != _undefined) 'between': (between as Input$Int64Range?),
      }));

  CopyWith$Input$Int64Range<TRes> get between {
    final local$between = _instance.between;
    return local$between == null
        ? CopyWith$Input$Int64Range.stub(_then(_instance))
        : CopyWith$Input$Int64Range(local$between, (e) => call(between: e));
  }
}

class _CopyWithStubImpl$Input$Int64Filter<TRes>
    implements CopyWith$Input$Int64Filter<TRes> {
  _CopyWithStubImpl$Input$Int64Filter(this._res);

  TRes _res;

  call({
    int? eq,
    List<int?>? $in,
    int? le,
    int? lt,
    int? ge,
    int? gt,
    Input$Int64Range? between,
  }) =>
      _res;

  CopyWith$Input$Int64Range<TRes> get between =>
      CopyWith$Input$Int64Range.stub(_res);
}

class Input$Int64Range {
  factory Input$Int64Range({
    required int min,
    required int max,
  }) =>
      Input$Int64Range._({
        r'min': min,
        r'max': max,
      });

  Input$Int64Range._(this._$data);

  factory Input$Int64Range.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$min = data['min'];
    result$data['min'] = (l$min as int);
    final l$max = data['max'];
    result$data['max'] = (l$max as int);
    return Input$Int64Range._(result$data);
  }

  Map<String, dynamic> _$data;

  int get min => (_$data['min'] as int);

  int get max => (_$data['max'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$min = min;
    result$data['min'] = l$min;
    final l$max = max;
    result$data['max'] = l$max;
    return result$data;
  }

  CopyWith$Input$Int64Range<Input$Int64Range> get copyWith =>
      CopyWith$Input$Int64Range(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Int64Range) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$min = min;
    final l$max = max;
    return Object.hashAll([
      l$min,
      l$max,
    ]);
  }
}

abstract class CopyWith$Input$Int64Range<TRes> {
  factory CopyWith$Input$Int64Range(
    Input$Int64Range instance,
    TRes Function(Input$Int64Range) then,
  ) = _CopyWithImpl$Input$Int64Range;

  factory CopyWith$Input$Int64Range.stub(TRes res) =
      _CopyWithStubImpl$Input$Int64Range;

  TRes call({
    int? min,
    int? max,
  });
}

class _CopyWithImpl$Input$Int64Range<TRes>
    implements CopyWith$Input$Int64Range<TRes> {
  _CopyWithImpl$Input$Int64Range(
    this._instance,
    this._then,
  );

  final Input$Int64Range _instance;

  final TRes Function(Input$Int64Range) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? min = _undefined,
    Object? max = _undefined,
  }) =>
      _then(Input$Int64Range._({
        ..._instance._$data,
        if (min != _undefined && min != null) 'min': (min as int),
        if (max != _undefined && max != null) 'max': (max as int),
      }));
}

class _CopyWithStubImpl$Input$Int64Range<TRes>
    implements CopyWith$Input$Int64Range<TRes> {
  _CopyWithStubImpl$Input$Int64Range(this._res);

  TRes _res;

  call({
    int? min,
    int? max,
  }) =>
      _res;
}

class Input$IntersectsFilter {
  factory Input$IntersectsFilter({
    Input$PolygonRef? polygon,
    Input$MultiPolygonRef? multiPolygon,
  }) =>
      Input$IntersectsFilter._({
        if (polygon != null) r'polygon': polygon,
        if (multiPolygon != null) r'multiPolygon': multiPolygon,
      });

  Input$IntersectsFilter._(this._$data);

  factory Input$IntersectsFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('polygon')) {
      final l$polygon = data['polygon'];
      result$data['polygon'] = l$polygon == null
          ? null
          : Input$PolygonRef.fromJson((l$polygon as Map<String, dynamic>));
    }
    if (data.containsKey('multiPolygon')) {
      final l$multiPolygon = data['multiPolygon'];
      result$data['multiPolygon'] = l$multiPolygon == null
          ? null
          : Input$MultiPolygonRef.fromJson(
              (l$multiPolygon as Map<String, dynamic>));
    }
    return Input$IntersectsFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PolygonRef? get polygon => (_$data['polygon'] as Input$PolygonRef?);

  Input$MultiPolygonRef? get multiPolygon =>
      (_$data['multiPolygon'] as Input$MultiPolygonRef?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('polygon')) {
      final l$polygon = polygon;
      result$data['polygon'] = l$polygon?.toJson();
    }
    if (_$data.containsKey('multiPolygon')) {
      final l$multiPolygon = multiPolygon;
      result$data['multiPolygon'] = l$multiPolygon?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$IntersectsFilter<Input$IntersectsFilter> get copyWith =>
      CopyWith$Input$IntersectsFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$IntersectsFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$polygon = polygon;
    final lOther$polygon = other.polygon;
    if (_$data.containsKey('polygon') != other._$data.containsKey('polygon')) {
      return false;
    }
    if (l$polygon != lOther$polygon) {
      return false;
    }
    final l$multiPolygon = multiPolygon;
    final lOther$multiPolygon = other.multiPolygon;
    if (_$data.containsKey('multiPolygon') !=
        other._$data.containsKey('multiPolygon')) {
      return false;
    }
    if (l$multiPolygon != lOther$multiPolygon) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$polygon = polygon;
    final l$multiPolygon = multiPolygon;
    return Object.hashAll([
      _$data.containsKey('polygon') ? l$polygon : const {},
      _$data.containsKey('multiPolygon') ? l$multiPolygon : const {},
    ]);
  }
}

abstract class CopyWith$Input$IntersectsFilter<TRes> {
  factory CopyWith$Input$IntersectsFilter(
    Input$IntersectsFilter instance,
    TRes Function(Input$IntersectsFilter) then,
  ) = _CopyWithImpl$Input$IntersectsFilter;

  factory CopyWith$Input$IntersectsFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$IntersectsFilter;

  TRes call({
    Input$PolygonRef? polygon,
    Input$MultiPolygonRef? multiPolygon,
  });
  CopyWith$Input$PolygonRef<TRes> get polygon;
  CopyWith$Input$MultiPolygonRef<TRes> get multiPolygon;
}

class _CopyWithImpl$Input$IntersectsFilter<TRes>
    implements CopyWith$Input$IntersectsFilter<TRes> {
  _CopyWithImpl$Input$IntersectsFilter(
    this._instance,
    this._then,
  );

  final Input$IntersectsFilter _instance;

  final TRes Function(Input$IntersectsFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? polygon = _undefined,
    Object? multiPolygon = _undefined,
  }) =>
      _then(Input$IntersectsFilter._({
        ..._instance._$data,
        if (polygon != _undefined) 'polygon': (polygon as Input$PolygonRef?),
        if (multiPolygon != _undefined)
          'multiPolygon': (multiPolygon as Input$MultiPolygonRef?),
      }));

  CopyWith$Input$PolygonRef<TRes> get polygon {
    final local$polygon = _instance.polygon;
    return local$polygon == null
        ? CopyWith$Input$PolygonRef.stub(_then(_instance))
        : CopyWith$Input$PolygonRef(local$polygon, (e) => call(polygon: e));
  }

  CopyWith$Input$MultiPolygonRef<TRes> get multiPolygon {
    final local$multiPolygon = _instance.multiPolygon;
    return local$multiPolygon == null
        ? CopyWith$Input$MultiPolygonRef.stub(_then(_instance))
        : CopyWith$Input$MultiPolygonRef(
            local$multiPolygon, (e) => call(multiPolygon: e));
  }
}

class _CopyWithStubImpl$Input$IntersectsFilter<TRes>
    implements CopyWith$Input$IntersectsFilter<TRes> {
  _CopyWithStubImpl$Input$IntersectsFilter(this._res);

  TRes _res;

  call({
    Input$PolygonRef? polygon,
    Input$MultiPolygonRef? multiPolygon,
  }) =>
      _res;

  CopyWith$Input$PolygonRef<TRes> get polygon =>
      CopyWith$Input$PolygonRef.stub(_res);

  CopyWith$Input$MultiPolygonRef<TRes> get multiPolygon =>
      CopyWith$Input$MultiPolygonRef.stub(_res);
}

class Input$IntFilter {
  factory Input$IntFilter({
    int? eq,
    List<int?>? $in,
    int? le,
    int? lt,
    int? ge,
    int? gt,
    Input$IntRange? between,
  }) =>
      Input$IntFilter._({
        if (eq != null) r'eq': eq,
        if ($in != null) r'in': $in,
        if (le != null) r'le': le,
        if (lt != null) r'lt': lt,
        if (ge != null) r'ge': ge,
        if (gt != null) r'gt': gt,
        if (between != null) r'between': between,
      });

  Input$IntFilter._(this._$data);

  factory Input$IntFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as int?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('le')) {
      final l$le = data['le'];
      result$data['le'] = (l$le as int?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as int?);
    }
    if (data.containsKey('ge')) {
      final l$ge = data['ge'];
      result$data['ge'] = (l$ge as int?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as int?);
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = l$between == null
          ? null
          : Input$IntRange.fromJson((l$between as Map<String, dynamic>));
    }
    return Input$IntFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get eq => (_$data['eq'] as int?);

  List<int?>? get $in => (_$data['in'] as List<int?>?);

  int? get le => (_$data['le'] as int?);

  int? get lt => (_$data['lt'] as int?);

  int? get ge => (_$data['ge'] as int?);

  int? get gt => (_$data['gt'] as int?);

  Input$IntRange? get between => (_$data['between'] as Input$IntRange?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('le')) {
      final l$le = le;
      result$data['le'] = l$le;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('ge')) {
      final l$ge = ge;
      result$data['ge'] = l$ge;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$IntFilter<Input$IntFilter> get copyWith =>
      CopyWith$Input$IntFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$IntFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$le = le;
    final lOther$le = other.le;
    if (_$data.containsKey('le') != other._$data.containsKey('le')) {
      return false;
    }
    if (l$le != lOther$le) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (_$data.containsKey('ge') != other._$data.containsKey('ge')) {
      return false;
    }
    if (l$ge != lOther$ge) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != lOther$between) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$$in = $in;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('le') ? l$le : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('ge') ? l$ge : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('between') ? l$between : const {},
    ]);
  }
}

abstract class CopyWith$Input$IntFilter<TRes> {
  factory CopyWith$Input$IntFilter(
    Input$IntFilter instance,
    TRes Function(Input$IntFilter) then,
  ) = _CopyWithImpl$Input$IntFilter;

  factory CopyWith$Input$IntFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$IntFilter;

  TRes call({
    int? eq,
    List<int?>? $in,
    int? le,
    int? lt,
    int? ge,
    int? gt,
    Input$IntRange? between,
  });
  CopyWith$Input$IntRange<TRes> get between;
}

class _CopyWithImpl$Input$IntFilter<TRes>
    implements CopyWith$Input$IntFilter<TRes> {
  _CopyWithImpl$Input$IntFilter(
    this._instance,
    this._then,
  );

  final Input$IntFilter _instance;

  final TRes Function(Input$IntFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? $in = _undefined,
    Object? le = _undefined,
    Object? lt = _undefined,
    Object? ge = _undefined,
    Object? gt = _undefined,
    Object? between = _undefined,
  }) =>
      _then(Input$IntFilter._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as int?),
        if ($in != _undefined) 'in': ($in as List<int?>?),
        if (le != _undefined) 'le': (le as int?),
        if (lt != _undefined) 'lt': (lt as int?),
        if (ge != _undefined) 'ge': (ge as int?),
        if (gt != _undefined) 'gt': (gt as int?),
        if (between != _undefined) 'between': (between as Input$IntRange?),
      }));

  CopyWith$Input$IntRange<TRes> get between {
    final local$between = _instance.between;
    return local$between == null
        ? CopyWith$Input$IntRange.stub(_then(_instance))
        : CopyWith$Input$IntRange(local$between, (e) => call(between: e));
  }
}

class _CopyWithStubImpl$Input$IntFilter<TRes>
    implements CopyWith$Input$IntFilter<TRes> {
  _CopyWithStubImpl$Input$IntFilter(this._res);

  TRes _res;

  call({
    int? eq,
    List<int?>? $in,
    int? le,
    int? lt,
    int? ge,
    int? gt,
    Input$IntRange? between,
  }) =>
      _res;

  CopyWith$Input$IntRange<TRes> get between =>
      CopyWith$Input$IntRange.stub(_res);
}

class Input$IntRange {
  factory Input$IntRange({
    required int min,
    required int max,
  }) =>
      Input$IntRange._({
        r'min': min,
        r'max': max,
      });

  Input$IntRange._(this._$data);

  factory Input$IntRange.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$min = data['min'];
    result$data['min'] = (l$min as int);
    final l$max = data['max'];
    result$data['max'] = (l$max as int);
    return Input$IntRange._(result$data);
  }

  Map<String, dynamic> _$data;

  int get min => (_$data['min'] as int);

  int get max => (_$data['max'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$min = min;
    result$data['min'] = l$min;
    final l$max = max;
    result$data['max'] = l$max;
    return result$data;
  }

  CopyWith$Input$IntRange<Input$IntRange> get copyWith =>
      CopyWith$Input$IntRange(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$IntRange) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$min = min;
    final l$max = max;
    return Object.hashAll([
      l$min,
      l$max,
    ]);
  }
}

abstract class CopyWith$Input$IntRange<TRes> {
  factory CopyWith$Input$IntRange(
    Input$IntRange instance,
    TRes Function(Input$IntRange) then,
  ) = _CopyWithImpl$Input$IntRange;

  factory CopyWith$Input$IntRange.stub(TRes res) =
      _CopyWithStubImpl$Input$IntRange;

  TRes call({
    int? min,
    int? max,
  });
}

class _CopyWithImpl$Input$IntRange<TRes>
    implements CopyWith$Input$IntRange<TRes> {
  _CopyWithImpl$Input$IntRange(
    this._instance,
    this._then,
  );

  final Input$IntRange _instance;

  final TRes Function(Input$IntRange) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? min = _undefined,
    Object? max = _undefined,
  }) =>
      _then(Input$IntRange._({
        ..._instance._$data,
        if (min != _undefined && min != null) 'min': (min as int),
        if (max != _undefined && max != null) 'max': (max as int),
      }));
}

class _CopyWithStubImpl$Input$IntRange<TRes>
    implements CopyWith$Input$IntRange<TRes> {
  _CopyWithStubImpl$Input$IntRange(this._res);

  TRes _res;

  call({
    int? min,
    int? max,
  }) =>
      _res;
}

class Input$MultiPolygonRef {
  factory Input$MultiPolygonRef({required List<Input$PolygonRef> polygons}) =>
      Input$MultiPolygonRef._({
        r'polygons': polygons,
      });

  Input$MultiPolygonRef._(this._$data);

  factory Input$MultiPolygonRef.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$polygons = data['polygons'];
    result$data['polygons'] = (l$polygons as List<dynamic>)
        .map((e) => Input$PolygonRef.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Input$MultiPolygonRef._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PolygonRef> get polygons =>
      (_$data['polygons'] as List<Input$PolygonRef>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$polygons = polygons;
    result$data['polygons'] = l$polygons.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$MultiPolygonRef<Input$MultiPolygonRef> get copyWith =>
      CopyWith$Input$MultiPolygonRef(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$MultiPolygonRef) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$polygons = polygons;
    final lOther$polygons = other.polygons;
    if (l$polygons.length != lOther$polygons.length) {
      return false;
    }
    for (int i = 0; i < l$polygons.length; i++) {
      final l$polygons$entry = l$polygons[i];
      final lOther$polygons$entry = lOther$polygons[i];
      if (l$polygons$entry != lOther$polygons$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$polygons = polygons;
    return Object.hashAll([Object.hashAll(l$polygons.map((v) => v))]);
  }
}

abstract class CopyWith$Input$MultiPolygonRef<TRes> {
  factory CopyWith$Input$MultiPolygonRef(
    Input$MultiPolygonRef instance,
    TRes Function(Input$MultiPolygonRef) then,
  ) = _CopyWithImpl$Input$MultiPolygonRef;

  factory CopyWith$Input$MultiPolygonRef.stub(TRes res) =
      _CopyWithStubImpl$Input$MultiPolygonRef;

  TRes call({List<Input$PolygonRef>? polygons});
  TRes polygons(
      Iterable<Input$PolygonRef> Function(
              Iterable<CopyWith$Input$PolygonRef<Input$PolygonRef>>)
          _fn);
}

class _CopyWithImpl$Input$MultiPolygonRef<TRes>
    implements CopyWith$Input$MultiPolygonRef<TRes> {
  _CopyWithImpl$Input$MultiPolygonRef(
    this._instance,
    this._then,
  );

  final Input$MultiPolygonRef _instance;

  final TRes Function(Input$MultiPolygonRef) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? polygons = _undefined}) => _then(Input$MultiPolygonRef._({
        ..._instance._$data,
        if (polygons != _undefined && polygons != null)
          'polygons': (polygons as List<Input$PolygonRef>),
      }));

  TRes polygons(
          Iterable<Input$PolygonRef> Function(
                  Iterable<CopyWith$Input$PolygonRef<Input$PolygonRef>>)
              _fn) =>
      call(
          polygons: _fn(_instance.polygons.map((e) => CopyWith$Input$PolygonRef(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Input$MultiPolygonRef<TRes>
    implements CopyWith$Input$MultiPolygonRef<TRes> {
  _CopyWithStubImpl$Input$MultiPolygonRef(this._res);

  TRes _res;

  call({List<Input$PolygonRef>? polygons}) => _res;

  polygons(_fn) => _res;
}

class Input$MyBookFilter {
  factory Input$MyBookFilter({
    List<String>? id,
    List<Enum$MyBookHasFilter?>? has,
    List<Input$MyBookFilter?>? and,
    List<Input$MyBookFilter?>? or,
    Input$MyBookFilter? not,
  }) =>
      Input$MyBookFilter._({
        if (id != null) r'id': id,
        if (has != null) r'has': has,
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (not != null) r'not': not,
      });

  Input$MyBookFilter._(this._$data);

  factory Input$MyBookFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          (l$id as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('has')) {
      final l$has = data['has'];
      result$data['has'] = (l$has as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$MyBookHasFilter((e as String)))
          .toList();
    }
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$MyBookFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$MyBookFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = l$not == null
          ? null
          : Input$MyBookFilter.fromJson((l$not as Map<String, dynamic>));
    }
    return Input$MyBookFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get id => (_$data['id'] as List<String>?);

  List<Enum$MyBookHasFilter?>? get has =>
      (_$data['has'] as List<Enum$MyBookHasFilter?>?);

  List<Input$MyBookFilter?>? get and =>
      (_$data['and'] as List<Input$MyBookFilter?>?);

  List<Input$MyBookFilter?>? get or =>
      (_$data['or'] as List<Input$MyBookFilter?>?);

  Input$MyBookFilter? get not => (_$data['not'] as Input$MyBookFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.map((e) => e).toList();
    }
    if (_$data.containsKey('has')) {
      final l$has = has;
      result$data['has'] = l$has
          ?.map((e) => e == null ? null : toJson$Enum$MyBookHasFilter(e))
          .toList();
    }
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$MyBookFilter<Input$MyBookFilter> get copyWith =>
      CopyWith$Input$MyBookFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$MyBookFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != null && lOther$id != null) {
      if (l$id.length != lOther$id.length) {
        return false;
      }
      for (int i = 0; i < l$id.length; i++) {
        final l$id$entry = l$id[i];
        final lOther$id$entry = lOther$id[i];
        if (l$id$entry != lOther$id$entry) {
          return false;
        }
      }
    } else if (l$id != lOther$id) {
      return false;
    }
    final l$has = has;
    final lOther$has = other.has;
    if (_$data.containsKey('has') != other._$data.containsKey('has')) {
      return false;
    }
    if (l$has != null && lOther$has != null) {
      if (l$has.length != lOther$has.length) {
        return false;
      }
      for (int i = 0; i < l$has.length; i++) {
        final l$has$entry = l$has[i];
        final lOther$has$entry = lOther$has[i];
        if (l$has$entry != lOther$has$entry) {
          return false;
        }
      }
    } else if (l$has != lOther$has) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$has = has;
    final l$and = and;
    final l$or = or;
    final l$not = not;
    return Object.hashAll([
      _$data.containsKey('id')
          ? l$id == null
              ? null
              : Object.hashAll(l$id.map((v) => v))
          : const {},
      _$data.containsKey('has')
          ? l$has == null
              ? null
              : Object.hashAll(l$has.map((v) => v))
          : const {},
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('not') ? l$not : const {},
    ]);
  }
}

abstract class CopyWith$Input$MyBookFilter<TRes> {
  factory CopyWith$Input$MyBookFilter(
    Input$MyBookFilter instance,
    TRes Function(Input$MyBookFilter) then,
  ) = _CopyWithImpl$Input$MyBookFilter;

  factory CopyWith$Input$MyBookFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$MyBookFilter;

  TRes call({
    List<String>? id,
    List<Enum$MyBookHasFilter?>? has,
    List<Input$MyBookFilter?>? and,
    List<Input$MyBookFilter?>? or,
    Input$MyBookFilter? not,
  });
  TRes and(
      Iterable<Input$MyBookFilter?>? Function(
              Iterable<CopyWith$Input$MyBookFilter<Input$MyBookFilter>?>?)
          _fn);
  TRes or(
      Iterable<Input$MyBookFilter?>? Function(
              Iterable<CopyWith$Input$MyBookFilter<Input$MyBookFilter>?>?)
          _fn);
  CopyWith$Input$MyBookFilter<TRes> get not;
}

class _CopyWithImpl$Input$MyBookFilter<TRes>
    implements CopyWith$Input$MyBookFilter<TRes> {
  _CopyWithImpl$Input$MyBookFilter(
    this._instance,
    this._then,
  );

  final Input$MyBookFilter _instance;

  final TRes Function(Input$MyBookFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? has = _undefined,
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
  }) =>
      _then(Input$MyBookFilter._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as List<String>?),
        if (has != _undefined) 'has': (has as List<Enum$MyBookHasFilter?>?),
        if (and != _undefined) 'and': (and as List<Input$MyBookFilter?>?),
        if (or != _undefined) 'or': (or as List<Input$MyBookFilter?>?),
        if (not != _undefined) 'not': (not as Input$MyBookFilter?),
      }));

  TRes and(
          Iterable<Input$MyBookFilter?>? Function(
                  Iterable<CopyWith$Input$MyBookFilter<Input$MyBookFilter>?>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => e == null
              ? null
              : CopyWith$Input$MyBookFilter(
                  e,
                  (i) => i,
                )))?.toList());

  TRes or(
          Iterable<Input$MyBookFilter?>? Function(
                  Iterable<CopyWith$Input$MyBookFilter<Input$MyBookFilter>?>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => e == null
              ? null
              : CopyWith$Input$MyBookFilter(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Input$MyBookFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$MyBookFilter.stub(_then(_instance))
        : CopyWith$Input$MyBookFilter(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$MyBookFilter<TRes>
    implements CopyWith$Input$MyBookFilter<TRes> {
  _CopyWithStubImpl$Input$MyBookFilter(this._res);

  TRes _res;

  call({
    List<String>? id,
    List<Enum$MyBookHasFilter?>? has,
    List<Input$MyBookFilter?>? and,
    List<Input$MyBookFilter?>? or,
    Input$MyBookFilter? not,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$MyBookFilter<TRes> get not =>
      CopyWith$Input$MyBookFilter.stub(_res);
}

class Input$MyBookOrder {
  factory Input$MyBookOrder({
    Enum$MyBookOrderable? asc,
    Enum$MyBookOrderable? desc,
    Input$MyBookOrder? then,
  }) =>
      Input$MyBookOrder._({
        if (asc != null) r'asc': asc,
        if (desc != null) r'desc': desc,
        if (then != null) r'then': then,
      });

  Input$MyBookOrder._(this._$data);

  factory Input$MyBookOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('asc')) {
      final l$asc = data['asc'];
      result$data['asc'] = l$asc == null
          ? null
          : fromJson$Enum$MyBookOrderable((l$asc as String));
    }
    if (data.containsKey('desc')) {
      final l$desc = data['desc'];
      result$data['desc'] = l$desc == null
          ? null
          : fromJson$Enum$MyBookOrderable((l$desc as String));
    }
    if (data.containsKey('then')) {
      final l$then = data['then'];
      result$data['then'] = l$then == null
          ? null
          : Input$MyBookOrder.fromJson((l$then as Map<String, dynamic>));
    }
    return Input$MyBookOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$MyBookOrderable? get asc => (_$data['asc'] as Enum$MyBookOrderable?);

  Enum$MyBookOrderable? get desc => (_$data['desc'] as Enum$MyBookOrderable?);

  Input$MyBookOrder? get then => (_$data['then'] as Input$MyBookOrder?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('asc')) {
      final l$asc = asc;
      result$data['asc'] =
          l$asc == null ? null : toJson$Enum$MyBookOrderable(l$asc);
    }
    if (_$data.containsKey('desc')) {
      final l$desc = desc;
      result$data['desc'] =
          l$desc == null ? null : toJson$Enum$MyBookOrderable(l$desc);
    }
    if (_$data.containsKey('then')) {
      final l$then = then;
      result$data['then'] = l$then?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$MyBookOrder<Input$MyBookOrder> get copyWith =>
      CopyWith$Input$MyBookOrder(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$MyBookOrder) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$asc = asc;
    final lOther$asc = other.asc;
    if (_$data.containsKey('asc') != other._$data.containsKey('asc')) {
      return false;
    }
    if (l$asc != lOther$asc) {
      return false;
    }
    final l$desc = desc;
    final lOther$desc = other.desc;
    if (_$data.containsKey('desc') != other._$data.containsKey('desc')) {
      return false;
    }
    if (l$desc != lOther$desc) {
      return false;
    }
    final l$then = then;
    final lOther$then = other.then;
    if (_$data.containsKey('then') != other._$data.containsKey('then')) {
      return false;
    }
    if (l$then != lOther$then) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$asc = asc;
    final l$desc = desc;
    final l$then = then;
    return Object.hashAll([
      _$data.containsKey('asc') ? l$asc : const {},
      _$data.containsKey('desc') ? l$desc : const {},
      _$data.containsKey('then') ? l$then : const {},
    ]);
  }
}

abstract class CopyWith$Input$MyBookOrder<TRes> {
  factory CopyWith$Input$MyBookOrder(
    Input$MyBookOrder instance,
    TRes Function(Input$MyBookOrder) then,
  ) = _CopyWithImpl$Input$MyBookOrder;

  factory CopyWith$Input$MyBookOrder.stub(TRes res) =
      _CopyWithStubImpl$Input$MyBookOrder;

  TRes call({
    Enum$MyBookOrderable? asc,
    Enum$MyBookOrderable? desc,
    Input$MyBookOrder? then,
  });
  CopyWith$Input$MyBookOrder<TRes> get then;
}

class _CopyWithImpl$Input$MyBookOrder<TRes>
    implements CopyWith$Input$MyBookOrder<TRes> {
  _CopyWithImpl$Input$MyBookOrder(
    this._instance,
    this._then,
  );

  final Input$MyBookOrder _instance;

  final TRes Function(Input$MyBookOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? asc = _undefined,
    Object? desc = _undefined,
    Object? then = _undefined,
  }) =>
      _then(Input$MyBookOrder._({
        ..._instance._$data,
        if (asc != _undefined) 'asc': (asc as Enum$MyBookOrderable?),
        if (desc != _undefined) 'desc': (desc as Enum$MyBookOrderable?),
        if (then != _undefined) 'then': (then as Input$MyBookOrder?),
      }));

  CopyWith$Input$MyBookOrder<TRes> get then {
    final local$then = _instance.then;
    return local$then == null
        ? CopyWith$Input$MyBookOrder.stub(_then(_instance))
        : CopyWith$Input$MyBookOrder(local$then, (e) => call(then: e));
  }
}

class _CopyWithStubImpl$Input$MyBookOrder<TRes>
    implements CopyWith$Input$MyBookOrder<TRes> {
  _CopyWithStubImpl$Input$MyBookOrder(this._res);

  TRes _res;

  call({
    Enum$MyBookOrderable? asc,
    Enum$MyBookOrderable? desc,
    Input$MyBookOrder? then,
  }) =>
      _res;

  CopyWith$Input$MyBookOrder<TRes> get then =>
      CopyWith$Input$MyBookOrder.stub(_res);
}

class Input$MyBookPatch {
  factory Input$MyBookPatch({
    int? bookNumber,
    String? title,
    DateTime? readOn,
    bool? favorite,
  }) =>
      Input$MyBookPatch._({
        if (bookNumber != null) r'bookNumber': bookNumber,
        if (title != null) r'title': title,
        if (readOn != null) r'readOn': readOn,
        if (favorite != null) r'favorite': favorite,
      });

  Input$MyBookPatch._(this._$data);

  factory Input$MyBookPatch.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bookNumber')) {
      final l$bookNumber = data['bookNumber'];
      result$data['bookNumber'] = (l$bookNumber as int?);
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('readOn')) {
      final l$readOn = data['readOn'];
      result$data['readOn'] =
          l$readOn == null ? null : DateTime.parse((l$readOn as String));
    }
    if (data.containsKey('favorite')) {
      final l$favorite = data['favorite'];
      result$data['favorite'] = (l$favorite as bool?);
    }
    return Input$MyBookPatch._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get bookNumber => (_$data['bookNumber'] as int?);

  String? get title => (_$data['title'] as String?);

  DateTime? get readOn => (_$data['readOn'] as DateTime?);

  bool? get favorite => (_$data['favorite'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bookNumber')) {
      final l$bookNumber = bookNumber;
      result$data['bookNumber'] = l$bookNumber;
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('readOn')) {
      final l$readOn = readOn;
      result$data['readOn'] = l$readOn?.toIso8601String();
    }
    if (_$data.containsKey('favorite')) {
      final l$favorite = favorite;
      result$data['favorite'] = l$favorite;
    }
    return result$data;
  }

  CopyWith$Input$MyBookPatch<Input$MyBookPatch> get copyWith =>
      CopyWith$Input$MyBookPatch(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$MyBookPatch) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bookNumber = bookNumber;
    final lOther$bookNumber = other.bookNumber;
    if (_$data.containsKey('bookNumber') !=
        other._$data.containsKey('bookNumber')) {
      return false;
    }
    if (l$bookNumber != lOther$bookNumber) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$readOn = readOn;
    final lOther$readOn = other.readOn;
    if (_$data.containsKey('readOn') != other._$data.containsKey('readOn')) {
      return false;
    }
    if (l$readOn != lOther$readOn) {
      return false;
    }
    final l$favorite = favorite;
    final lOther$favorite = other.favorite;
    if (_$data.containsKey('favorite') !=
        other._$data.containsKey('favorite')) {
      return false;
    }
    if (l$favorite != lOther$favorite) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bookNumber = bookNumber;
    final l$title = title;
    final l$readOn = readOn;
    final l$favorite = favorite;
    return Object.hashAll([
      _$data.containsKey('bookNumber') ? l$bookNumber : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('readOn') ? l$readOn : const {},
      _$data.containsKey('favorite') ? l$favorite : const {},
    ]);
  }
}

abstract class CopyWith$Input$MyBookPatch<TRes> {
  factory CopyWith$Input$MyBookPatch(
    Input$MyBookPatch instance,
    TRes Function(Input$MyBookPatch) then,
  ) = _CopyWithImpl$Input$MyBookPatch;

  factory CopyWith$Input$MyBookPatch.stub(TRes res) =
      _CopyWithStubImpl$Input$MyBookPatch;

  TRes call({
    int? bookNumber,
    String? title,
    DateTime? readOn,
    bool? favorite,
  });
}

class _CopyWithImpl$Input$MyBookPatch<TRes>
    implements CopyWith$Input$MyBookPatch<TRes> {
  _CopyWithImpl$Input$MyBookPatch(
    this._instance,
    this._then,
  );

  final Input$MyBookPatch _instance;

  final TRes Function(Input$MyBookPatch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bookNumber = _undefined,
    Object? title = _undefined,
    Object? readOn = _undefined,
    Object? favorite = _undefined,
  }) =>
      _then(Input$MyBookPatch._({
        ..._instance._$data,
        if (bookNumber != _undefined) 'bookNumber': (bookNumber as int?),
        if (title != _undefined) 'title': (title as String?),
        if (readOn != _undefined) 'readOn': (readOn as DateTime?),
        if (favorite != _undefined) 'favorite': (favorite as bool?),
      }));
}

class _CopyWithStubImpl$Input$MyBookPatch<TRes>
    implements CopyWith$Input$MyBookPatch<TRes> {
  _CopyWithStubImpl$Input$MyBookPatch(this._res);

  TRes _res;

  call({
    int? bookNumber,
    String? title,
    DateTime? readOn,
    bool? favorite,
  }) =>
      _res;
}

class Input$MyBookRef {
  factory Input$MyBookRef({
    String? id,
    int? bookNumber,
    String? title,
    DateTime? readOn,
    bool? favorite,
  }) =>
      Input$MyBookRef._({
        if (id != null) r'id': id,
        if (bookNumber != null) r'bookNumber': bookNumber,
        if (title != null) r'title': title,
        if (readOn != null) r'readOn': readOn,
        if (favorite != null) r'favorite': favorite,
      });

  Input$MyBookRef._(this._$data);

  factory Input$MyBookRef.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('bookNumber')) {
      final l$bookNumber = data['bookNumber'];
      result$data['bookNumber'] = (l$bookNumber as int?);
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('readOn')) {
      final l$readOn = data['readOn'];
      result$data['readOn'] =
          l$readOn == null ? null : DateTime.parse((l$readOn as String));
    }
    if (data.containsKey('favorite')) {
      final l$favorite = data['favorite'];
      result$data['favorite'] = (l$favorite as bool?);
    }
    return Input$MyBookRef._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  int? get bookNumber => (_$data['bookNumber'] as int?);

  String? get title => (_$data['title'] as String?);

  DateTime? get readOn => (_$data['readOn'] as DateTime?);

  bool? get favorite => (_$data['favorite'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('bookNumber')) {
      final l$bookNumber = bookNumber;
      result$data['bookNumber'] = l$bookNumber;
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('readOn')) {
      final l$readOn = readOn;
      result$data['readOn'] = l$readOn?.toIso8601String();
    }
    if (_$data.containsKey('favorite')) {
      final l$favorite = favorite;
      result$data['favorite'] = l$favorite;
    }
    return result$data;
  }

  CopyWith$Input$MyBookRef<Input$MyBookRef> get copyWith =>
      CopyWith$Input$MyBookRef(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$MyBookRef) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$bookNumber = bookNumber;
    final lOther$bookNumber = other.bookNumber;
    if (_$data.containsKey('bookNumber') !=
        other._$data.containsKey('bookNumber')) {
      return false;
    }
    if (l$bookNumber != lOther$bookNumber) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$readOn = readOn;
    final lOther$readOn = other.readOn;
    if (_$data.containsKey('readOn') != other._$data.containsKey('readOn')) {
      return false;
    }
    if (l$readOn != lOther$readOn) {
      return false;
    }
    final l$favorite = favorite;
    final lOther$favorite = other.favorite;
    if (_$data.containsKey('favorite') !=
        other._$data.containsKey('favorite')) {
      return false;
    }
    if (l$favorite != lOther$favorite) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$bookNumber = bookNumber;
    final l$title = title;
    final l$readOn = readOn;
    final l$favorite = favorite;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('bookNumber') ? l$bookNumber : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('readOn') ? l$readOn : const {},
      _$data.containsKey('favorite') ? l$favorite : const {},
    ]);
  }
}

abstract class CopyWith$Input$MyBookRef<TRes> {
  factory CopyWith$Input$MyBookRef(
    Input$MyBookRef instance,
    TRes Function(Input$MyBookRef) then,
  ) = _CopyWithImpl$Input$MyBookRef;

  factory CopyWith$Input$MyBookRef.stub(TRes res) =
      _CopyWithStubImpl$Input$MyBookRef;

  TRes call({
    String? id,
    int? bookNumber,
    String? title,
    DateTime? readOn,
    bool? favorite,
  });
}

class _CopyWithImpl$Input$MyBookRef<TRes>
    implements CopyWith$Input$MyBookRef<TRes> {
  _CopyWithImpl$Input$MyBookRef(
    this._instance,
    this._then,
  );

  final Input$MyBookRef _instance;

  final TRes Function(Input$MyBookRef) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? bookNumber = _undefined,
    Object? title = _undefined,
    Object? readOn = _undefined,
    Object? favorite = _undefined,
  }) =>
      _then(Input$MyBookRef._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (bookNumber != _undefined) 'bookNumber': (bookNumber as int?),
        if (title != _undefined) 'title': (title as String?),
        if (readOn != _undefined) 'readOn': (readOn as DateTime?),
        if (favorite != _undefined) 'favorite': (favorite as bool?),
      }));
}

class _CopyWithStubImpl$Input$MyBookRef<TRes>
    implements CopyWith$Input$MyBookRef<TRes> {
  _CopyWithStubImpl$Input$MyBookRef(this._res);

  TRes _res;

  call({
    String? id,
    int? bookNumber,
    String? title,
    DateTime? readOn,
    bool? favorite,
  }) =>
      _res;
}

class Input$NearFilter {
  factory Input$NearFilter({
    required double distance,
    required Input$PointRef coordinate,
  }) =>
      Input$NearFilter._({
        r'distance': distance,
        r'coordinate': coordinate,
      });

  Input$NearFilter._(this._$data);

  factory Input$NearFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$distance = data['distance'];
    result$data['distance'] = (l$distance as num).toDouble();
    final l$coordinate = data['coordinate'];
    result$data['coordinate'] =
        Input$PointRef.fromJson((l$coordinate as Map<String, dynamic>));
    return Input$NearFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  double get distance => (_$data['distance'] as double);

  Input$PointRef get coordinate => (_$data['coordinate'] as Input$PointRef);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$distance = distance;
    result$data['distance'] = l$distance;
    final l$coordinate = coordinate;
    result$data['coordinate'] = l$coordinate.toJson();
    return result$data;
  }

  CopyWith$Input$NearFilter<Input$NearFilter> get copyWith =>
      CopyWith$Input$NearFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$NearFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$distance = distance;
    final lOther$distance = other.distance;
    if (l$distance != lOther$distance) {
      return false;
    }
    final l$coordinate = coordinate;
    final lOther$coordinate = other.coordinate;
    if (l$coordinate != lOther$coordinate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$distance = distance;
    final l$coordinate = coordinate;
    return Object.hashAll([
      l$distance,
      l$coordinate,
    ]);
  }
}

abstract class CopyWith$Input$NearFilter<TRes> {
  factory CopyWith$Input$NearFilter(
    Input$NearFilter instance,
    TRes Function(Input$NearFilter) then,
  ) = _CopyWithImpl$Input$NearFilter;

  factory CopyWith$Input$NearFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$NearFilter;

  TRes call({
    double? distance,
    Input$PointRef? coordinate,
  });
  CopyWith$Input$PointRef<TRes> get coordinate;
}

class _CopyWithImpl$Input$NearFilter<TRes>
    implements CopyWith$Input$NearFilter<TRes> {
  _CopyWithImpl$Input$NearFilter(
    this._instance,
    this._then,
  );

  final Input$NearFilter _instance;

  final TRes Function(Input$NearFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? distance = _undefined,
    Object? coordinate = _undefined,
  }) =>
      _then(Input$NearFilter._({
        ..._instance._$data,
        if (distance != _undefined && distance != null)
          'distance': (distance as double),
        if (coordinate != _undefined && coordinate != null)
          'coordinate': (coordinate as Input$PointRef),
      }));

  CopyWith$Input$PointRef<TRes> get coordinate {
    final local$coordinate = _instance.coordinate;
    return CopyWith$Input$PointRef(
        local$coordinate, (e) => call(coordinate: e));
  }
}

class _CopyWithStubImpl$Input$NearFilter<TRes>
    implements CopyWith$Input$NearFilter<TRes> {
  _CopyWithStubImpl$Input$NearFilter(this._res);

  TRes _res;

  call({
    double? distance,
    Input$PointRef? coordinate,
  }) =>
      _res;

  CopyWith$Input$PointRef<TRes> get coordinate =>
      CopyWith$Input$PointRef.stub(_res);
}

class Input$PointGeoFilter {
  factory Input$PointGeoFilter({
    Input$NearFilter? near,
    Input$WithinFilter? within,
  }) =>
      Input$PointGeoFilter._({
        if (near != null) r'near': near,
        if (within != null) r'within': within,
      });

  Input$PointGeoFilter._(this._$data);

  factory Input$PointGeoFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('near')) {
      final l$near = data['near'];
      result$data['near'] = l$near == null
          ? null
          : Input$NearFilter.fromJson((l$near as Map<String, dynamic>));
    }
    if (data.containsKey('within')) {
      final l$within = data['within'];
      result$data['within'] = l$within == null
          ? null
          : Input$WithinFilter.fromJson((l$within as Map<String, dynamic>));
    }
    return Input$PointGeoFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$NearFilter? get near => (_$data['near'] as Input$NearFilter?);

  Input$WithinFilter? get within => (_$data['within'] as Input$WithinFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('near')) {
      final l$near = near;
      result$data['near'] = l$near?.toJson();
    }
    if (_$data.containsKey('within')) {
      final l$within = within;
      result$data['within'] = l$within?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PointGeoFilter<Input$PointGeoFilter> get copyWith =>
      CopyWith$Input$PointGeoFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PointGeoFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$near = near;
    final lOther$near = other.near;
    if (_$data.containsKey('near') != other._$data.containsKey('near')) {
      return false;
    }
    if (l$near != lOther$near) {
      return false;
    }
    final l$within = within;
    final lOther$within = other.within;
    if (_$data.containsKey('within') != other._$data.containsKey('within')) {
      return false;
    }
    if (l$within != lOther$within) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$near = near;
    final l$within = within;
    return Object.hashAll([
      _$data.containsKey('near') ? l$near : const {},
      _$data.containsKey('within') ? l$within : const {},
    ]);
  }
}

abstract class CopyWith$Input$PointGeoFilter<TRes> {
  factory CopyWith$Input$PointGeoFilter(
    Input$PointGeoFilter instance,
    TRes Function(Input$PointGeoFilter) then,
  ) = _CopyWithImpl$Input$PointGeoFilter;

  factory CopyWith$Input$PointGeoFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$PointGeoFilter;

  TRes call({
    Input$NearFilter? near,
    Input$WithinFilter? within,
  });
  CopyWith$Input$NearFilter<TRes> get near;
  CopyWith$Input$WithinFilter<TRes> get within;
}

class _CopyWithImpl$Input$PointGeoFilter<TRes>
    implements CopyWith$Input$PointGeoFilter<TRes> {
  _CopyWithImpl$Input$PointGeoFilter(
    this._instance,
    this._then,
  );

  final Input$PointGeoFilter _instance;

  final TRes Function(Input$PointGeoFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? near = _undefined,
    Object? within = _undefined,
  }) =>
      _then(Input$PointGeoFilter._({
        ..._instance._$data,
        if (near != _undefined) 'near': (near as Input$NearFilter?),
        if (within != _undefined) 'within': (within as Input$WithinFilter?),
      }));

  CopyWith$Input$NearFilter<TRes> get near {
    final local$near = _instance.near;
    return local$near == null
        ? CopyWith$Input$NearFilter.stub(_then(_instance))
        : CopyWith$Input$NearFilter(local$near, (e) => call(near: e));
  }

  CopyWith$Input$WithinFilter<TRes> get within {
    final local$within = _instance.within;
    return local$within == null
        ? CopyWith$Input$WithinFilter.stub(_then(_instance))
        : CopyWith$Input$WithinFilter(local$within, (e) => call(within: e));
  }
}

class _CopyWithStubImpl$Input$PointGeoFilter<TRes>
    implements CopyWith$Input$PointGeoFilter<TRes> {
  _CopyWithStubImpl$Input$PointGeoFilter(this._res);

  TRes _res;

  call({
    Input$NearFilter? near,
    Input$WithinFilter? within,
  }) =>
      _res;

  CopyWith$Input$NearFilter<TRes> get near =>
      CopyWith$Input$NearFilter.stub(_res);

  CopyWith$Input$WithinFilter<TRes> get within =>
      CopyWith$Input$WithinFilter.stub(_res);
}

class Input$PointListRef {
  factory Input$PointListRef({required List<Input$PointRef> points}) =>
      Input$PointListRef._({
        r'points': points,
      });

  Input$PointListRef._(this._$data);

  factory Input$PointListRef.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$points = data['points'];
    result$data['points'] = (l$points as List<dynamic>)
        .map((e) => Input$PointRef.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Input$PointListRef._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PointRef> get points => (_$data['points'] as List<Input$PointRef>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$points = points;
    result$data['points'] = l$points.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$PointListRef<Input$PointListRef> get copyWith =>
      CopyWith$Input$PointListRef(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PointListRef) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$points = points;
    final lOther$points = other.points;
    if (l$points.length != lOther$points.length) {
      return false;
    }
    for (int i = 0; i < l$points.length; i++) {
      final l$points$entry = l$points[i];
      final lOther$points$entry = lOther$points[i];
      if (l$points$entry != lOther$points$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$points = points;
    return Object.hashAll([Object.hashAll(l$points.map((v) => v))]);
  }
}

abstract class CopyWith$Input$PointListRef<TRes> {
  factory CopyWith$Input$PointListRef(
    Input$PointListRef instance,
    TRes Function(Input$PointListRef) then,
  ) = _CopyWithImpl$Input$PointListRef;

  factory CopyWith$Input$PointListRef.stub(TRes res) =
      _CopyWithStubImpl$Input$PointListRef;

  TRes call({List<Input$PointRef>? points});
  TRes points(
      Iterable<Input$PointRef> Function(
              Iterable<CopyWith$Input$PointRef<Input$PointRef>>)
          _fn);
}

class _CopyWithImpl$Input$PointListRef<TRes>
    implements CopyWith$Input$PointListRef<TRes> {
  _CopyWithImpl$Input$PointListRef(
    this._instance,
    this._then,
  );

  final Input$PointListRef _instance;

  final TRes Function(Input$PointListRef) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? points = _undefined}) => _then(Input$PointListRef._({
        ..._instance._$data,
        if (points != _undefined && points != null)
          'points': (points as List<Input$PointRef>),
      }));

  TRes points(
          Iterable<Input$PointRef> Function(
                  Iterable<CopyWith$Input$PointRef<Input$PointRef>>)
              _fn) =>
      call(
          points: _fn(_instance.points.map((e) => CopyWith$Input$PointRef(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Input$PointListRef<TRes>
    implements CopyWith$Input$PointListRef<TRes> {
  _CopyWithStubImpl$Input$PointListRef(this._res);

  TRes _res;

  call({List<Input$PointRef>? points}) => _res;

  points(_fn) => _res;
}

class Input$PointRef {
  factory Input$PointRef({
    required double longitude,
    required double latitude,
  }) =>
      Input$PointRef._({
        r'longitude': longitude,
        r'latitude': latitude,
      });

  Input$PointRef._(this._$data);

  factory Input$PointRef.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$longitude = data['longitude'];
    result$data['longitude'] = (l$longitude as num).toDouble();
    final l$latitude = data['latitude'];
    result$data['latitude'] = (l$latitude as num).toDouble();
    return Input$PointRef._(result$data);
  }

  Map<String, dynamic> _$data;

  double get longitude => (_$data['longitude'] as double);

  double get latitude => (_$data['latitude'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$longitude = longitude;
    result$data['longitude'] = l$longitude;
    final l$latitude = latitude;
    result$data['latitude'] = l$latitude;
    return result$data;
  }

  CopyWith$Input$PointRef<Input$PointRef> get copyWith =>
      CopyWith$Input$PointRef(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PointRef) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$longitude = longitude;
    final l$latitude = latitude;
    return Object.hashAll([
      l$longitude,
      l$latitude,
    ]);
  }
}

abstract class CopyWith$Input$PointRef<TRes> {
  factory CopyWith$Input$PointRef(
    Input$PointRef instance,
    TRes Function(Input$PointRef) then,
  ) = _CopyWithImpl$Input$PointRef;

  factory CopyWith$Input$PointRef.stub(TRes res) =
      _CopyWithStubImpl$Input$PointRef;

  TRes call({
    double? longitude,
    double? latitude,
  });
}

class _CopyWithImpl$Input$PointRef<TRes>
    implements CopyWith$Input$PointRef<TRes> {
  _CopyWithImpl$Input$PointRef(
    this._instance,
    this._then,
  );

  final Input$PointRef _instance;

  final TRes Function(Input$PointRef) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? longitude = _undefined,
    Object? latitude = _undefined,
  }) =>
      _then(Input$PointRef._({
        ..._instance._$data,
        if (longitude != _undefined && longitude != null)
          'longitude': (longitude as double),
        if (latitude != _undefined && latitude != null)
          'latitude': (latitude as double),
      }));
}

class _CopyWithStubImpl$Input$PointRef<TRes>
    implements CopyWith$Input$PointRef<TRes> {
  _CopyWithStubImpl$Input$PointRef(this._res);

  TRes _res;

  call({
    double? longitude,
    double? latitude,
  }) =>
      _res;
}

class Input$PolygonGeoFilter {
  factory Input$PolygonGeoFilter({
    Input$NearFilter? near,
    Input$WithinFilter? within,
    Input$ContainsFilter? contains,
    Input$IntersectsFilter? intersects,
  }) =>
      Input$PolygonGeoFilter._({
        if (near != null) r'near': near,
        if (within != null) r'within': within,
        if (contains != null) r'contains': contains,
        if (intersects != null) r'intersects': intersects,
      });

  Input$PolygonGeoFilter._(this._$data);

  factory Input$PolygonGeoFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('near')) {
      final l$near = data['near'];
      result$data['near'] = l$near == null
          ? null
          : Input$NearFilter.fromJson((l$near as Map<String, dynamic>));
    }
    if (data.containsKey('within')) {
      final l$within = data['within'];
      result$data['within'] = l$within == null
          ? null
          : Input$WithinFilter.fromJson((l$within as Map<String, dynamic>));
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = l$contains == null
          ? null
          : Input$ContainsFilter.fromJson((l$contains as Map<String, dynamic>));
    }
    if (data.containsKey('intersects')) {
      final l$intersects = data['intersects'];
      result$data['intersects'] = l$intersects == null
          ? null
          : Input$IntersectsFilter.fromJson(
              (l$intersects as Map<String, dynamic>));
    }
    return Input$PolygonGeoFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$NearFilter? get near => (_$data['near'] as Input$NearFilter?);

  Input$WithinFilter? get within => (_$data['within'] as Input$WithinFilter?);

  Input$ContainsFilter? get contains =>
      (_$data['contains'] as Input$ContainsFilter?);

  Input$IntersectsFilter? get intersects =>
      (_$data['intersects'] as Input$IntersectsFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('near')) {
      final l$near = near;
      result$data['near'] = l$near?.toJson();
    }
    if (_$data.containsKey('within')) {
      final l$within = within;
      result$data['within'] = l$within?.toJson();
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains?.toJson();
    }
    if (_$data.containsKey('intersects')) {
      final l$intersects = intersects;
      result$data['intersects'] = l$intersects?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PolygonGeoFilter<Input$PolygonGeoFilter> get copyWith =>
      CopyWith$Input$PolygonGeoFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PolygonGeoFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$near = near;
    final lOther$near = other.near;
    if (_$data.containsKey('near') != other._$data.containsKey('near')) {
      return false;
    }
    if (l$near != lOther$near) {
      return false;
    }
    final l$within = within;
    final lOther$within = other.within;
    if (_$data.containsKey('within') != other._$data.containsKey('within')) {
      return false;
    }
    if (l$within != lOther$within) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$intersects = intersects;
    final lOther$intersects = other.intersects;
    if (_$data.containsKey('intersects') !=
        other._$data.containsKey('intersects')) {
      return false;
    }
    if (l$intersects != lOther$intersects) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$near = near;
    final l$within = within;
    final l$contains = contains;
    final l$intersects = intersects;
    return Object.hashAll([
      _$data.containsKey('near') ? l$near : const {},
      _$data.containsKey('within') ? l$within : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('intersects') ? l$intersects : const {},
    ]);
  }
}

abstract class CopyWith$Input$PolygonGeoFilter<TRes> {
  factory CopyWith$Input$PolygonGeoFilter(
    Input$PolygonGeoFilter instance,
    TRes Function(Input$PolygonGeoFilter) then,
  ) = _CopyWithImpl$Input$PolygonGeoFilter;

  factory CopyWith$Input$PolygonGeoFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$PolygonGeoFilter;

  TRes call({
    Input$NearFilter? near,
    Input$WithinFilter? within,
    Input$ContainsFilter? contains,
    Input$IntersectsFilter? intersects,
  });
  CopyWith$Input$NearFilter<TRes> get near;
  CopyWith$Input$WithinFilter<TRes> get within;
  CopyWith$Input$ContainsFilter<TRes> get contains;
  CopyWith$Input$IntersectsFilter<TRes> get intersects;
}

class _CopyWithImpl$Input$PolygonGeoFilter<TRes>
    implements CopyWith$Input$PolygonGeoFilter<TRes> {
  _CopyWithImpl$Input$PolygonGeoFilter(
    this._instance,
    this._then,
  );

  final Input$PolygonGeoFilter _instance;

  final TRes Function(Input$PolygonGeoFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? near = _undefined,
    Object? within = _undefined,
    Object? contains = _undefined,
    Object? intersects = _undefined,
  }) =>
      _then(Input$PolygonGeoFilter._({
        ..._instance._$data,
        if (near != _undefined) 'near': (near as Input$NearFilter?),
        if (within != _undefined) 'within': (within as Input$WithinFilter?),
        if (contains != _undefined)
          'contains': (contains as Input$ContainsFilter?),
        if (intersects != _undefined)
          'intersects': (intersects as Input$IntersectsFilter?),
      }));

  CopyWith$Input$NearFilter<TRes> get near {
    final local$near = _instance.near;
    return local$near == null
        ? CopyWith$Input$NearFilter.stub(_then(_instance))
        : CopyWith$Input$NearFilter(local$near, (e) => call(near: e));
  }

  CopyWith$Input$WithinFilter<TRes> get within {
    final local$within = _instance.within;
    return local$within == null
        ? CopyWith$Input$WithinFilter.stub(_then(_instance))
        : CopyWith$Input$WithinFilter(local$within, (e) => call(within: e));
  }

  CopyWith$Input$ContainsFilter<TRes> get contains {
    final local$contains = _instance.contains;
    return local$contains == null
        ? CopyWith$Input$ContainsFilter.stub(_then(_instance))
        : CopyWith$Input$ContainsFilter(
            local$contains, (e) => call(contains: e));
  }

  CopyWith$Input$IntersectsFilter<TRes> get intersects {
    final local$intersects = _instance.intersects;
    return local$intersects == null
        ? CopyWith$Input$IntersectsFilter.stub(_then(_instance))
        : CopyWith$Input$IntersectsFilter(
            local$intersects, (e) => call(intersects: e));
  }
}

class _CopyWithStubImpl$Input$PolygonGeoFilter<TRes>
    implements CopyWith$Input$PolygonGeoFilter<TRes> {
  _CopyWithStubImpl$Input$PolygonGeoFilter(this._res);

  TRes _res;

  call({
    Input$NearFilter? near,
    Input$WithinFilter? within,
    Input$ContainsFilter? contains,
    Input$IntersectsFilter? intersects,
  }) =>
      _res;

  CopyWith$Input$NearFilter<TRes> get near =>
      CopyWith$Input$NearFilter.stub(_res);

  CopyWith$Input$WithinFilter<TRes> get within =>
      CopyWith$Input$WithinFilter.stub(_res);

  CopyWith$Input$ContainsFilter<TRes> get contains =>
      CopyWith$Input$ContainsFilter.stub(_res);

  CopyWith$Input$IntersectsFilter<TRes> get intersects =>
      CopyWith$Input$IntersectsFilter.stub(_res);
}

class Input$PolygonRef {
  factory Input$PolygonRef({required List<Input$PointListRef> coordinates}) =>
      Input$PolygonRef._({
        r'coordinates': coordinates,
      });

  Input$PolygonRef._(this._$data);

  factory Input$PolygonRef.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$coordinates = data['coordinates'];
    result$data['coordinates'] = (l$coordinates as List<dynamic>)
        .map((e) => Input$PointListRef.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Input$PolygonRef._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PointListRef> get coordinates =>
      (_$data['coordinates'] as List<Input$PointListRef>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$coordinates = coordinates;
    result$data['coordinates'] = l$coordinates.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$PolygonRef<Input$PolygonRef> get copyWith =>
      CopyWith$Input$PolygonRef(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PolygonRef) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (l$coordinates.length != lOther$coordinates.length) {
      return false;
    }
    for (int i = 0; i < l$coordinates.length; i++) {
      final l$coordinates$entry = l$coordinates[i];
      final lOther$coordinates$entry = lOther$coordinates[i];
      if (l$coordinates$entry != lOther$coordinates$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$coordinates = coordinates;
    return Object.hashAll([Object.hashAll(l$coordinates.map((v) => v))]);
  }
}

abstract class CopyWith$Input$PolygonRef<TRes> {
  factory CopyWith$Input$PolygonRef(
    Input$PolygonRef instance,
    TRes Function(Input$PolygonRef) then,
  ) = _CopyWithImpl$Input$PolygonRef;

  factory CopyWith$Input$PolygonRef.stub(TRes res) =
      _CopyWithStubImpl$Input$PolygonRef;

  TRes call({List<Input$PointListRef>? coordinates});
  TRes coordinates(
      Iterable<Input$PointListRef> Function(
              Iterable<CopyWith$Input$PointListRef<Input$PointListRef>>)
          _fn);
}

class _CopyWithImpl$Input$PolygonRef<TRes>
    implements CopyWith$Input$PolygonRef<TRes> {
  _CopyWithImpl$Input$PolygonRef(
    this._instance,
    this._then,
  );

  final Input$PolygonRef _instance;

  final TRes Function(Input$PolygonRef) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? coordinates = _undefined}) => _then(Input$PolygonRef._({
        ..._instance._$data,
        if (coordinates != _undefined && coordinates != null)
          'coordinates': (coordinates as List<Input$PointListRef>),
      }));

  TRes coordinates(
          Iterable<Input$PointListRef> Function(
                  Iterable<CopyWith$Input$PointListRef<Input$PointListRef>>)
              _fn) =>
      call(
          coordinates:
              _fn(_instance.coordinates.map((e) => CopyWith$Input$PointListRef(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Input$PolygonRef<TRes>
    implements CopyWith$Input$PolygonRef<TRes> {
  _CopyWithStubImpl$Input$PolygonRef(this._res);

  TRes _res;

  call({List<Input$PointListRef>? coordinates}) => _res;

  coordinates(_fn) => _res;
}

class Input$StringExactFilter {
  factory Input$StringExactFilter({
    String? eq,
    List<String?>? $in,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    Input$StringRange? between,
  }) =>
      Input$StringExactFilter._({
        if (eq != null) r'eq': eq,
        if ($in != null) r'in': $in,
        if (le != null) r'le': le,
        if (lt != null) r'lt': lt,
        if (ge != null) r'ge': ge,
        if (gt != null) r'gt': gt,
        if (between != null) r'between': between,
      });

  Input$StringExactFilter._(this._$data);

  factory Input$StringExactFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('le')) {
      final l$le = data['le'];
      result$data['le'] = (l$le as String?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('ge')) {
      final l$ge = data['ge'];
      result$data['ge'] = (l$ge as String?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = l$between == null
          ? null
          : Input$StringRange.fromJson((l$between as Map<String, dynamic>));
    }
    return Input$StringExactFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get eq => (_$data['eq'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  String? get le => (_$data['le'] as String?);

  String? get lt => (_$data['lt'] as String?);

  String? get ge => (_$data['ge'] as String?);

  String? get gt => (_$data['gt'] as String?);

  Input$StringRange? get between => (_$data['between'] as Input$StringRange?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('le')) {
      final l$le = le;
      result$data['le'] = l$le;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('ge')) {
      final l$ge = ge;
      result$data['ge'] = l$ge;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$StringExactFilter<Input$StringExactFilter> get copyWith =>
      CopyWith$Input$StringExactFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StringExactFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$le = le;
    final lOther$le = other.le;
    if (_$data.containsKey('le') != other._$data.containsKey('le')) {
      return false;
    }
    if (l$le != lOther$le) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$ge = ge;
    final lOther$ge = other.ge;
    if (_$data.containsKey('ge') != other._$data.containsKey('ge')) {
      return false;
    }
    if (l$ge != lOther$ge) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != lOther$between) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$$in = $in;
    final l$le = le;
    final l$lt = lt;
    final l$ge = ge;
    final l$gt = gt;
    final l$between = between;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('le') ? l$le : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('ge') ? l$ge : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('between') ? l$between : const {},
    ]);
  }
}

abstract class CopyWith$Input$StringExactFilter<TRes> {
  factory CopyWith$Input$StringExactFilter(
    Input$StringExactFilter instance,
    TRes Function(Input$StringExactFilter) then,
  ) = _CopyWithImpl$Input$StringExactFilter;

  factory CopyWith$Input$StringExactFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$StringExactFilter;

  TRes call({
    String? eq,
    List<String?>? $in,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    Input$StringRange? between,
  });
  CopyWith$Input$StringRange<TRes> get between;
}

class _CopyWithImpl$Input$StringExactFilter<TRes>
    implements CopyWith$Input$StringExactFilter<TRes> {
  _CopyWithImpl$Input$StringExactFilter(
    this._instance,
    this._then,
  );

  final Input$StringExactFilter _instance;

  final TRes Function(Input$StringExactFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? $in = _undefined,
    Object? le = _undefined,
    Object? lt = _undefined,
    Object? ge = _undefined,
    Object? gt = _undefined,
    Object? between = _undefined,
  }) =>
      _then(Input$StringExactFilter._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as String?),
        if ($in != _undefined) 'in': ($in as List<String?>?),
        if (le != _undefined) 'le': (le as String?),
        if (lt != _undefined) 'lt': (lt as String?),
        if (ge != _undefined) 'ge': (ge as String?),
        if (gt != _undefined) 'gt': (gt as String?),
        if (between != _undefined) 'between': (between as Input$StringRange?),
      }));

  CopyWith$Input$StringRange<TRes> get between {
    final local$between = _instance.between;
    return local$between == null
        ? CopyWith$Input$StringRange.stub(_then(_instance))
        : CopyWith$Input$StringRange(local$between, (e) => call(between: e));
  }
}

class _CopyWithStubImpl$Input$StringExactFilter<TRes>
    implements CopyWith$Input$StringExactFilter<TRes> {
  _CopyWithStubImpl$Input$StringExactFilter(this._res);

  TRes _res;

  call({
    String? eq,
    List<String?>? $in,
    String? le,
    String? lt,
    String? ge,
    String? gt,
    Input$StringRange? between,
  }) =>
      _res;

  CopyWith$Input$StringRange<TRes> get between =>
      CopyWith$Input$StringRange.stub(_res);
}

class Input$StringFullTextFilter {
  factory Input$StringFullTextFilter({
    String? alloftext,
    String? anyoftext,
  }) =>
      Input$StringFullTextFilter._({
        if (alloftext != null) r'alloftext': alloftext,
        if (anyoftext != null) r'anyoftext': anyoftext,
      });

  Input$StringFullTextFilter._(this._$data);

  factory Input$StringFullTextFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('alloftext')) {
      final l$alloftext = data['alloftext'];
      result$data['alloftext'] = (l$alloftext as String?);
    }
    if (data.containsKey('anyoftext')) {
      final l$anyoftext = data['anyoftext'];
      result$data['anyoftext'] = (l$anyoftext as String?);
    }
    return Input$StringFullTextFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get alloftext => (_$data['alloftext'] as String?);

  String? get anyoftext => (_$data['anyoftext'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('alloftext')) {
      final l$alloftext = alloftext;
      result$data['alloftext'] = l$alloftext;
    }
    if (_$data.containsKey('anyoftext')) {
      final l$anyoftext = anyoftext;
      result$data['anyoftext'] = l$anyoftext;
    }
    return result$data;
  }

  CopyWith$Input$StringFullTextFilter<Input$StringFullTextFilter>
      get copyWith => CopyWith$Input$StringFullTextFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StringFullTextFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$alloftext = alloftext;
    final lOther$alloftext = other.alloftext;
    if (_$data.containsKey('alloftext') !=
        other._$data.containsKey('alloftext')) {
      return false;
    }
    if (l$alloftext != lOther$alloftext) {
      return false;
    }
    final l$anyoftext = anyoftext;
    final lOther$anyoftext = other.anyoftext;
    if (_$data.containsKey('anyoftext') !=
        other._$data.containsKey('anyoftext')) {
      return false;
    }
    if (l$anyoftext != lOther$anyoftext) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$alloftext = alloftext;
    final l$anyoftext = anyoftext;
    return Object.hashAll([
      _$data.containsKey('alloftext') ? l$alloftext : const {},
      _$data.containsKey('anyoftext') ? l$anyoftext : const {},
    ]);
  }
}

abstract class CopyWith$Input$StringFullTextFilter<TRes> {
  factory CopyWith$Input$StringFullTextFilter(
    Input$StringFullTextFilter instance,
    TRes Function(Input$StringFullTextFilter) then,
  ) = _CopyWithImpl$Input$StringFullTextFilter;

  factory CopyWith$Input$StringFullTextFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$StringFullTextFilter;

  TRes call({
    String? alloftext,
    String? anyoftext,
  });
}

class _CopyWithImpl$Input$StringFullTextFilter<TRes>
    implements CopyWith$Input$StringFullTextFilter<TRes> {
  _CopyWithImpl$Input$StringFullTextFilter(
    this._instance,
    this._then,
  );

  final Input$StringFullTextFilter _instance;

  final TRes Function(Input$StringFullTextFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? alloftext = _undefined,
    Object? anyoftext = _undefined,
  }) =>
      _then(Input$StringFullTextFilter._({
        ..._instance._$data,
        if (alloftext != _undefined) 'alloftext': (alloftext as String?),
        if (anyoftext != _undefined) 'anyoftext': (anyoftext as String?),
      }));
}

class _CopyWithStubImpl$Input$StringFullTextFilter<TRes>
    implements CopyWith$Input$StringFullTextFilter<TRes> {
  _CopyWithStubImpl$Input$StringFullTextFilter(this._res);

  TRes _res;

  call({
    String? alloftext,
    String? anyoftext,
  }) =>
      _res;
}

class Input$StringHashFilter {
  factory Input$StringHashFilter({
    String? eq,
    List<String?>? $in,
  }) =>
      Input$StringHashFilter._({
        if (eq != null) r'eq': eq,
        if ($in != null) r'in': $in,
      });

  Input$StringHashFilter._(this._$data);

  factory Input$StringHashFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    return Input$StringHashFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get eq => (_$data['eq'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$StringHashFilter<Input$StringHashFilter> get copyWith =>
      CopyWith$Input$StringHashFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StringHashFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$$in = $in;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$StringHashFilter<TRes> {
  factory CopyWith$Input$StringHashFilter(
    Input$StringHashFilter instance,
    TRes Function(Input$StringHashFilter) then,
  ) = _CopyWithImpl$Input$StringHashFilter;

  factory CopyWith$Input$StringHashFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$StringHashFilter;

  TRes call({
    String? eq,
    List<String?>? $in,
  });
}

class _CopyWithImpl$Input$StringHashFilter<TRes>
    implements CopyWith$Input$StringHashFilter<TRes> {
  _CopyWithImpl$Input$StringHashFilter(
    this._instance,
    this._then,
  );

  final Input$StringHashFilter _instance;

  final TRes Function(Input$StringHashFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? $in = _undefined,
  }) =>
      _then(Input$StringHashFilter._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as String?),
        if ($in != _undefined) 'in': ($in as List<String?>?),
      }));
}

class _CopyWithStubImpl$Input$StringHashFilter<TRes>
    implements CopyWith$Input$StringHashFilter<TRes> {
  _CopyWithStubImpl$Input$StringHashFilter(this._res);

  TRes _res;

  call({
    String? eq,
    List<String?>? $in,
  }) =>
      _res;
}

class Input$StringRange {
  factory Input$StringRange({
    required String min,
    required String max,
  }) =>
      Input$StringRange._({
        r'min': min,
        r'max': max,
      });

  Input$StringRange._(this._$data);

  factory Input$StringRange.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$min = data['min'];
    result$data['min'] = (l$min as String);
    final l$max = data['max'];
    result$data['max'] = (l$max as String);
    return Input$StringRange._(result$data);
  }

  Map<String, dynamic> _$data;

  String get min => (_$data['min'] as String);

  String get max => (_$data['max'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$min = min;
    result$data['min'] = l$min;
    final l$max = max;
    result$data['max'] = l$max;
    return result$data;
  }

  CopyWith$Input$StringRange<Input$StringRange> get copyWith =>
      CopyWith$Input$StringRange(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StringRange) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$min = min;
    final l$max = max;
    return Object.hashAll([
      l$min,
      l$max,
    ]);
  }
}

abstract class CopyWith$Input$StringRange<TRes> {
  factory CopyWith$Input$StringRange(
    Input$StringRange instance,
    TRes Function(Input$StringRange) then,
  ) = _CopyWithImpl$Input$StringRange;

  factory CopyWith$Input$StringRange.stub(TRes res) =
      _CopyWithStubImpl$Input$StringRange;

  TRes call({
    String? min,
    String? max,
  });
}

class _CopyWithImpl$Input$StringRange<TRes>
    implements CopyWith$Input$StringRange<TRes> {
  _CopyWithImpl$Input$StringRange(
    this._instance,
    this._then,
  );

  final Input$StringRange _instance;

  final TRes Function(Input$StringRange) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? min = _undefined,
    Object? max = _undefined,
  }) =>
      _then(Input$StringRange._({
        ..._instance._$data,
        if (min != _undefined && min != null) 'min': (min as String),
        if (max != _undefined && max != null) 'max': (max as String),
      }));
}

class _CopyWithStubImpl$Input$StringRange<TRes>
    implements CopyWith$Input$StringRange<TRes> {
  _CopyWithStubImpl$Input$StringRange(this._res);

  TRes _res;

  call({
    String? min,
    String? max,
  }) =>
      _res;
}

class Input$StringRegExpFilter {
  factory Input$StringRegExpFilter({String? regexp}) =>
      Input$StringRegExpFilter._({
        if (regexp != null) r'regexp': regexp,
      });

  Input$StringRegExpFilter._(this._$data);

  factory Input$StringRegExpFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('regexp')) {
      final l$regexp = data['regexp'];
      result$data['regexp'] = (l$regexp as String?);
    }
    return Input$StringRegExpFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get regexp => (_$data['regexp'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('regexp')) {
      final l$regexp = regexp;
      result$data['regexp'] = l$regexp;
    }
    return result$data;
  }

  CopyWith$Input$StringRegExpFilter<Input$StringRegExpFilter> get copyWith =>
      CopyWith$Input$StringRegExpFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StringRegExpFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$regexp = regexp;
    final lOther$regexp = other.regexp;
    if (_$data.containsKey('regexp') != other._$data.containsKey('regexp')) {
      return false;
    }
    if (l$regexp != lOther$regexp) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$regexp = regexp;
    return Object.hashAll([_$data.containsKey('regexp') ? l$regexp : const {}]);
  }
}

abstract class CopyWith$Input$StringRegExpFilter<TRes> {
  factory CopyWith$Input$StringRegExpFilter(
    Input$StringRegExpFilter instance,
    TRes Function(Input$StringRegExpFilter) then,
  ) = _CopyWithImpl$Input$StringRegExpFilter;

  factory CopyWith$Input$StringRegExpFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$StringRegExpFilter;

  TRes call({String? regexp});
}

class _CopyWithImpl$Input$StringRegExpFilter<TRes>
    implements CopyWith$Input$StringRegExpFilter<TRes> {
  _CopyWithImpl$Input$StringRegExpFilter(
    this._instance,
    this._then,
  );

  final Input$StringRegExpFilter _instance;

  final TRes Function(Input$StringRegExpFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? regexp = _undefined}) => _then(Input$StringRegExpFilter._({
        ..._instance._$data,
        if (regexp != _undefined) 'regexp': (regexp as String?),
      }));
}

class _CopyWithStubImpl$Input$StringRegExpFilter<TRes>
    implements CopyWith$Input$StringRegExpFilter<TRes> {
  _CopyWithStubImpl$Input$StringRegExpFilter(this._res);

  TRes _res;

  call({String? regexp}) => _res;
}

class Input$StringTermFilter {
  factory Input$StringTermFilter({
    String? allofterms,
    String? anyofterms,
  }) =>
      Input$StringTermFilter._({
        if (allofterms != null) r'allofterms': allofterms,
        if (anyofterms != null) r'anyofterms': anyofterms,
      });

  Input$StringTermFilter._(this._$data);

  factory Input$StringTermFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('allofterms')) {
      final l$allofterms = data['allofterms'];
      result$data['allofterms'] = (l$allofterms as String?);
    }
    if (data.containsKey('anyofterms')) {
      final l$anyofterms = data['anyofterms'];
      result$data['anyofterms'] = (l$anyofterms as String?);
    }
    return Input$StringTermFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get allofterms => (_$data['allofterms'] as String?);

  String? get anyofterms => (_$data['anyofterms'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('allofterms')) {
      final l$allofterms = allofterms;
      result$data['allofterms'] = l$allofterms;
    }
    if (_$data.containsKey('anyofterms')) {
      final l$anyofterms = anyofterms;
      result$data['anyofterms'] = l$anyofterms;
    }
    return result$data;
  }

  CopyWith$Input$StringTermFilter<Input$StringTermFilter> get copyWith =>
      CopyWith$Input$StringTermFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StringTermFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allofterms = allofterms;
    final lOther$allofterms = other.allofterms;
    if (_$data.containsKey('allofterms') !=
        other._$data.containsKey('allofterms')) {
      return false;
    }
    if (l$allofterms != lOther$allofterms) {
      return false;
    }
    final l$anyofterms = anyofterms;
    final lOther$anyofterms = other.anyofterms;
    if (_$data.containsKey('anyofterms') !=
        other._$data.containsKey('anyofterms')) {
      return false;
    }
    if (l$anyofterms != lOther$anyofterms) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$allofterms = allofterms;
    final l$anyofterms = anyofterms;
    return Object.hashAll([
      _$data.containsKey('allofterms') ? l$allofterms : const {},
      _$data.containsKey('anyofterms') ? l$anyofterms : const {},
    ]);
  }
}

abstract class CopyWith$Input$StringTermFilter<TRes> {
  factory CopyWith$Input$StringTermFilter(
    Input$StringTermFilter instance,
    TRes Function(Input$StringTermFilter) then,
  ) = _CopyWithImpl$Input$StringTermFilter;

  factory CopyWith$Input$StringTermFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$StringTermFilter;

  TRes call({
    String? allofterms,
    String? anyofterms,
  });
}

class _CopyWithImpl$Input$StringTermFilter<TRes>
    implements CopyWith$Input$StringTermFilter<TRes> {
  _CopyWithImpl$Input$StringTermFilter(
    this._instance,
    this._then,
  );

  final Input$StringTermFilter _instance;

  final TRes Function(Input$StringTermFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allofterms = _undefined,
    Object? anyofterms = _undefined,
  }) =>
      _then(Input$StringTermFilter._({
        ..._instance._$data,
        if (allofterms != _undefined) 'allofterms': (allofterms as String?),
        if (anyofterms != _undefined) 'anyofterms': (anyofterms as String?),
      }));
}

class _CopyWithStubImpl$Input$StringTermFilter<TRes>
    implements CopyWith$Input$StringTermFilter<TRes> {
  _CopyWithStubImpl$Input$StringTermFilter(this._res);

  TRes _res;

  call({
    String? allofterms,
    String? anyofterms,
  }) =>
      _res;
}

class Input$UpdateMyBookInput {
  factory Input$UpdateMyBookInput({
    required Input$MyBookFilter filter,
    Input$MyBookPatch? $set,
    Input$MyBookPatch? remove,
  }) =>
      Input$UpdateMyBookInput._({
        r'filter': filter,
        if ($set != null) r'set': $set,
        if (remove != null) r'remove': remove,
      });

  Input$UpdateMyBookInput._(this._$data);

  factory Input$UpdateMyBookInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] =
        Input$MyBookFilter.fromJson((l$filter as Map<String, dynamic>));
    if (data.containsKey('set')) {
      final l$$set = data['set'];
      result$data['set'] = l$$set == null
          ? null
          : Input$MyBookPatch.fromJson((l$$set as Map<String, dynamic>));
    }
    if (data.containsKey('remove')) {
      final l$remove = data['remove'];
      result$data['remove'] = l$remove == null
          ? null
          : Input$MyBookPatch.fromJson((l$remove as Map<String, dynamic>));
    }
    return Input$UpdateMyBookInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$MyBookFilter get filter => (_$data['filter'] as Input$MyBookFilter);

  Input$MyBookPatch? get $set => (_$data['set'] as Input$MyBookPatch?);

  Input$MyBookPatch? get remove => (_$data['remove'] as Input$MyBookPatch?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$filter = filter;
    result$data['filter'] = l$filter.toJson();
    if (_$data.containsKey('set')) {
      final l$$set = $set;
      result$data['set'] = l$$set?.toJson();
    }
    if (_$data.containsKey('remove')) {
      final l$remove = remove;
      result$data['remove'] = l$remove?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$UpdateMyBookInput<Input$UpdateMyBookInput> get copyWith =>
      CopyWith$Input$UpdateMyBookInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateMyBookInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$$set = $set;
    final lOther$$set = other.$set;
    if (_$data.containsKey('set') != other._$data.containsKey('set')) {
      return false;
    }
    if (l$$set != lOther$$set) {
      return false;
    }
    final l$remove = remove;
    final lOther$remove = other.remove;
    if (_$data.containsKey('remove') != other._$data.containsKey('remove')) {
      return false;
    }
    if (l$remove != lOther$remove) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    final l$$set = $set;
    final l$remove = remove;
    return Object.hashAll([
      l$filter,
      _$data.containsKey('set') ? l$$set : const {},
      _$data.containsKey('remove') ? l$remove : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateMyBookInput<TRes> {
  factory CopyWith$Input$UpdateMyBookInput(
    Input$UpdateMyBookInput instance,
    TRes Function(Input$UpdateMyBookInput) then,
  ) = _CopyWithImpl$Input$UpdateMyBookInput;

  factory CopyWith$Input$UpdateMyBookInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateMyBookInput;

  TRes call({
    Input$MyBookFilter? filter,
    Input$MyBookPatch? $set,
    Input$MyBookPatch? remove,
  });
  CopyWith$Input$MyBookFilter<TRes> get filter;
  CopyWith$Input$MyBookPatch<TRes> get $set;
  CopyWith$Input$MyBookPatch<TRes> get remove;
}

class _CopyWithImpl$Input$UpdateMyBookInput<TRes>
    implements CopyWith$Input$UpdateMyBookInput<TRes> {
  _CopyWithImpl$Input$UpdateMyBookInput(
    this._instance,
    this._then,
  );

  final Input$UpdateMyBookInput _instance;

  final TRes Function(Input$UpdateMyBookInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? $set = _undefined,
    Object? remove = _undefined,
  }) =>
      _then(Input$UpdateMyBookInput._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$MyBookFilter),
        if ($set != _undefined) 'set': ($set as Input$MyBookPatch?),
        if (remove != _undefined) 'remove': (remove as Input$MyBookPatch?),
      }));

  CopyWith$Input$MyBookFilter<TRes> get filter {
    final local$filter = _instance.filter;
    return CopyWith$Input$MyBookFilter(local$filter, (e) => call(filter: e));
  }

  CopyWith$Input$MyBookPatch<TRes> get $set {
    final local$$set = _instance.$set;
    return local$$set == null
        ? CopyWith$Input$MyBookPatch.stub(_then(_instance))
        : CopyWith$Input$MyBookPatch(local$$set, (e) => call($set: e));
  }

  CopyWith$Input$MyBookPatch<TRes> get remove {
    final local$remove = _instance.remove;
    return local$remove == null
        ? CopyWith$Input$MyBookPatch.stub(_then(_instance))
        : CopyWith$Input$MyBookPatch(local$remove, (e) => call(remove: e));
  }
}

class _CopyWithStubImpl$Input$UpdateMyBookInput<TRes>
    implements CopyWith$Input$UpdateMyBookInput<TRes> {
  _CopyWithStubImpl$Input$UpdateMyBookInput(this._res);

  TRes _res;

  call({
    Input$MyBookFilter? filter,
    Input$MyBookPatch? $set,
    Input$MyBookPatch? remove,
  }) =>
      _res;

  CopyWith$Input$MyBookFilter<TRes> get filter =>
      CopyWith$Input$MyBookFilter.stub(_res);

  CopyWith$Input$MyBookPatch<TRes> get $set =>
      CopyWith$Input$MyBookPatch.stub(_res);

  CopyWith$Input$MyBookPatch<TRes> get remove =>
      CopyWith$Input$MyBookPatch.stub(_res);
}

class Input$WithinFilter {
  factory Input$WithinFilter({required Input$PolygonRef polygon}) =>
      Input$WithinFilter._({
        r'polygon': polygon,
      });

  Input$WithinFilter._(this._$data);

  factory Input$WithinFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$polygon = data['polygon'];
    result$data['polygon'] =
        Input$PolygonRef.fromJson((l$polygon as Map<String, dynamic>));
    return Input$WithinFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PolygonRef get polygon => (_$data['polygon'] as Input$PolygonRef);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$polygon = polygon;
    result$data['polygon'] = l$polygon.toJson();
    return result$data;
  }

  CopyWith$Input$WithinFilter<Input$WithinFilter> get copyWith =>
      CopyWith$Input$WithinFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$WithinFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$polygon = polygon;
    final lOther$polygon = other.polygon;
    if (l$polygon != lOther$polygon) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$polygon = polygon;
    return Object.hashAll([l$polygon]);
  }
}

abstract class CopyWith$Input$WithinFilter<TRes> {
  factory CopyWith$Input$WithinFilter(
    Input$WithinFilter instance,
    TRes Function(Input$WithinFilter) then,
  ) = _CopyWithImpl$Input$WithinFilter;

  factory CopyWith$Input$WithinFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$WithinFilter;

  TRes call({Input$PolygonRef? polygon});
  CopyWith$Input$PolygonRef<TRes> get polygon;
}

class _CopyWithImpl$Input$WithinFilter<TRes>
    implements CopyWith$Input$WithinFilter<TRes> {
  _CopyWithImpl$Input$WithinFilter(
    this._instance,
    this._then,
  );

  final Input$WithinFilter _instance;

  final TRes Function(Input$WithinFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? polygon = _undefined}) => _then(Input$WithinFilter._({
        ..._instance._$data,
        if (polygon != _undefined && polygon != null)
          'polygon': (polygon as Input$PolygonRef),
      }));

  CopyWith$Input$PolygonRef<TRes> get polygon {
    final local$polygon = _instance.polygon;
    return CopyWith$Input$PolygonRef(local$polygon, (e) => call(polygon: e));
  }
}

class _CopyWithStubImpl$Input$WithinFilter<TRes>
    implements CopyWith$Input$WithinFilter<TRes> {
  _CopyWithStubImpl$Input$WithinFilter(this._res);

  TRes _res;

  call({Input$PolygonRef? polygon}) => _res;

  CopyWith$Input$PolygonRef<TRes> get polygon =>
      CopyWith$Input$PolygonRef.stub(_res);
}

enum Enum$DgraphIndex {
  $int,
  int64,
  float,
  $bool,
  hash,
  exact,
  term,
  fulltext,
  trigram,
  regexp,
  year,
  month,
  day,
  hour,
  geo,
  $unknown
}

String toJson$Enum$DgraphIndex(Enum$DgraphIndex e) {
  switch (e) {
    case Enum$DgraphIndex.$int:
      return r'int';
    case Enum$DgraphIndex.int64:
      return r'int64';
    case Enum$DgraphIndex.float:
      return r'float';
    case Enum$DgraphIndex.$bool:
      return r'bool';
    case Enum$DgraphIndex.hash:
      return r'hash';
    case Enum$DgraphIndex.exact:
      return r'exact';
    case Enum$DgraphIndex.term:
      return r'term';
    case Enum$DgraphIndex.fulltext:
      return r'fulltext';
    case Enum$DgraphIndex.trigram:
      return r'trigram';
    case Enum$DgraphIndex.regexp:
      return r'regexp';
    case Enum$DgraphIndex.year:
      return r'year';
    case Enum$DgraphIndex.month:
      return r'month';
    case Enum$DgraphIndex.day:
      return r'day';
    case Enum$DgraphIndex.hour:
      return r'hour';
    case Enum$DgraphIndex.geo:
      return r'geo';
    case Enum$DgraphIndex.$unknown:
      return r'$unknown';
  }
}

Enum$DgraphIndex fromJson$Enum$DgraphIndex(String value) {
  switch (value) {
    case r'int':
      return Enum$DgraphIndex.$int;
    case r'int64':
      return Enum$DgraphIndex.int64;
    case r'float':
      return Enum$DgraphIndex.float;
    case r'bool':
      return Enum$DgraphIndex.$bool;
    case r'hash':
      return Enum$DgraphIndex.hash;
    case r'exact':
      return Enum$DgraphIndex.exact;
    case r'term':
      return Enum$DgraphIndex.term;
    case r'fulltext':
      return Enum$DgraphIndex.fulltext;
    case r'trigram':
      return Enum$DgraphIndex.trigram;
    case r'regexp':
      return Enum$DgraphIndex.regexp;
    case r'year':
      return Enum$DgraphIndex.year;
    case r'month':
      return Enum$DgraphIndex.month;
    case r'day':
      return Enum$DgraphIndex.day;
    case r'hour':
      return Enum$DgraphIndex.hour;
    case r'geo':
      return Enum$DgraphIndex.geo;
    default:
      return Enum$DgraphIndex.$unknown;
  }
}

enum Enum$HTTPMethod { GET, POST, PUT, PATCH, DELETE, $unknown }

String toJson$Enum$HTTPMethod(Enum$HTTPMethod e) {
  switch (e) {
    case Enum$HTTPMethod.GET:
      return r'GET';
    case Enum$HTTPMethod.POST:
      return r'POST';
    case Enum$HTTPMethod.PUT:
      return r'PUT';
    case Enum$HTTPMethod.PATCH:
      return r'PATCH';
    case Enum$HTTPMethod.DELETE:
      return r'DELETE';
    case Enum$HTTPMethod.$unknown:
      return r'$unknown';
  }
}

Enum$HTTPMethod fromJson$Enum$HTTPMethod(String value) {
  switch (value) {
    case r'GET':
      return Enum$HTTPMethod.GET;
    case r'POST':
      return Enum$HTTPMethod.POST;
    case r'PUT':
      return Enum$HTTPMethod.PUT;
    case r'PATCH':
      return Enum$HTTPMethod.PATCH;
    case r'DELETE':
      return Enum$HTTPMethod.DELETE;
    default:
      return Enum$HTTPMethod.$unknown;
  }
}

enum Enum$Mode { BATCH, SINGLE, $unknown }

String toJson$Enum$Mode(Enum$Mode e) {
  switch (e) {
    case Enum$Mode.BATCH:
      return r'BATCH';
    case Enum$Mode.SINGLE:
      return r'SINGLE';
    case Enum$Mode.$unknown:
      return r'$unknown';
  }
}

Enum$Mode fromJson$Enum$Mode(String value) {
  switch (value) {
    case r'BATCH':
      return Enum$Mode.BATCH;
    case r'SINGLE':
      return Enum$Mode.SINGLE;
    default:
      return Enum$Mode.$unknown;
  }
}

enum Enum$MyBookHasFilter { bookNumber, title, readOn, favorite, $unknown }

String toJson$Enum$MyBookHasFilter(Enum$MyBookHasFilter e) {
  switch (e) {
    case Enum$MyBookHasFilter.bookNumber:
      return r'bookNumber';
    case Enum$MyBookHasFilter.title:
      return r'title';
    case Enum$MyBookHasFilter.readOn:
      return r'readOn';
    case Enum$MyBookHasFilter.favorite:
      return r'favorite';
    case Enum$MyBookHasFilter.$unknown:
      return r'$unknown';
  }
}

Enum$MyBookHasFilter fromJson$Enum$MyBookHasFilter(String value) {
  switch (value) {
    case r'bookNumber':
      return Enum$MyBookHasFilter.bookNumber;
    case r'title':
      return Enum$MyBookHasFilter.title;
    case r'readOn':
      return Enum$MyBookHasFilter.readOn;
    case r'favorite':
      return Enum$MyBookHasFilter.favorite;
    default:
      return Enum$MyBookHasFilter.$unknown;
  }
}

enum Enum$MyBookOrderable { bookNumber, title, readOn, $unknown }

String toJson$Enum$MyBookOrderable(Enum$MyBookOrderable e) {
  switch (e) {
    case Enum$MyBookOrderable.bookNumber:
      return r'bookNumber';
    case Enum$MyBookOrderable.title:
      return r'title';
    case Enum$MyBookOrderable.readOn:
      return r'readOn';
    case Enum$MyBookOrderable.$unknown:
      return r'$unknown';
  }
}

Enum$MyBookOrderable fromJson$Enum$MyBookOrderable(String value) {
  switch (value) {
    case r'bookNumber':
      return Enum$MyBookOrderable.bookNumber;
    case r'title':
      return Enum$MyBookOrderable.title;
    case r'readOn':
      return Enum$MyBookOrderable.readOn;
    default:
      return Enum$MyBookOrderable.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};

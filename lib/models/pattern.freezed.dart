// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pattern.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pattern _$PatternFromJson(Map<String, dynamic> json) {
  return _Pattern.fromJson(json);
}

/// @nodoc
mixin _$Pattern {
  String get id => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  List<String> get queryKeywords => throw _privateConstructorUsedError;
  List<String> get searchKeywords => throw _privateConstructorUsedError;
  String get downloadPath => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;
  String get dayIndicator => throw _privateConstructorUsedError;
  DateTime get fireTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatternCopyWith<Pattern> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatternCopyWith<$Res> {
  factory $PatternCopyWith(Pattern value, $Res Function(Pattern) then) =
      _$PatternCopyWithImpl<$Res, Pattern>;
  @useResult
  $Res call(
      {String id,
      String source,
      List<String> queryKeywords,
      List<String> searchKeywords,
      String downloadPath,
      String period,
      String dayIndicator,
      DateTime fireTime});
}

/// @nodoc
class _$PatternCopyWithImpl<$Res, $Val extends Pattern>
    implements $PatternCopyWith<$Res> {
  _$PatternCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? source = null,
    Object? queryKeywords = null,
    Object? searchKeywords = null,
    Object? downloadPath = null,
    Object? period = null,
    Object? dayIndicator = null,
    Object? fireTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      queryKeywords: null == queryKeywords
          ? _value.queryKeywords
          : queryKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      searchKeywords: null == searchKeywords
          ? _value.searchKeywords
          : searchKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      downloadPath: null == downloadPath
          ? _value.downloadPath
          : downloadPath // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      dayIndicator: null == dayIndicator
          ? _value.dayIndicator
          : dayIndicator // ignore: cast_nullable_to_non_nullable
              as String,
      fireTime: null == fireTime
          ? _value.fireTime
          : fireTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatternImplCopyWith<$Res> implements $PatternCopyWith<$Res> {
  factory _$$PatternImplCopyWith(
          _$PatternImpl value, $Res Function(_$PatternImpl) then) =
      __$$PatternImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String source,
      List<String> queryKeywords,
      List<String> searchKeywords,
      String downloadPath,
      String period,
      String dayIndicator,
      DateTime fireTime});
}

/// @nodoc
class __$$PatternImplCopyWithImpl<$Res>
    extends _$PatternCopyWithImpl<$Res, _$PatternImpl>
    implements _$$PatternImplCopyWith<$Res> {
  __$$PatternImplCopyWithImpl(
      _$PatternImpl _value, $Res Function(_$PatternImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? source = null,
    Object? queryKeywords = null,
    Object? searchKeywords = null,
    Object? downloadPath = null,
    Object? period = null,
    Object? dayIndicator = null,
    Object? fireTime = null,
  }) {
    return _then(_$PatternImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      queryKeywords: null == queryKeywords
          ? _value._queryKeywords
          : queryKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      searchKeywords: null == searchKeywords
          ? _value._searchKeywords
          : searchKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      downloadPath: null == downloadPath
          ? _value.downloadPath
          : downloadPath // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      dayIndicator: null == dayIndicator
          ? _value.dayIndicator
          : dayIndicator // ignore: cast_nullable_to_non_nullable
              as String,
      fireTime: null == fireTime
          ? _value.fireTime
          : fireTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatternImpl implements _Pattern {
  const _$PatternImpl(
      {required this.id,
      required this.source,
      required final List<String> queryKeywords,
      required final List<String> searchKeywords,
      required this.downloadPath,
      required this.period,
      required this.dayIndicator,
      required this.fireTime})
      : _queryKeywords = queryKeywords,
        _searchKeywords = searchKeywords;

  factory _$PatternImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatternImplFromJson(json);

  @override
  final String id;
  @override
  final String source;
  final List<String> _queryKeywords;
  @override
  List<String> get queryKeywords {
    if (_queryKeywords is EqualUnmodifiableListView) return _queryKeywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_queryKeywords);
  }

  final List<String> _searchKeywords;
  @override
  List<String> get searchKeywords {
    if (_searchKeywords is EqualUnmodifiableListView) return _searchKeywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchKeywords);
  }

  @override
  final String downloadPath;
  @override
  final String period;
  @override
  final String dayIndicator;
  @override
  final DateTime fireTime;

  @override
  String toString() {
    return 'Pattern(id: $id, source: $source, queryKeywords: $queryKeywords, searchKeywords: $searchKeywords, downloadPath: $downloadPath, period: $period, dayIndicator: $dayIndicator, fireTime: $fireTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatternImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.source, source) || other.source == source) &&
            const DeepCollectionEquality()
                .equals(other._queryKeywords, _queryKeywords) &&
            const DeepCollectionEquality()
                .equals(other._searchKeywords, _searchKeywords) &&
            (identical(other.downloadPath, downloadPath) ||
                other.downloadPath == downloadPath) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.dayIndicator, dayIndicator) ||
                other.dayIndicator == dayIndicator) &&
            (identical(other.fireTime, fireTime) ||
                other.fireTime == fireTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      source,
      const DeepCollectionEquality().hash(_queryKeywords),
      const DeepCollectionEquality().hash(_searchKeywords),
      downloadPath,
      period,
      dayIndicator,
      fireTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatternImplCopyWith<_$PatternImpl> get copyWith =>
      __$$PatternImplCopyWithImpl<_$PatternImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatternImplToJson(
      this,
    );
  }
}

abstract class _Pattern implements Pattern {
  const factory _Pattern(
      {required final String id,
      required final String source,
      required final List<String> queryKeywords,
      required final List<String> searchKeywords,
      required final String downloadPath,
      required final String period,
      required final String dayIndicator,
      required final DateTime fireTime}) = _$PatternImpl;

  factory _Pattern.fromJson(Map<String, dynamic> json) = _$PatternImpl.fromJson;

  @override
  String get id;
  @override
  String get source;
  @override
  List<String> get queryKeywords;
  @override
  List<String> get searchKeywords;
  @override
  String get downloadPath;
  @override
  String get period;
  @override
  String get dayIndicator;
  @override
  DateTime get fireTime;
  @override
  @JsonKey(ignore: true)
  _$$PatternImplCopyWith<_$PatternImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

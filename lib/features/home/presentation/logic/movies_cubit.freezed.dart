// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MoviesState<T> {
  RequestState get getPopularMoviesState => throw _privateConstructorUsedError;
  RequestState get getNowPlayingMoviesState =>
      throw _privateConstructorUsedError;
  RequestState get getTopRatedMoviesState => throw _privateConstructorUsedError;
  RequestState get getUpcomingMoviesState => throw _privateConstructorUsedError;
  RequestState get searchMoviesState => throw _privateConstructorUsedError;
  List<MovieEntity>? get popularMovies => throw _privateConstructorUsedError;
  List<MovieEntity>? get nowPlayingMovies => throw _privateConstructorUsedError;
  List<MovieEntity>? get topRatedMovies => throw _privateConstructorUsedError;
  List<MovieEntity>? get upcomingMovies => throw _privateConstructorUsedError;
  List<MovieEntity>? get searchedMovies =>
      throw _privateConstructorUsedError; //selected tab
  int get selectedTab => throw _privateConstructorUsedError;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoviesStateCopyWith<T, MoviesState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesStateCopyWith<T, $Res> {
  factory $MoviesStateCopyWith(
          MoviesState<T> value, $Res Function(MoviesState<T>) then) =
      _$MoviesStateCopyWithImpl<T, $Res, MoviesState<T>>;
  @useResult
  $Res call(
      {RequestState getPopularMoviesState,
      RequestState getNowPlayingMoviesState,
      RequestState getTopRatedMoviesState,
      RequestState getUpcomingMoviesState,
      RequestState searchMoviesState,
      List<MovieEntity>? popularMovies,
      List<MovieEntity>? nowPlayingMovies,
      List<MovieEntity>? topRatedMovies,
      List<MovieEntity>? upcomingMovies,
      List<MovieEntity>? searchedMovies,
      int selectedTab});
}

/// @nodoc
class _$MoviesStateCopyWithImpl<T, $Res, $Val extends MoviesState<T>>
    implements $MoviesStateCopyWith<T, $Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getPopularMoviesState = null,
    Object? getNowPlayingMoviesState = null,
    Object? getTopRatedMoviesState = null,
    Object? getUpcomingMoviesState = null,
    Object? searchMoviesState = null,
    Object? popularMovies = freezed,
    Object? nowPlayingMovies = freezed,
    Object? topRatedMovies = freezed,
    Object? upcomingMovies = freezed,
    Object? searchedMovies = freezed,
    Object? selectedTab = null,
  }) {
    return _then(_value.copyWith(
      getPopularMoviesState: null == getPopularMoviesState
          ? _value.getPopularMoviesState
          : getPopularMoviesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getNowPlayingMoviesState: null == getNowPlayingMoviesState
          ? _value.getNowPlayingMoviesState
          : getNowPlayingMoviesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getTopRatedMoviesState: null == getTopRatedMoviesState
          ? _value.getTopRatedMoviesState
          : getTopRatedMoviesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getUpcomingMoviesState: null == getUpcomingMoviesState
          ? _value.getUpcomingMoviesState
          : getUpcomingMoviesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      searchMoviesState: null == searchMoviesState
          ? _value.searchMoviesState
          : searchMoviesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      popularMovies: freezed == popularMovies
          ? _value.popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>?,
      nowPlayingMovies: freezed == nowPlayingMovies
          ? _value.nowPlayingMovies
          : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>?,
      topRatedMovies: freezed == topRatedMovies
          ? _value.topRatedMovies
          : topRatedMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>?,
      upcomingMovies: freezed == upcomingMovies
          ? _value.upcomingMovies
          : upcomingMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>?,
      searchedMovies: freezed == searchedMovies
          ? _value.searchedMovies
          : searchedMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>?,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res>
    implements $MoviesStateCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {RequestState getPopularMoviesState,
      RequestState getNowPlayingMoviesState,
      RequestState getTopRatedMoviesState,
      RequestState getUpcomingMoviesState,
      RequestState searchMoviesState,
      List<MovieEntity>? popularMovies,
      List<MovieEntity>? nowPlayingMovies,
      List<MovieEntity>? topRatedMovies,
      List<MovieEntity>? upcomingMovies,
      List<MovieEntity>? searchedMovies,
      int selectedTab});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$MoviesStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getPopularMoviesState = null,
    Object? getNowPlayingMoviesState = null,
    Object? getTopRatedMoviesState = null,
    Object? getUpcomingMoviesState = null,
    Object? searchMoviesState = null,
    Object? popularMovies = freezed,
    Object? nowPlayingMovies = freezed,
    Object? topRatedMovies = freezed,
    Object? upcomingMovies = freezed,
    Object? searchedMovies = freezed,
    Object? selectedTab = null,
  }) {
    return _then(_$InitialImpl<T>(
      getPopularMoviesState: null == getPopularMoviesState
          ? _value.getPopularMoviesState
          : getPopularMoviesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getNowPlayingMoviesState: null == getNowPlayingMoviesState
          ? _value.getNowPlayingMoviesState
          : getNowPlayingMoviesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getTopRatedMoviesState: null == getTopRatedMoviesState
          ? _value.getTopRatedMoviesState
          : getTopRatedMoviesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getUpcomingMoviesState: null == getUpcomingMoviesState
          ? _value.getUpcomingMoviesState
          : getUpcomingMoviesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      searchMoviesState: null == searchMoviesState
          ? _value.searchMoviesState
          : searchMoviesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      popularMovies: freezed == popularMovies
          ? _value._popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>?,
      nowPlayingMovies: freezed == nowPlayingMovies
          ? _value._nowPlayingMovies
          : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>?,
      topRatedMovies: freezed == topRatedMovies
          ? _value._topRatedMovies
          : topRatedMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>?,
      upcomingMovies: freezed == upcomingMovies
          ? _value._upcomingMovies
          : upcomingMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>?,
      searchedMovies: freezed == searchedMovies
          ? _value._searchedMovies
          : searchedMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>?,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl(
      {this.getPopularMoviesState = RequestState.initial,
      this.getNowPlayingMoviesState = RequestState.initial,
      this.getTopRatedMoviesState = RequestState.initial,
      this.getUpcomingMoviesState = RequestState.initial,
      this.searchMoviesState = RequestState.initial,
      final List<MovieEntity>? popularMovies,
      final List<MovieEntity>? nowPlayingMovies,
      final List<MovieEntity>? topRatedMovies,
      final List<MovieEntity>? upcomingMovies,
      final List<MovieEntity>? searchedMovies,
      this.selectedTab = 0})
      : _popularMovies = popularMovies,
        _nowPlayingMovies = nowPlayingMovies,
        _topRatedMovies = topRatedMovies,
        _upcomingMovies = upcomingMovies,
        _searchedMovies = searchedMovies;

  @override
  @JsonKey()
  final RequestState getPopularMoviesState;
  @override
  @JsonKey()
  final RequestState getNowPlayingMoviesState;
  @override
  @JsonKey()
  final RequestState getTopRatedMoviesState;
  @override
  @JsonKey()
  final RequestState getUpcomingMoviesState;
  @override
  @JsonKey()
  final RequestState searchMoviesState;
  final List<MovieEntity>? _popularMovies;
  @override
  List<MovieEntity>? get popularMovies {
    final value = _popularMovies;
    if (value == null) return null;
    if (_popularMovies is EqualUnmodifiableListView) return _popularMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MovieEntity>? _nowPlayingMovies;
  @override
  List<MovieEntity>? get nowPlayingMovies {
    final value = _nowPlayingMovies;
    if (value == null) return null;
    if (_nowPlayingMovies is EqualUnmodifiableListView)
      return _nowPlayingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MovieEntity>? _topRatedMovies;
  @override
  List<MovieEntity>? get topRatedMovies {
    final value = _topRatedMovies;
    if (value == null) return null;
    if (_topRatedMovies is EqualUnmodifiableListView) return _topRatedMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MovieEntity>? _upcomingMovies;
  @override
  List<MovieEntity>? get upcomingMovies {
    final value = _upcomingMovies;
    if (value == null) return null;
    if (_upcomingMovies is EqualUnmodifiableListView) return _upcomingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MovieEntity>? _searchedMovies;
  @override
  List<MovieEntity>? get searchedMovies {
    final value = _searchedMovies;
    if (value == null) return null;
    if (_searchedMovies is EqualUnmodifiableListView) return _searchedMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

//selected tab
  @override
  @JsonKey()
  final int selectedTab;

  @override
  String toString() {
    return 'MoviesState<$T>(getPopularMoviesState: $getPopularMoviesState, getNowPlayingMoviesState: $getNowPlayingMoviesState, getTopRatedMoviesState: $getTopRatedMoviesState, getUpcomingMoviesState: $getUpcomingMoviesState, searchMoviesState: $searchMoviesState, popularMovies: $popularMovies, nowPlayingMovies: $nowPlayingMovies, topRatedMovies: $topRatedMovies, upcomingMovies: $upcomingMovies, searchedMovies: $searchedMovies, selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl<T> &&
            (identical(other.getPopularMoviesState, getPopularMoviesState) ||
                other.getPopularMoviesState == getPopularMoviesState) &&
            (identical(
                    other.getNowPlayingMoviesState, getNowPlayingMoviesState) ||
                other.getNowPlayingMoviesState == getNowPlayingMoviesState) &&
            (identical(other.getTopRatedMoviesState, getTopRatedMoviesState) ||
                other.getTopRatedMoviesState == getTopRatedMoviesState) &&
            (identical(other.getUpcomingMoviesState, getUpcomingMoviesState) ||
                other.getUpcomingMoviesState == getUpcomingMoviesState) &&
            (identical(other.searchMoviesState, searchMoviesState) ||
                other.searchMoviesState == searchMoviesState) &&
            const DeepCollectionEquality()
                .equals(other._popularMovies, _popularMovies) &&
            const DeepCollectionEquality()
                .equals(other._nowPlayingMovies, _nowPlayingMovies) &&
            const DeepCollectionEquality()
                .equals(other._topRatedMovies, _topRatedMovies) &&
            const DeepCollectionEquality()
                .equals(other._upcomingMovies, _upcomingMovies) &&
            const DeepCollectionEquality()
                .equals(other._searchedMovies, _searchedMovies) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getPopularMoviesState,
      getNowPlayingMoviesState,
      getTopRatedMoviesState,
      getUpcomingMoviesState,
      searchMoviesState,
      const DeepCollectionEquality().hash(_popularMovies),
      const DeepCollectionEquality().hash(_nowPlayingMovies),
      const DeepCollectionEquality().hash(_topRatedMovies),
      const DeepCollectionEquality().hash(_upcomingMovies),
      const DeepCollectionEquality().hash(_searchedMovies),
      selectedTab);

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<T, _$InitialImpl<T>> get copyWith =>
      __$$InitialImplCopyWithImpl<T, _$InitialImpl<T>>(this, _$identity);
}

abstract class _Initial<T> implements MoviesState<T> {
  const factory _Initial(
      {final RequestState getPopularMoviesState,
      final RequestState getNowPlayingMoviesState,
      final RequestState getTopRatedMoviesState,
      final RequestState getUpcomingMoviesState,
      final RequestState searchMoviesState,
      final List<MovieEntity>? popularMovies,
      final List<MovieEntity>? nowPlayingMovies,
      final List<MovieEntity>? topRatedMovies,
      final List<MovieEntity>? upcomingMovies,
      final List<MovieEntity>? searchedMovies,
      final int selectedTab}) = _$InitialImpl<T>;

  @override
  RequestState get getPopularMoviesState;
  @override
  RequestState get getNowPlayingMoviesState;
  @override
  RequestState get getTopRatedMoviesState;
  @override
  RequestState get getUpcomingMoviesState;
  @override
  RequestState get searchMoviesState;
  @override
  List<MovieEntity>? get popularMovies;
  @override
  List<MovieEntity>? get nowPlayingMovies;
  @override
  List<MovieEntity>? get topRatedMovies;
  @override
  List<MovieEntity>? get upcomingMovies;
  @override
  List<MovieEntity>? get searchedMovies; //selected tab
  @override
  int get selectedTab;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<T, _$InitialImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubRepo _$GitHubRepoFromJson(Map<String, dynamic> json) {
  return _GitHubRepo.fromJson(json);
}

/// @nodoc
mixin _$GitHubRepo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Owner get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get starGazersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'forks_count')
  int get forksCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubRepoCopyWith<GitHubRepo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepoCopyWith<$Res> {
  factory $GitHubRepoCopyWith(
          GitHubRepo value, $Res Function(GitHubRepo) then) =
      _$GitHubRepoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      Owner owner,
      @JsonKey(name: 'html_url') String htmlUrl,
      String description,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'stargazers_count') int starGazersCount,
      @JsonKey(name: 'forks_count') int forksCount});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$GitHubRepoCopyWithImpl<$Res> implements $GitHubRepoCopyWith<$Res> {
  _$GitHubRepoCopyWithImpl(this._value, this._then);

  final GitHubRepo _value;
  // ignore: unused_field
  final $Res Function(GitHubRepo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? owner = freezed,
    Object? htmlUrl = freezed,
    Object? description = freezed,
    Object? updatedAt = freezed,
    Object? starGazersCount = freezed,
    Object? forksCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      starGazersCount: starGazersCount == freezed
          ? _value.starGazersCount
          : starGazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: forksCount == freezed
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$GitHubRepoCopyWith<$Res> implements $GitHubRepoCopyWith<$Res> {
  factory _$GitHubRepoCopyWith(
          _GitHubRepo value, $Res Function(_GitHubRepo) then) =
      __$GitHubRepoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      Owner owner,
      @JsonKey(name: 'html_url') String htmlUrl,
      String description,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'stargazers_count') int starGazersCount,
      @JsonKey(name: 'forks_count') int forksCount});

  @override
  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$GitHubRepoCopyWithImpl<$Res> extends _$GitHubRepoCopyWithImpl<$Res>
    implements _$GitHubRepoCopyWith<$Res> {
  __$GitHubRepoCopyWithImpl(
      _GitHubRepo _value, $Res Function(_GitHubRepo) _then)
      : super(_value, (v) => _then(v as _GitHubRepo));

  @override
  _GitHubRepo get _value => super._value as _GitHubRepo;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? owner = freezed,
    Object? htmlUrl = freezed,
    Object? description = freezed,
    Object? updatedAt = freezed,
    Object? starGazersCount = freezed,
    Object? forksCount = freezed,
  }) {
    return _then(_GitHubRepo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      starGazersCount: starGazersCount == freezed
          ? _value.starGazersCount
          : starGazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: forksCount == freezed
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitHubRepo implements _GitHubRepo {
  const _$_GitHubRepo(
      {required this.id,
      required this.name,
      required this.owner,
      @JsonKey(name: 'html_url') required this.htmlUrl,
      this.description = '',
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'stargazers_count') this.starGazersCount = 0,
      @JsonKey(name: 'forks_count') this.forksCount = 0});

  factory _$_GitHubRepo.fromJson(Map<String, dynamic> json) =>
      _$$_GitHubRepoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final Owner owner;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'stargazers_count')
  final int starGazersCount;
  @override
  @JsonKey(name: 'forks_count')
  final int forksCount;

  @override
  String toString() {
    return 'GitHubRepo(id: $id, name: $name, owner: $owner, htmlUrl: $htmlUrl, description: $description, updatedAt: $updatedAt, starGazersCount: $starGazersCount, forksCount: $forksCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GitHubRepo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.htmlUrl, htmlUrl) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.starGazersCount, starGazersCount) &&
            const DeepCollectionEquality()
                .equals(other.forksCount, forksCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(htmlUrl),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(starGazersCount),
      const DeepCollectionEquality().hash(forksCount));

  @JsonKey(ignore: true)
  @override
  _$GitHubRepoCopyWith<_GitHubRepo> get copyWith =>
      __$GitHubRepoCopyWithImpl<_GitHubRepo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitHubRepoToJson(this);
  }
}

abstract class _GitHubRepo implements GitHubRepo {
  const factory _GitHubRepo(
      {required final int id,
      required final String name,
      required final Owner owner,
      @JsonKey(name: 'html_url') required final String htmlUrl,
      final String description,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      @JsonKey(name: 'stargazers_count') final int starGazersCount,
      @JsonKey(name: 'forks_count') final int forksCount}) = _$_GitHubRepo;

  factory _GitHubRepo.fromJson(Map<String, dynamic> json) =
      _$_GitHubRepo.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  Owner get owner => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'stargazers_count')
  int get starGazersCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'forks_count')
  int get forksCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GitHubRepoCopyWith<_GitHubRepo> get copyWith =>
      throw _privateConstructorUsedError;
}

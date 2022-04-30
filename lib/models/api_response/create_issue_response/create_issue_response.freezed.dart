// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_issue_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateIssueResponse _$CreateIssueResponseFromJson(Map<String, dynamic> json) {
  return _CreateIssueResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateIssueResponse {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateIssueResponseCopyWith<CreateIssueResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateIssueResponseCopyWith<$Res> {
  factory $CreateIssueResponseCopyWith(
          CreateIssueResponse value, $Res Function(CreateIssueResponse) then) =
      _$CreateIssueResponseCopyWithImpl<$Res>;
  $Res call({int id, @JsonKey(name: 'html_url') String htmlUrl});
}

/// @nodoc
class _$CreateIssueResponseCopyWithImpl<$Res>
    implements $CreateIssueResponseCopyWith<$Res> {
  _$CreateIssueResponseCopyWithImpl(this._value, this._then);

  final CreateIssueResponse _value;
  // ignore: unused_field
  final $Res Function(CreateIssueResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? htmlUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CreateIssueResponseCopyWith<$Res>
    implements $CreateIssueResponseCopyWith<$Res> {
  factory _$CreateIssueResponseCopyWith(_CreateIssueResponse value,
          $Res Function(_CreateIssueResponse) then) =
      __$CreateIssueResponseCopyWithImpl<$Res>;
  @override
  $Res call({int id, @JsonKey(name: 'html_url') String htmlUrl});
}

/// @nodoc
class __$CreateIssueResponseCopyWithImpl<$Res>
    extends _$CreateIssueResponseCopyWithImpl<$Res>
    implements _$CreateIssueResponseCopyWith<$Res> {
  __$CreateIssueResponseCopyWithImpl(
      _CreateIssueResponse _value, $Res Function(_CreateIssueResponse) _then)
      : super(_value, (v) => _then(v as _CreateIssueResponse));

  @override
  _CreateIssueResponse get _value => super._value as _CreateIssueResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? htmlUrl = freezed,
  }) {
    return _then(_CreateIssueResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateIssueResponse implements _CreateIssueResponse {
  const _$_CreateIssueResponse(
      {required this.id, @JsonKey(name: 'html_url') required this.htmlUrl});

  factory _$_CreateIssueResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreateIssueResponseFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;

  @override
  String toString() {
    return 'CreateIssueResponse(id: $id, htmlUrl: $htmlUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateIssueResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.htmlUrl, htmlUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(htmlUrl));

  @JsonKey(ignore: true)
  @override
  _$CreateIssueResponseCopyWith<_CreateIssueResponse> get copyWith =>
      __$CreateIssueResponseCopyWithImpl<_CreateIssueResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateIssueResponseToJson(this);
  }
}

abstract class _CreateIssueResponse implements CreateIssueResponse {
  const factory _CreateIssueResponse(
          {required final int id,
          @JsonKey(name: 'html_url') required final String htmlUrl}) =
      _$_CreateIssueResponse;

  factory _CreateIssueResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateIssueResponse.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateIssueResponseCopyWith<_CreateIssueResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(defaultValue: '')
  String get avatar => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(defaultValue: '')
  String get firstName => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(defaultValue: '')
  String get lastName => throw _privateConstructorUsedError;
  @HiveField(4)
  String get login => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(defaultValue: '')
  String get email => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(defaultValue: '')
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @JsonKey(defaultValue: '') String avatar,
      @HiveField(2) @JsonKey(defaultValue: '') String firstName,
      @HiveField(3) @JsonKey(defaultValue: '') String lastName,
      @HiveField(4) String login,
      @HiveField(5) @JsonKey(defaultValue: '') String email,
      @HiveField(6) @JsonKey(defaultValue: '') String phone});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatar = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? login = null,
    Object? email = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @JsonKey(defaultValue: '') String avatar,
      @HiveField(2) @JsonKey(defaultValue: '') String firstName,
      @HiveField(3) @JsonKey(defaultValue: '') String lastName,
      @HiveField(4) String login,
      @HiveField(5) @JsonKey(defaultValue: '') String email,
      @HiveField(6) @JsonKey(defaultValue: '') String phone});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatar = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? login = null,
    Object? email = null,
    Object? phone = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @JsonKey(defaultValue: '') required this.avatar,
      @HiveField(2) @JsonKey(defaultValue: '') required this.firstName,
      @HiveField(3) @JsonKey(defaultValue: '') required this.lastName,
      @HiveField(4) required this.login,
      @HiveField(5) @JsonKey(defaultValue: '') required this.email,
      @HiveField(6) @JsonKey(defaultValue: '') required this.phone});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  @JsonKey(defaultValue: '')
  final String avatar;
  @override
  @HiveField(2)
  @JsonKey(defaultValue: '')
  final String firstName;
  @override
  @HiveField(3)
  @JsonKey(defaultValue: '')
  final String lastName;
  @override
  @HiveField(4)
  final String login;
  @override
  @HiveField(5)
  @JsonKey(defaultValue: '')
  final String email;
  @override
  @HiveField(6)
  @JsonKey(defaultValue: '')
  final String phone;

  @override
  String toString() {
    return 'UserModel(id: $id, avatar: $avatar, firstName: $firstName, lastName: $lastName, login: $login, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, avatar, firstName, lastName, login, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {@HiveField(0) required final String id,
      @HiveField(1) @JsonKey(defaultValue: '') required final String avatar,
      @HiveField(2) @JsonKey(defaultValue: '') required final String firstName,
      @HiveField(3) @JsonKey(defaultValue: '') required final String lastName,
      @HiveField(4) required final String login,
      @HiveField(5) @JsonKey(defaultValue: '') required final String email,
      @HiveField(6)
      @JsonKey(defaultValue: '')
      required final String phone}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  @JsonKey(defaultValue: '')
  String get avatar;
  @override
  @HiveField(2)
  @JsonKey(defaultValue: '')
  String get firstName;
  @override
  @HiveField(3)
  @JsonKey(defaultValue: '')
  String get lastName;
  @override
  @HiveField(4)
  String get login;
  @override
  @HiveField(5)
  @JsonKey(defaultValue: '')
  String get email;
  @override
  @HiveField(6)
  @JsonKey(defaultValue: '')
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

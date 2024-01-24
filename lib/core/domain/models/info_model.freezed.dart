// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InfoModel _$InfoModelFromJson(Map<String, dynamic> json) {
  return _InfoModel.fromJson(json);
}

/// @nodoc
mixin _$InfoModel {
  String get id => throw _privateConstructorUsedError;
  String get isActive => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "x")
  int get amount => throw _privateConstructorUsedError;
  int get additionalProfitSum => throw _privateConstructorUsedError;
  int get netProfitSum => throw _privateConstructorUsedError;
  int get plasticSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoModelCopyWith<InfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoModelCopyWith<$Res> {
  factory $InfoModelCopyWith(InfoModel value, $Res Function(InfoModel) then) =
      _$InfoModelCopyWithImpl<$Res, InfoModel>;
  @useResult
  $Res call(
      {String id,
      String isActive,
      int price,
      @JsonKey(name: "x") int amount,
      int additionalProfitSum,
      int netProfitSum,
      int plasticSum});
}

/// @nodoc
class _$InfoModelCopyWithImpl<$Res, $Val extends InfoModel>
    implements $InfoModelCopyWith<$Res> {
  _$InfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isActive = null,
    Object? price = null,
    Object? amount = null,
    Object? additionalProfitSum = null,
    Object? netProfitSum = null,
    Object? plasticSum = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      additionalProfitSum: null == additionalProfitSum
          ? _value.additionalProfitSum
          : additionalProfitSum // ignore: cast_nullable_to_non_nullable
              as int,
      netProfitSum: null == netProfitSum
          ? _value.netProfitSum
          : netProfitSum // ignore: cast_nullable_to_non_nullable
              as int,
      plasticSum: null == plasticSum
          ? _value.plasticSum
          : plasticSum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoModelImplCopyWith<$Res>
    implements $InfoModelCopyWith<$Res> {
  factory _$$InfoModelImplCopyWith(
          _$InfoModelImpl value, $Res Function(_$InfoModelImpl) then) =
      __$$InfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String isActive,
      int price,
      @JsonKey(name: "x") int amount,
      int additionalProfitSum,
      int netProfitSum,
      int plasticSum});
}

/// @nodoc
class __$$InfoModelImplCopyWithImpl<$Res>
    extends _$InfoModelCopyWithImpl<$Res, _$InfoModelImpl>
    implements _$$InfoModelImplCopyWith<$Res> {
  __$$InfoModelImplCopyWithImpl(
      _$InfoModelImpl _value, $Res Function(_$InfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isActive = null,
    Object? price = null,
    Object? amount = null,
    Object? additionalProfitSum = null,
    Object? netProfitSum = null,
    Object? plasticSum = null,
  }) {
    return _then(_$InfoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      additionalProfitSum: null == additionalProfitSum
          ? _value.additionalProfitSum
          : additionalProfitSum // ignore: cast_nullable_to_non_nullable
              as int,
      netProfitSum: null == netProfitSum
          ? _value.netProfitSum
          : netProfitSum // ignore: cast_nullable_to_non_nullable
              as int,
      plasticSum: null == plasticSum
          ? _value.plasticSum
          : plasticSum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoModelImpl implements _InfoModel {
  _$InfoModelImpl(
      {required this.id,
      required this.isActive,
      required this.price,
      @JsonKey(name: "x") required this.amount,
      required this.additionalProfitSum,
      required this.netProfitSum,
      required this.plasticSum});

  factory _$InfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoModelImplFromJson(json);

  @override
  final String id;
  @override
  final String isActive;
  @override
  final int price;
  @override
  @JsonKey(name: "x")
  final int amount;
  @override
  final int additionalProfitSum;
  @override
  final int netProfitSum;
  @override
  final int plasticSum;

  @override
  String toString() {
    return 'InfoModel(id: $id, isActive: $isActive, price: $price, amount: $amount, additionalProfitSum: $additionalProfitSum, netProfitSum: $netProfitSum, plasticSum: $plasticSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.additionalProfitSum, additionalProfitSum) ||
                other.additionalProfitSum == additionalProfitSum) &&
            (identical(other.netProfitSum, netProfitSum) ||
                other.netProfitSum == netProfitSum) &&
            (identical(other.plasticSum, plasticSum) ||
                other.plasticSum == plasticSum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, isActive, price, amount,
      additionalProfitSum, netProfitSum, plasticSum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoModelImplCopyWith<_$InfoModelImpl> get copyWith =>
      __$$InfoModelImplCopyWithImpl<_$InfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoModelImplToJson(
      this,
    );
  }
}

abstract class _InfoModel implements InfoModel {
  factory _InfoModel(
      {required final String id,
      required final String isActive,
      required final int price,
      @JsonKey(name: "x") required final int amount,
      required final int additionalProfitSum,
      required final int netProfitSum,
      required final int plasticSum}) = _$InfoModelImpl;

  factory _InfoModel.fromJson(Map<String, dynamic> json) =
      _$InfoModelImpl.fromJson;

  @override
  String get id;
  @override
  String get isActive;
  @override
  int get price;
  @override
  @JsonKey(name: "x")
  int get amount;
  @override
  int get additionalProfitSum;
  @override
  int get netProfitSum;
  @override
  int get plasticSum;
  @override
  @JsonKey(ignore: true)
  _$$InfoModelImplCopyWith<_$InfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

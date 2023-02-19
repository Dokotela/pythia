// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conditional_skip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConditionalSkip _$ConditionalSkipFromJson(Map<String, dynamic> json) {
  return _ConditionalSkip.fromJson(json);
}

/// @nodoc
mixin _$ConditionalSkip {
  SkipContext? get context => throw _privateConstructorUsedError;
  SetLogic? get setLogic => throw _privateConstructorUsedError;
  @JsonKey(name: 'set')
  List<VaxSet>? get set_ => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionalSkipCopyWith<ConditionalSkip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionalSkipCopyWith<$Res> {
  factory $ConditionalSkipCopyWith(
          ConditionalSkip value, $Res Function(ConditionalSkip) then) =
      _$ConditionalSkipCopyWithImpl<$Res, ConditionalSkip>;
  @useResult
  $Res call(
      {SkipContext? context,
      SetLogic? setLogic,
      @JsonKey(name: 'set') List<VaxSet>? set_});
}

/// @nodoc
class _$ConditionalSkipCopyWithImpl<$Res, $Val extends ConditionalSkip>
    implements $ConditionalSkipCopyWith<$Res> {
  _$ConditionalSkipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = freezed,
    Object? setLogic = freezed,
    Object? set_ = freezed,
  }) {
    return _then(_value.copyWith(
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as SkipContext?,
      setLogic: freezed == setLogic
          ? _value.setLogic
          : setLogic // ignore: cast_nullable_to_non_nullable
              as SetLogic?,
      set_: freezed == set_
          ? _value.set_
          : set_ // ignore: cast_nullable_to_non_nullable
              as List<VaxSet>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConditionalSkipCopyWith<$Res>
    implements $ConditionalSkipCopyWith<$Res> {
  factory _$$_ConditionalSkipCopyWith(
          _$_ConditionalSkip value, $Res Function(_$_ConditionalSkip) then) =
      __$$_ConditionalSkipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SkipContext? context,
      SetLogic? setLogic,
      @JsonKey(name: 'set') List<VaxSet>? set_});
}

/// @nodoc
class __$$_ConditionalSkipCopyWithImpl<$Res>
    extends _$ConditionalSkipCopyWithImpl<$Res, _$_ConditionalSkip>
    implements _$$_ConditionalSkipCopyWith<$Res> {
  __$$_ConditionalSkipCopyWithImpl(
      _$_ConditionalSkip _value, $Res Function(_$_ConditionalSkip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = freezed,
    Object? setLogic = freezed,
    Object? set_ = freezed,
  }) {
    return _then(_$_ConditionalSkip(
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as SkipContext?,
      setLogic: freezed == setLogic
          ? _value.setLogic
          : setLogic // ignore: cast_nullable_to_non_nullable
              as SetLogic?,
      set_: freezed == set_
          ? _value._set_
          : set_ // ignore: cast_nullable_to_non_nullable
              as List<VaxSet>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConditionalSkip extends _ConditionalSkip {
  _$_ConditionalSkip(
      {this.context,
      this.setLogic,
      @JsonKey(name: 'set') final List<VaxSet>? set_})
      : _set_ = set_,
        super._();

  factory _$_ConditionalSkip.fromJson(Map<String, dynamic> json) =>
      _$$_ConditionalSkipFromJson(json);

  @override
  final SkipContext? context;
  @override
  final SetLogic? setLogic;
  final List<VaxSet>? _set_;
  @override
  @JsonKey(name: 'set')
  List<VaxSet>? get set_ {
    final value = _set_;
    if (value == null) return null;
    if (_set_ is EqualUnmodifiableListView) return _set_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ConditionalSkip(context: $context, setLogic: $setLogic, set_: $set_)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConditionalSkip &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.setLogic, setLogic) ||
                other.setLogic == setLogic) &&
            const DeepCollectionEquality().equals(other._set_, _set_));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, context, setLogic,
      const DeepCollectionEquality().hash(_set_));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConditionalSkipCopyWith<_$_ConditionalSkip> get copyWith =>
      __$$_ConditionalSkipCopyWithImpl<_$_ConditionalSkip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConditionalSkipToJson(
      this,
    );
  }
}

abstract class _ConditionalSkip extends ConditionalSkip {
  factory _ConditionalSkip(
      {final SkipContext? context,
      final SetLogic? setLogic,
      @JsonKey(name: 'set') final List<VaxSet>? set_}) = _$_ConditionalSkip;
  _ConditionalSkip._() : super._();

  factory _ConditionalSkip.fromJson(Map<String, dynamic> json) =
      _$_ConditionalSkip.fromJson;

  @override
  SkipContext? get context;
  @override
  SetLogic? get setLogic;
  @override
  @JsonKey(name: 'set')
  List<VaxSet>? get set_;
  @override
  @JsonKey(ignore: true)
  _$$_ConditionalSkipCopyWith<_$_ConditionalSkip> get copyWith =>
      throw _privateConstructorUsedError;
}

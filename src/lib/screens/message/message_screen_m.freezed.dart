// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_screen_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageScreenStateTearOff {
  const _$MessageScreenStateTearOff();

  Initializing initializing() {
    return const Initializing();
  }

  Initialized initialized({required String msg}) {
    return Initialized(
      msg: msg,
    );
  }
}

/// @nodoc
const $MessageScreenState = _$MessageScreenStateTearOff();

/// @nodoc
mixin _$MessageScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function(String msg) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function(String msg)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function(String msg)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initializing value) initializing,
    required TResult Function(Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initializing value)? initializing,
    TResult Function(Initialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initializing value)? initializing,
    TResult Function(Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageScreenStateCopyWith<$Res> {
  factory $MessageScreenStateCopyWith(
          MessageScreenState value, $Res Function(MessageScreenState) then) =
      _$MessageScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageScreenStateCopyWithImpl<$Res>
    implements $MessageScreenStateCopyWith<$Res> {
  _$MessageScreenStateCopyWithImpl(this._value, this._then);

  final MessageScreenState _value;
  // ignore: unused_field
  final $Res Function(MessageScreenState) _then;
}

/// @nodoc
abstract class $InitializingCopyWith<$Res> {
  factory $InitializingCopyWith(
          Initializing value, $Res Function(Initializing) then) =
      _$InitializingCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializingCopyWithImpl<$Res>
    extends _$MessageScreenStateCopyWithImpl<$Res>
    implements $InitializingCopyWith<$Res> {
  _$InitializingCopyWithImpl(
      Initializing _value, $Res Function(Initializing) _then)
      : super(_value, (v) => _then(v as Initializing));

  @override
  Initializing get _value => super._value as Initializing;
}

/// @nodoc

class _$Initializing implements Initializing {
  const _$Initializing();

  @override
  String toString() {
    return 'MessageScreenState.initializing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initializing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function(String msg) initialized,
  }) {
    return initializing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function(String msg)? initialized,
  }) {
    return initializing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function(String msg)? initialized,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initializing value) initializing,
    required TResult Function(Initialized value) initialized,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initializing value)? initializing,
    TResult Function(Initialized value)? initialized,
  }) {
    return initializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initializing value)? initializing,
    TResult Function(Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class Initializing implements MessageScreenState {
  const factory Initializing() = _$Initializing;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$MessageScreenStateCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(Initialized(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'MessageScreenState.initialized(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialized &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function(String msg) initialized,
  }) {
    return initialized(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function(String msg)? initialized,
  }) {
    return initialized?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function(String msg)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initializing value) initializing,
    required TResult Function(Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initializing value)? initializing,
    TResult Function(Initialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initializing value)? initializing,
    TResult Function(Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements MessageScreenState {
  const factory Initialized({required String msg}) = _$Initialized;

  String get msg;
  @JsonKey(ignore: true)
  $InitializedCopyWith<Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

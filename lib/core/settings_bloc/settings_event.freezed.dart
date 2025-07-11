// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SettingsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingsEvent()';
  }
}

/// @nodoc
class $SettingsEventCopyWith<$Res> {
  $SettingsEventCopyWith(SettingsEvent _, $Res Function(SettingsEvent) __);
}

/// Adds pattern-matching-related methods to [SettingsEvent].
extension SettingsEventPatterns on SettingsEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(LocaleChanged value)? localeChanged,
    TResult Function(ThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initialized() when initialized != null:
        return initialized(_that);
      case LocaleChanged() when localeChanged != null:
        return localeChanged(_that);
      case ThemeChanged() when themeChanged != null:
        return themeChanged(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(LocaleChanged value) localeChanged,
    required TResult Function(ThemeChanged value) themeChanged,
  }) {
    final _that = this;
    switch (_that) {
      case Initialized():
        return initialized(_that);
      case LocaleChanged():
        return localeChanged(_that);
      case ThemeChanged():
        return themeChanged(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(LocaleChanged value)? localeChanged,
    TResult? Function(ThemeChanged value)? themeChanged,
  }) {
    final _that = this;
    switch (_that) {
      case Initialized() when initialized != null:
        return initialized(_that);
      case LocaleChanged() when localeChanged != null:
        return localeChanged(_that);
      case ThemeChanged() when themeChanged != null:
        return themeChanged(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(ThemeMode themeMode)? themeChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initialized() when initialized != null:
        return initialized();
      case LocaleChanged() when localeChanged != null:
        return localeChanged(_that.locale);
      case ThemeChanged() when themeChanged != null:
        return themeChanged(_that.themeMode);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(ThemeMode themeMode) themeChanged,
  }) {
    final _that = this;
    switch (_that) {
      case Initialized():
        return initialized();
      case LocaleChanged():
        return localeChanged(_that.locale);
      case ThemeChanged():
        return themeChanged(_that.themeMode);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function(ThemeMode themeMode)? themeChanged,
  }) {
    final _that = this;
    switch (_that) {
      case Initialized() when initialized != null:
        return initialized();
      case LocaleChanged() when localeChanged != null:
        return localeChanged(_that.locale);
      case ThemeChanged() when themeChanged != null:
        return themeChanged(_that.themeMode);
      case _:
        return null;
    }
  }
}

/// @nodoc

class Initialized implements SettingsEvent {
  const Initialized();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingsEvent.initialized()';
  }
}

/// @nodoc

class LocaleChanged implements SettingsEvent {
  const LocaleChanged(this.locale);

  final Locale locale;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocaleChangedCopyWith<LocaleChanged> get copyWith =>
      _$LocaleChangedCopyWithImpl<LocaleChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocaleChanged &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @override
  String toString() {
    return 'SettingsEvent.localeChanged(locale: $locale)';
  }
}

/// @nodoc
abstract mixin class $LocaleChangedCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory $LocaleChangedCopyWith(
          LocaleChanged value, $Res Function(LocaleChanged) _then) =
      _$LocaleChangedCopyWithImpl;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class _$LocaleChangedCopyWithImpl<$Res>
    implements $LocaleChangedCopyWith<$Res> {
  _$LocaleChangedCopyWithImpl(this._self, this._then);

  final LocaleChanged _self;
  final $Res Function(LocaleChanged) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? locale = null,
  }) {
    return _then(LocaleChanged(
      null == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class ThemeChanged implements SettingsEvent {
  const ThemeChanged(this.themeMode);

  final ThemeMode themeMode;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThemeChangedCopyWith<ThemeChanged> get copyWith =>
      _$ThemeChangedCopyWithImpl<ThemeChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeChanged &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @override
  String toString() {
    return 'SettingsEvent.themeChanged(themeMode: $themeMode)';
  }
}

/// @nodoc
abstract mixin class $ThemeChangedCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory $ThemeChangedCopyWith(
          ThemeChanged value, $Res Function(ThemeChanged) _then) =
      _$ThemeChangedCopyWithImpl;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class _$ThemeChangedCopyWithImpl<$Res> implements $ThemeChangedCopyWith<$Res> {
  _$ThemeChangedCopyWithImpl(this._self, this._then);

  final ThemeChanged _self;
  final $Res Function(ThemeChanged) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(ThemeChanged(
      null == themeMode
          ? _self.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

// dart format on

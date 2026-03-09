// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charging_station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Connection {

@JsonKey(name: 'ConnectionType') ConnectionType? get connectionType;@JsonKey(name: 'StatusType') StatusType? get statusType;@JsonKey(name: 'PowerKW') double? get powerKW;@JsonKey(name: 'Voltage') int? get voltage;@JsonKey(name: 'Amps') int? get amps;
/// Create a copy of Connection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectionCopyWith<Connection> get copyWith => _$ConnectionCopyWithImpl<Connection>(this as Connection, _$identity);

  /// Serializes this Connection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Connection&&(identical(other.connectionType, connectionType) || other.connectionType == connectionType)&&(identical(other.statusType, statusType) || other.statusType == statusType)&&(identical(other.powerKW, powerKW) || other.powerKW == powerKW)&&(identical(other.voltage, voltage) || other.voltage == voltage)&&(identical(other.amps, amps) || other.amps == amps));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,connectionType,statusType,powerKW,voltage,amps);

@override
String toString() {
  return 'Connection(connectionType: $connectionType, statusType: $statusType, powerKW: $powerKW, voltage: $voltage, amps: $amps)';
}


}

/// @nodoc
abstract mixin class $ConnectionCopyWith<$Res>  {
  factory $ConnectionCopyWith(Connection value, $Res Function(Connection) _then) = _$ConnectionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ConnectionType') ConnectionType? connectionType,@JsonKey(name: 'StatusType') StatusType? statusType,@JsonKey(name: 'PowerKW') double? powerKW,@JsonKey(name: 'Voltage') int? voltage,@JsonKey(name: 'Amps') int? amps
});


$ConnectionTypeCopyWith<$Res>? get connectionType;$StatusTypeCopyWith<$Res>? get statusType;

}
/// @nodoc
class _$ConnectionCopyWithImpl<$Res>
    implements $ConnectionCopyWith<$Res> {
  _$ConnectionCopyWithImpl(this._self, this._then);

  final Connection _self;
  final $Res Function(Connection) _then;

/// Create a copy of Connection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? connectionType = freezed,Object? statusType = freezed,Object? powerKW = freezed,Object? voltage = freezed,Object? amps = freezed,}) {
  return _then(_self.copyWith(
connectionType: freezed == connectionType ? _self.connectionType : connectionType // ignore: cast_nullable_to_non_nullable
as ConnectionType?,statusType: freezed == statusType ? _self.statusType : statusType // ignore: cast_nullable_to_non_nullable
as StatusType?,powerKW: freezed == powerKW ? _self.powerKW : powerKW // ignore: cast_nullable_to_non_nullable
as double?,voltage: freezed == voltage ? _self.voltage : voltage // ignore: cast_nullable_to_non_nullable
as int?,amps: freezed == amps ? _self.amps : amps // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of Connection
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectionTypeCopyWith<$Res>? get connectionType {
    if (_self.connectionType == null) {
    return null;
  }

  return $ConnectionTypeCopyWith<$Res>(_self.connectionType!, (value) {
    return _then(_self.copyWith(connectionType: value));
  });
}/// Create a copy of Connection
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusTypeCopyWith<$Res>? get statusType {
    if (_self.statusType == null) {
    return null;
  }

  return $StatusTypeCopyWith<$Res>(_self.statusType!, (value) {
    return _then(_self.copyWith(statusType: value));
  });
}
}


/// Adds pattern-matching-related methods to [Connection].
extension ConnectionPatterns on Connection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Connection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Connection() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Connection value)  $default,){
final _that = this;
switch (_that) {
case _Connection():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Connection value)?  $default,){
final _that = this;
switch (_that) {
case _Connection() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ConnectionType')  ConnectionType? connectionType, @JsonKey(name: 'StatusType')  StatusType? statusType, @JsonKey(name: 'PowerKW')  double? powerKW, @JsonKey(name: 'Voltage')  int? voltage, @JsonKey(name: 'Amps')  int? amps)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Connection() when $default != null:
return $default(_that.connectionType,_that.statusType,_that.powerKW,_that.voltage,_that.amps);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ConnectionType')  ConnectionType? connectionType, @JsonKey(name: 'StatusType')  StatusType? statusType, @JsonKey(name: 'PowerKW')  double? powerKW, @JsonKey(name: 'Voltage')  int? voltage, @JsonKey(name: 'Amps')  int? amps)  $default,) {final _that = this;
switch (_that) {
case _Connection():
return $default(_that.connectionType,_that.statusType,_that.powerKW,_that.voltage,_that.amps);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ConnectionType')  ConnectionType? connectionType, @JsonKey(name: 'StatusType')  StatusType? statusType, @JsonKey(name: 'PowerKW')  double? powerKW, @JsonKey(name: 'Voltage')  int? voltage, @JsonKey(name: 'Amps')  int? amps)?  $default,) {final _that = this;
switch (_that) {
case _Connection() when $default != null:
return $default(_that.connectionType,_that.statusType,_that.powerKW,_that.voltage,_that.amps);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Connection implements Connection {
  const _Connection({@JsonKey(name: 'ConnectionType') this.connectionType, @JsonKey(name: 'StatusType') this.statusType, @JsonKey(name: 'PowerKW') this.powerKW, @JsonKey(name: 'Voltage') this.voltage, @JsonKey(name: 'Amps') this.amps});
  factory _Connection.fromJson(Map<String, dynamic> json) => _$ConnectionFromJson(json);

@override@JsonKey(name: 'ConnectionType') final  ConnectionType? connectionType;
@override@JsonKey(name: 'StatusType') final  StatusType? statusType;
@override@JsonKey(name: 'PowerKW') final  double? powerKW;
@override@JsonKey(name: 'Voltage') final  int? voltage;
@override@JsonKey(name: 'Amps') final  int? amps;

/// Create a copy of Connection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectionCopyWith<_Connection> get copyWith => __$ConnectionCopyWithImpl<_Connection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConnectionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Connection&&(identical(other.connectionType, connectionType) || other.connectionType == connectionType)&&(identical(other.statusType, statusType) || other.statusType == statusType)&&(identical(other.powerKW, powerKW) || other.powerKW == powerKW)&&(identical(other.voltage, voltage) || other.voltage == voltage)&&(identical(other.amps, amps) || other.amps == amps));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,connectionType,statusType,powerKW,voltage,amps);

@override
String toString() {
  return 'Connection(connectionType: $connectionType, statusType: $statusType, powerKW: $powerKW, voltage: $voltage, amps: $amps)';
}


}

/// @nodoc
abstract mixin class _$ConnectionCopyWith<$Res> implements $ConnectionCopyWith<$Res> {
  factory _$ConnectionCopyWith(_Connection value, $Res Function(_Connection) _then) = __$ConnectionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ConnectionType') ConnectionType? connectionType,@JsonKey(name: 'StatusType') StatusType? statusType,@JsonKey(name: 'PowerKW') double? powerKW,@JsonKey(name: 'Voltage') int? voltage,@JsonKey(name: 'Amps') int? amps
});


@override $ConnectionTypeCopyWith<$Res>? get connectionType;@override $StatusTypeCopyWith<$Res>? get statusType;

}
/// @nodoc
class __$ConnectionCopyWithImpl<$Res>
    implements _$ConnectionCopyWith<$Res> {
  __$ConnectionCopyWithImpl(this._self, this._then);

  final _Connection _self;
  final $Res Function(_Connection) _then;

/// Create a copy of Connection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? connectionType = freezed,Object? statusType = freezed,Object? powerKW = freezed,Object? voltage = freezed,Object? amps = freezed,}) {
  return _then(_Connection(
connectionType: freezed == connectionType ? _self.connectionType : connectionType // ignore: cast_nullable_to_non_nullable
as ConnectionType?,statusType: freezed == statusType ? _self.statusType : statusType // ignore: cast_nullable_to_non_nullable
as StatusType?,powerKW: freezed == powerKW ? _self.powerKW : powerKW // ignore: cast_nullable_to_non_nullable
as double?,voltage: freezed == voltage ? _self.voltage : voltage // ignore: cast_nullable_to_non_nullable
as int?,amps: freezed == amps ? _self.amps : amps // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of Connection
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectionTypeCopyWith<$Res>? get connectionType {
    if (_self.connectionType == null) {
    return null;
  }

  return $ConnectionTypeCopyWith<$Res>(_self.connectionType!, (value) {
    return _then(_self.copyWith(connectionType: value));
  });
}/// Create a copy of Connection
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusTypeCopyWith<$Res>? get statusType {
    if (_self.statusType == null) {
    return null;
  }

  return $StatusTypeCopyWith<$Res>(_self.statusType!, (value) {
    return _then(_self.copyWith(statusType: value));
  });
}
}


/// @nodoc
mixin _$ConnectionType {

@JsonKey(name: 'ID') int? get id;@JsonKey(name: 'Title') String? get title;
/// Create a copy of ConnectionType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectionTypeCopyWith<ConnectionType> get copyWith => _$ConnectionTypeCopyWithImpl<ConnectionType>(this as ConnectionType, _$identity);

  /// Serializes this ConnectionType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionType&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'ConnectionType(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $ConnectionTypeCopyWith<$Res>  {
  factory $ConnectionTypeCopyWith(ConnectionType value, $Res Function(ConnectionType) _then) = _$ConnectionTypeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ID') int? id,@JsonKey(name: 'Title') String? title
});




}
/// @nodoc
class _$ConnectionTypeCopyWithImpl<$Res>
    implements $ConnectionTypeCopyWith<$Res> {
  _$ConnectionTypeCopyWithImpl(this._self, this._then);

  final ConnectionType _self;
  final $Res Function(ConnectionType) _then;

/// Create a copy of ConnectionType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConnectionType].
extension ConnectionTypePatterns on ConnectionType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectionType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectionType() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectionType value)  $default,){
final _that = this;
switch (_that) {
case _ConnectionType():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectionType value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectionType() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID')  int? id, @JsonKey(name: 'Title')  String? title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectionType() when $default != null:
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID')  int? id, @JsonKey(name: 'Title')  String? title)  $default,) {final _that = this;
switch (_that) {
case _ConnectionType():
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ID')  int? id, @JsonKey(name: 'Title')  String? title)?  $default,) {final _that = this;
switch (_that) {
case _ConnectionType() when $default != null:
return $default(_that.id,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConnectionType implements ConnectionType {
  const _ConnectionType({@JsonKey(name: 'ID') this.id, @JsonKey(name: 'Title') this.title});
  factory _ConnectionType.fromJson(Map<String, dynamic> json) => _$ConnectionTypeFromJson(json);

@override@JsonKey(name: 'ID') final  int? id;
@override@JsonKey(name: 'Title') final  String? title;

/// Create a copy of ConnectionType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectionTypeCopyWith<_ConnectionType> get copyWith => __$ConnectionTypeCopyWithImpl<_ConnectionType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConnectionTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectionType&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'ConnectionType(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$ConnectionTypeCopyWith<$Res> implements $ConnectionTypeCopyWith<$Res> {
  factory _$ConnectionTypeCopyWith(_ConnectionType value, $Res Function(_ConnectionType) _then) = __$ConnectionTypeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ID') int? id,@JsonKey(name: 'Title') String? title
});




}
/// @nodoc
class __$ConnectionTypeCopyWithImpl<$Res>
    implements _$ConnectionTypeCopyWith<$Res> {
  __$ConnectionTypeCopyWithImpl(this._self, this._then);

  final _ConnectionType _self;
  final $Res Function(_ConnectionType) _then;

/// Create a copy of ConnectionType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_ConnectionType(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StatusType {

@JsonKey(name: 'ID') int? get id;@JsonKey(name: 'Title') String? get title;@JsonKey(name: 'IsOperational') bool? get isOperational;
/// Create a copy of StatusType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusTypeCopyWith<StatusType> get copyWith => _$StatusTypeCopyWithImpl<StatusType>(this as StatusType, _$identity);

  /// Serializes this StatusType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusType&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isOperational, isOperational) || other.isOperational == isOperational));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,isOperational);

@override
String toString() {
  return 'StatusType(id: $id, title: $title, isOperational: $isOperational)';
}


}

/// @nodoc
abstract mixin class $StatusTypeCopyWith<$Res>  {
  factory $StatusTypeCopyWith(StatusType value, $Res Function(StatusType) _then) = _$StatusTypeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ID') int? id,@JsonKey(name: 'Title') String? title,@JsonKey(name: 'IsOperational') bool? isOperational
});




}
/// @nodoc
class _$StatusTypeCopyWithImpl<$Res>
    implements $StatusTypeCopyWith<$Res> {
  _$StatusTypeCopyWithImpl(this._self, this._then);

  final StatusType _self;
  final $Res Function(StatusType) _then;

/// Create a copy of StatusType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? isOperational = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,isOperational: freezed == isOperational ? _self.isOperational : isOperational // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [StatusType].
extension StatusTypePatterns on StatusType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatusType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatusType() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatusType value)  $default,){
final _that = this;
switch (_that) {
case _StatusType():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatusType value)?  $default,){
final _that = this;
switch (_that) {
case _StatusType() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID')  int? id, @JsonKey(name: 'Title')  String? title, @JsonKey(name: 'IsOperational')  bool? isOperational)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatusType() when $default != null:
return $default(_that.id,_that.title,_that.isOperational);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID')  int? id, @JsonKey(name: 'Title')  String? title, @JsonKey(name: 'IsOperational')  bool? isOperational)  $default,) {final _that = this;
switch (_that) {
case _StatusType():
return $default(_that.id,_that.title,_that.isOperational);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ID')  int? id, @JsonKey(name: 'Title')  String? title, @JsonKey(name: 'IsOperational')  bool? isOperational)?  $default,) {final _that = this;
switch (_that) {
case _StatusType() when $default != null:
return $default(_that.id,_that.title,_that.isOperational);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatusType implements StatusType {
  const _StatusType({@JsonKey(name: 'ID') this.id, @JsonKey(name: 'Title') this.title, @JsonKey(name: 'IsOperational') this.isOperational});
  factory _StatusType.fromJson(Map<String, dynamic> json) => _$StatusTypeFromJson(json);

@override@JsonKey(name: 'ID') final  int? id;
@override@JsonKey(name: 'Title') final  String? title;
@override@JsonKey(name: 'IsOperational') final  bool? isOperational;

/// Create a copy of StatusType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusTypeCopyWith<_StatusType> get copyWith => __$StatusTypeCopyWithImpl<_StatusType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatusTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatusType&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isOperational, isOperational) || other.isOperational == isOperational));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,isOperational);

@override
String toString() {
  return 'StatusType(id: $id, title: $title, isOperational: $isOperational)';
}


}

/// @nodoc
abstract mixin class _$StatusTypeCopyWith<$Res> implements $StatusTypeCopyWith<$Res> {
  factory _$StatusTypeCopyWith(_StatusType value, $Res Function(_StatusType) _then) = __$StatusTypeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ID') int? id,@JsonKey(name: 'Title') String? title,@JsonKey(name: 'IsOperational') bool? isOperational
});




}
/// @nodoc
class __$StatusTypeCopyWithImpl<$Res>
    implements _$StatusTypeCopyWith<$Res> {
  __$StatusTypeCopyWithImpl(this._self, this._then);

  final _StatusType _self;
  final $Res Function(_StatusType) _then;

/// Create a copy of StatusType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? isOperational = freezed,}) {
  return _then(_StatusType(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,isOperational: freezed == isOperational ? _self.isOperational : isOperational // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$AddressInfo {

@JsonKey(name: 'Title') String get title;@JsonKey(name: 'AddressLine1') String? get addressLine1;@JsonKey(name: 'Town') String? get town;@JsonKey(name: 'StateOrProvince') String? get stateOrProvince;@JsonKey(name: 'Postcode') String? get postcode;@JsonKey(name: 'Latitude') double get latitude;@JsonKey(name: 'Longitude') double get longitude;@JsonKey(name: 'Distance') double? get distance;@JsonKey(name: 'ContactTelephone1') String? get contactTelephone;@JsonKey(name: 'AccessComments') String? get accessComments;
/// Create a copy of AddressInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressInfoCopyWith<AddressInfo> get copyWith => _$AddressInfoCopyWithImpl<AddressInfo>(this as AddressInfo, _$identity);

  /// Serializes this AddressInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressInfo&&(identical(other.title, title) || other.title == title)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.town, town) || other.town == town)&&(identical(other.stateOrProvince, stateOrProvince) || other.stateOrProvince == stateOrProvince)&&(identical(other.postcode, postcode) || other.postcode == postcode)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.contactTelephone, contactTelephone) || other.contactTelephone == contactTelephone)&&(identical(other.accessComments, accessComments) || other.accessComments == accessComments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,addressLine1,town,stateOrProvince,postcode,latitude,longitude,distance,contactTelephone,accessComments);

@override
String toString() {
  return 'AddressInfo(title: $title, addressLine1: $addressLine1, town: $town, stateOrProvince: $stateOrProvince, postcode: $postcode, latitude: $latitude, longitude: $longitude, distance: $distance, contactTelephone: $contactTelephone, accessComments: $accessComments)';
}


}

/// @nodoc
abstract mixin class $AddressInfoCopyWith<$Res>  {
  factory $AddressInfoCopyWith(AddressInfo value, $Res Function(AddressInfo) _then) = _$AddressInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Title') String title,@JsonKey(name: 'AddressLine1') String? addressLine1,@JsonKey(name: 'Town') String? town,@JsonKey(name: 'StateOrProvince') String? stateOrProvince,@JsonKey(name: 'Postcode') String? postcode,@JsonKey(name: 'Latitude') double latitude,@JsonKey(name: 'Longitude') double longitude,@JsonKey(name: 'Distance') double? distance,@JsonKey(name: 'ContactTelephone1') String? contactTelephone,@JsonKey(name: 'AccessComments') String? accessComments
});




}
/// @nodoc
class _$AddressInfoCopyWithImpl<$Res>
    implements $AddressInfoCopyWith<$Res> {
  _$AddressInfoCopyWithImpl(this._self, this._then);

  final AddressInfo _self;
  final $Res Function(AddressInfo) _then;

/// Create a copy of AddressInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? addressLine1 = freezed,Object? town = freezed,Object? stateOrProvince = freezed,Object? postcode = freezed,Object? latitude = null,Object? longitude = null,Object? distance = freezed,Object? contactTelephone = freezed,Object? accessComments = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,addressLine1: freezed == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String?,town: freezed == town ? _self.town : town // ignore: cast_nullable_to_non_nullable
as String?,stateOrProvince: freezed == stateOrProvince ? _self.stateOrProvince : stateOrProvince // ignore: cast_nullable_to_non_nullable
as String?,postcode: freezed == postcode ? _self.postcode : postcode // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,contactTelephone: freezed == contactTelephone ? _self.contactTelephone : contactTelephone // ignore: cast_nullable_to_non_nullable
as String?,accessComments: freezed == accessComments ? _self.accessComments : accessComments // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressInfo].
extension AddressInfoPatterns on AddressInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressInfo() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressInfo value)  $default,){
final _that = this;
switch (_that) {
case _AddressInfo():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressInfo value)?  $default,){
final _that = this;
switch (_that) {
case _AddressInfo() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Title')  String title, @JsonKey(name: 'AddressLine1')  String? addressLine1, @JsonKey(name: 'Town')  String? town, @JsonKey(name: 'StateOrProvince')  String? stateOrProvince, @JsonKey(name: 'Postcode')  String? postcode, @JsonKey(name: 'Latitude')  double latitude, @JsonKey(name: 'Longitude')  double longitude, @JsonKey(name: 'Distance')  double? distance, @JsonKey(name: 'ContactTelephone1')  String? contactTelephone, @JsonKey(name: 'AccessComments')  String? accessComments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressInfo() when $default != null:
return $default(_that.title,_that.addressLine1,_that.town,_that.stateOrProvince,_that.postcode,_that.latitude,_that.longitude,_that.distance,_that.contactTelephone,_that.accessComments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Title')  String title, @JsonKey(name: 'AddressLine1')  String? addressLine1, @JsonKey(name: 'Town')  String? town, @JsonKey(name: 'StateOrProvince')  String? stateOrProvince, @JsonKey(name: 'Postcode')  String? postcode, @JsonKey(name: 'Latitude')  double latitude, @JsonKey(name: 'Longitude')  double longitude, @JsonKey(name: 'Distance')  double? distance, @JsonKey(name: 'ContactTelephone1')  String? contactTelephone, @JsonKey(name: 'AccessComments')  String? accessComments)  $default,) {final _that = this;
switch (_that) {
case _AddressInfo():
return $default(_that.title,_that.addressLine1,_that.town,_that.stateOrProvince,_that.postcode,_that.latitude,_that.longitude,_that.distance,_that.contactTelephone,_that.accessComments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Title')  String title, @JsonKey(name: 'AddressLine1')  String? addressLine1, @JsonKey(name: 'Town')  String? town, @JsonKey(name: 'StateOrProvince')  String? stateOrProvince, @JsonKey(name: 'Postcode')  String? postcode, @JsonKey(name: 'Latitude')  double latitude, @JsonKey(name: 'Longitude')  double longitude, @JsonKey(name: 'Distance')  double? distance, @JsonKey(name: 'ContactTelephone1')  String? contactTelephone, @JsonKey(name: 'AccessComments')  String? accessComments)?  $default,) {final _that = this;
switch (_that) {
case _AddressInfo() when $default != null:
return $default(_that.title,_that.addressLine1,_that.town,_that.stateOrProvince,_that.postcode,_that.latitude,_that.longitude,_that.distance,_that.contactTelephone,_that.accessComments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressInfo implements AddressInfo {
  const _AddressInfo({@JsonKey(name: 'Title') required this.title, @JsonKey(name: 'AddressLine1') this.addressLine1, @JsonKey(name: 'Town') this.town, @JsonKey(name: 'StateOrProvince') this.stateOrProvince, @JsonKey(name: 'Postcode') this.postcode, @JsonKey(name: 'Latitude') required this.latitude, @JsonKey(name: 'Longitude') required this.longitude, @JsonKey(name: 'Distance') this.distance, @JsonKey(name: 'ContactTelephone1') this.contactTelephone, @JsonKey(name: 'AccessComments') this.accessComments});
  factory _AddressInfo.fromJson(Map<String, dynamic> json) => _$AddressInfoFromJson(json);

@override@JsonKey(name: 'Title') final  String title;
@override@JsonKey(name: 'AddressLine1') final  String? addressLine1;
@override@JsonKey(name: 'Town') final  String? town;
@override@JsonKey(name: 'StateOrProvince') final  String? stateOrProvince;
@override@JsonKey(name: 'Postcode') final  String? postcode;
@override@JsonKey(name: 'Latitude') final  double latitude;
@override@JsonKey(name: 'Longitude') final  double longitude;
@override@JsonKey(name: 'Distance') final  double? distance;
@override@JsonKey(name: 'ContactTelephone1') final  String? contactTelephone;
@override@JsonKey(name: 'AccessComments') final  String? accessComments;

/// Create a copy of AddressInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressInfoCopyWith<_AddressInfo> get copyWith => __$AddressInfoCopyWithImpl<_AddressInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressInfo&&(identical(other.title, title) || other.title == title)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.town, town) || other.town == town)&&(identical(other.stateOrProvince, stateOrProvince) || other.stateOrProvince == stateOrProvince)&&(identical(other.postcode, postcode) || other.postcode == postcode)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.contactTelephone, contactTelephone) || other.contactTelephone == contactTelephone)&&(identical(other.accessComments, accessComments) || other.accessComments == accessComments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,addressLine1,town,stateOrProvince,postcode,latitude,longitude,distance,contactTelephone,accessComments);

@override
String toString() {
  return 'AddressInfo(title: $title, addressLine1: $addressLine1, town: $town, stateOrProvince: $stateOrProvince, postcode: $postcode, latitude: $latitude, longitude: $longitude, distance: $distance, contactTelephone: $contactTelephone, accessComments: $accessComments)';
}


}

/// @nodoc
abstract mixin class _$AddressInfoCopyWith<$Res> implements $AddressInfoCopyWith<$Res> {
  factory _$AddressInfoCopyWith(_AddressInfo value, $Res Function(_AddressInfo) _then) = __$AddressInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Title') String title,@JsonKey(name: 'AddressLine1') String? addressLine1,@JsonKey(name: 'Town') String? town,@JsonKey(name: 'StateOrProvince') String? stateOrProvince,@JsonKey(name: 'Postcode') String? postcode,@JsonKey(name: 'Latitude') double latitude,@JsonKey(name: 'Longitude') double longitude,@JsonKey(name: 'Distance') double? distance,@JsonKey(name: 'ContactTelephone1') String? contactTelephone,@JsonKey(name: 'AccessComments') String? accessComments
});




}
/// @nodoc
class __$AddressInfoCopyWithImpl<$Res>
    implements _$AddressInfoCopyWith<$Res> {
  __$AddressInfoCopyWithImpl(this._self, this._then);

  final _AddressInfo _self;
  final $Res Function(_AddressInfo) _then;

/// Create a copy of AddressInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? addressLine1 = freezed,Object? town = freezed,Object? stateOrProvince = freezed,Object? postcode = freezed,Object? latitude = null,Object? longitude = null,Object? distance = freezed,Object? contactTelephone = freezed,Object? accessComments = freezed,}) {
  return _then(_AddressInfo(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,addressLine1: freezed == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String?,town: freezed == town ? _self.town : town // ignore: cast_nullable_to_non_nullable
as String?,stateOrProvince: freezed == stateOrProvince ? _self.stateOrProvince : stateOrProvince // ignore: cast_nullable_to_non_nullable
as String?,postcode: freezed == postcode ? _self.postcode : postcode // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,contactTelephone: freezed == contactTelephone ? _self.contactTelephone : contactTelephone // ignore: cast_nullable_to_non_nullable
as String?,accessComments: freezed == accessComments ? _self.accessComments : accessComments // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OperatorInfo {

@JsonKey(name: 'ID') int? get id;@JsonKey(name: 'Title') String? get title;@JsonKey(name: 'WebsiteURL') String? get websiteUrl;
/// Create a copy of OperatorInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OperatorInfoCopyWith<OperatorInfo> get copyWith => _$OperatorInfoCopyWithImpl<OperatorInfo>(this as OperatorInfo, _$identity);

  /// Serializes this OperatorInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OperatorInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.websiteUrl, websiteUrl) || other.websiteUrl == websiteUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,websiteUrl);

@override
String toString() {
  return 'OperatorInfo(id: $id, title: $title, websiteUrl: $websiteUrl)';
}


}

/// @nodoc
abstract mixin class $OperatorInfoCopyWith<$Res>  {
  factory $OperatorInfoCopyWith(OperatorInfo value, $Res Function(OperatorInfo) _then) = _$OperatorInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ID') int? id,@JsonKey(name: 'Title') String? title,@JsonKey(name: 'WebsiteURL') String? websiteUrl
});




}
/// @nodoc
class _$OperatorInfoCopyWithImpl<$Res>
    implements $OperatorInfoCopyWith<$Res> {
  _$OperatorInfoCopyWithImpl(this._self, this._then);

  final OperatorInfo _self;
  final $Res Function(OperatorInfo) _then;

/// Create a copy of OperatorInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? websiteUrl = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,websiteUrl: freezed == websiteUrl ? _self.websiteUrl : websiteUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OperatorInfo].
extension OperatorInfoPatterns on OperatorInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OperatorInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OperatorInfo() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OperatorInfo value)  $default,){
final _that = this;
switch (_that) {
case _OperatorInfo():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OperatorInfo value)?  $default,){
final _that = this;
switch (_that) {
case _OperatorInfo() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID')  int? id, @JsonKey(name: 'Title')  String? title, @JsonKey(name: 'WebsiteURL')  String? websiteUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OperatorInfo() when $default != null:
return $default(_that.id,_that.title,_that.websiteUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID')  int? id, @JsonKey(name: 'Title')  String? title, @JsonKey(name: 'WebsiteURL')  String? websiteUrl)  $default,) {final _that = this;
switch (_that) {
case _OperatorInfo():
return $default(_that.id,_that.title,_that.websiteUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ID')  int? id, @JsonKey(name: 'Title')  String? title, @JsonKey(name: 'WebsiteURL')  String? websiteUrl)?  $default,) {final _that = this;
switch (_that) {
case _OperatorInfo() when $default != null:
return $default(_that.id,_that.title,_that.websiteUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OperatorInfo implements OperatorInfo {
  const _OperatorInfo({@JsonKey(name: 'ID') this.id, @JsonKey(name: 'Title') this.title, @JsonKey(name: 'WebsiteURL') this.websiteUrl});
  factory _OperatorInfo.fromJson(Map<String, dynamic> json) => _$OperatorInfoFromJson(json);

@override@JsonKey(name: 'ID') final  int? id;
@override@JsonKey(name: 'Title') final  String? title;
@override@JsonKey(name: 'WebsiteURL') final  String? websiteUrl;

/// Create a copy of OperatorInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OperatorInfoCopyWith<_OperatorInfo> get copyWith => __$OperatorInfoCopyWithImpl<_OperatorInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OperatorInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OperatorInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.websiteUrl, websiteUrl) || other.websiteUrl == websiteUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,websiteUrl);

@override
String toString() {
  return 'OperatorInfo(id: $id, title: $title, websiteUrl: $websiteUrl)';
}


}

/// @nodoc
abstract mixin class _$OperatorInfoCopyWith<$Res> implements $OperatorInfoCopyWith<$Res> {
  factory _$OperatorInfoCopyWith(_OperatorInfo value, $Res Function(_OperatorInfo) _then) = __$OperatorInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ID') int? id,@JsonKey(name: 'Title') String? title,@JsonKey(name: 'WebsiteURL') String? websiteUrl
});




}
/// @nodoc
class __$OperatorInfoCopyWithImpl<$Res>
    implements _$OperatorInfoCopyWith<$Res> {
  __$OperatorInfoCopyWithImpl(this._self, this._then);

  final _OperatorInfo _self;
  final $Res Function(_OperatorInfo) _then;

/// Create a copy of OperatorInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? websiteUrl = freezed,}) {
  return _then(_OperatorInfo(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,websiteUrl: freezed == websiteUrl ? _self.websiteUrl : websiteUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChargingStation {

@JsonKey(name: 'ID') int get id;@JsonKey(name: 'AddressInfo') AddressInfo get addressInfo;@JsonKey(name: 'Connections') List<Connection> get connections;@JsonKey(name: 'OperatorInfo') OperatorInfo? get operatorInfo;@JsonKey(name: 'UsageCost') String? get usageCost;@JsonKey(name: 'NumberOfPoints') int? get numberOfPoints;@JsonKey(name: 'StatusType') StatusType? get statusType;@JsonKey(name: 'IsRecentlyVerified') bool get isRecentlyVerified;
/// Create a copy of ChargingStation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChargingStationCopyWith<ChargingStation> get copyWith => _$ChargingStationCopyWithImpl<ChargingStation>(this as ChargingStation, _$identity);

  /// Serializes this ChargingStation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChargingStation&&(identical(other.id, id) || other.id == id)&&(identical(other.addressInfo, addressInfo) || other.addressInfo == addressInfo)&&const DeepCollectionEquality().equals(other.connections, connections)&&(identical(other.operatorInfo, operatorInfo) || other.operatorInfo == operatorInfo)&&(identical(other.usageCost, usageCost) || other.usageCost == usageCost)&&(identical(other.numberOfPoints, numberOfPoints) || other.numberOfPoints == numberOfPoints)&&(identical(other.statusType, statusType) || other.statusType == statusType)&&(identical(other.isRecentlyVerified, isRecentlyVerified) || other.isRecentlyVerified == isRecentlyVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,addressInfo,const DeepCollectionEquality().hash(connections),operatorInfo,usageCost,numberOfPoints,statusType,isRecentlyVerified);

@override
String toString() {
  return 'ChargingStation(id: $id, addressInfo: $addressInfo, connections: $connections, operatorInfo: $operatorInfo, usageCost: $usageCost, numberOfPoints: $numberOfPoints, statusType: $statusType, isRecentlyVerified: $isRecentlyVerified)';
}


}

/// @nodoc
abstract mixin class $ChargingStationCopyWith<$Res>  {
  factory $ChargingStationCopyWith(ChargingStation value, $Res Function(ChargingStation) _then) = _$ChargingStationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ID') int id,@JsonKey(name: 'AddressInfo') AddressInfo addressInfo,@JsonKey(name: 'Connections') List<Connection> connections,@JsonKey(name: 'OperatorInfo') OperatorInfo? operatorInfo,@JsonKey(name: 'UsageCost') String? usageCost,@JsonKey(name: 'NumberOfPoints') int? numberOfPoints,@JsonKey(name: 'StatusType') StatusType? statusType,@JsonKey(name: 'IsRecentlyVerified') bool isRecentlyVerified
});


$AddressInfoCopyWith<$Res> get addressInfo;$OperatorInfoCopyWith<$Res>? get operatorInfo;$StatusTypeCopyWith<$Res>? get statusType;

}
/// @nodoc
class _$ChargingStationCopyWithImpl<$Res>
    implements $ChargingStationCopyWith<$Res> {
  _$ChargingStationCopyWithImpl(this._self, this._then);

  final ChargingStation _self;
  final $Res Function(ChargingStation) _then;

/// Create a copy of ChargingStation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? addressInfo = null,Object? connections = null,Object? operatorInfo = freezed,Object? usageCost = freezed,Object? numberOfPoints = freezed,Object? statusType = freezed,Object? isRecentlyVerified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,addressInfo: null == addressInfo ? _self.addressInfo : addressInfo // ignore: cast_nullable_to_non_nullable
as AddressInfo,connections: null == connections ? _self.connections : connections // ignore: cast_nullable_to_non_nullable
as List<Connection>,operatorInfo: freezed == operatorInfo ? _self.operatorInfo : operatorInfo // ignore: cast_nullable_to_non_nullable
as OperatorInfo?,usageCost: freezed == usageCost ? _self.usageCost : usageCost // ignore: cast_nullable_to_non_nullable
as String?,numberOfPoints: freezed == numberOfPoints ? _self.numberOfPoints : numberOfPoints // ignore: cast_nullable_to_non_nullable
as int?,statusType: freezed == statusType ? _self.statusType : statusType // ignore: cast_nullable_to_non_nullable
as StatusType?,isRecentlyVerified: null == isRecentlyVerified ? _self.isRecentlyVerified : isRecentlyVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ChargingStation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressInfoCopyWith<$Res> get addressInfo {
  
  return $AddressInfoCopyWith<$Res>(_self.addressInfo, (value) {
    return _then(_self.copyWith(addressInfo: value));
  });
}/// Create a copy of ChargingStation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperatorInfoCopyWith<$Res>? get operatorInfo {
    if (_self.operatorInfo == null) {
    return null;
  }

  return $OperatorInfoCopyWith<$Res>(_self.operatorInfo!, (value) {
    return _then(_self.copyWith(operatorInfo: value));
  });
}/// Create a copy of ChargingStation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusTypeCopyWith<$Res>? get statusType {
    if (_self.statusType == null) {
    return null;
  }

  return $StatusTypeCopyWith<$Res>(_self.statusType!, (value) {
    return _then(_self.copyWith(statusType: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChargingStation].
extension ChargingStationPatterns on ChargingStation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChargingStation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChargingStation() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChargingStation value)  $default,){
final _that = this;
switch (_that) {
case _ChargingStation():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChargingStation value)?  $default,){
final _that = this;
switch (_that) {
case _ChargingStation() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID')  int id, @JsonKey(name: 'AddressInfo')  AddressInfo addressInfo, @JsonKey(name: 'Connections')  List<Connection> connections, @JsonKey(name: 'OperatorInfo')  OperatorInfo? operatorInfo, @JsonKey(name: 'UsageCost')  String? usageCost, @JsonKey(name: 'NumberOfPoints')  int? numberOfPoints, @JsonKey(name: 'StatusType')  StatusType? statusType, @JsonKey(name: 'IsRecentlyVerified')  bool isRecentlyVerified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChargingStation() when $default != null:
return $default(_that.id,_that.addressInfo,_that.connections,_that.operatorInfo,_that.usageCost,_that.numberOfPoints,_that.statusType,_that.isRecentlyVerified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID')  int id, @JsonKey(name: 'AddressInfo')  AddressInfo addressInfo, @JsonKey(name: 'Connections')  List<Connection> connections, @JsonKey(name: 'OperatorInfo')  OperatorInfo? operatorInfo, @JsonKey(name: 'UsageCost')  String? usageCost, @JsonKey(name: 'NumberOfPoints')  int? numberOfPoints, @JsonKey(name: 'StatusType')  StatusType? statusType, @JsonKey(name: 'IsRecentlyVerified')  bool isRecentlyVerified)  $default,) {final _that = this;
switch (_that) {
case _ChargingStation():
return $default(_that.id,_that.addressInfo,_that.connections,_that.operatorInfo,_that.usageCost,_that.numberOfPoints,_that.statusType,_that.isRecentlyVerified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ID')  int id, @JsonKey(name: 'AddressInfo')  AddressInfo addressInfo, @JsonKey(name: 'Connections')  List<Connection> connections, @JsonKey(name: 'OperatorInfo')  OperatorInfo? operatorInfo, @JsonKey(name: 'UsageCost')  String? usageCost, @JsonKey(name: 'NumberOfPoints')  int? numberOfPoints, @JsonKey(name: 'StatusType')  StatusType? statusType, @JsonKey(name: 'IsRecentlyVerified')  bool isRecentlyVerified)?  $default,) {final _that = this;
switch (_that) {
case _ChargingStation() when $default != null:
return $default(_that.id,_that.addressInfo,_that.connections,_that.operatorInfo,_that.usageCost,_that.numberOfPoints,_that.statusType,_that.isRecentlyVerified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChargingStation implements ChargingStation {
  const _ChargingStation({@JsonKey(name: 'ID') required this.id, @JsonKey(name: 'AddressInfo') required this.addressInfo, @JsonKey(name: 'Connections') final  List<Connection> connections = const [], @JsonKey(name: 'OperatorInfo') this.operatorInfo, @JsonKey(name: 'UsageCost') this.usageCost, @JsonKey(name: 'NumberOfPoints') this.numberOfPoints, @JsonKey(name: 'StatusType') this.statusType, @JsonKey(name: 'IsRecentlyVerified') this.isRecentlyVerified = false}): _connections = connections;
  factory _ChargingStation.fromJson(Map<String, dynamic> json) => _$ChargingStationFromJson(json);

@override@JsonKey(name: 'ID') final  int id;
@override@JsonKey(name: 'AddressInfo') final  AddressInfo addressInfo;
 final  List<Connection> _connections;
@override@JsonKey(name: 'Connections') List<Connection> get connections {
  if (_connections is EqualUnmodifiableListView) return _connections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_connections);
}

@override@JsonKey(name: 'OperatorInfo') final  OperatorInfo? operatorInfo;
@override@JsonKey(name: 'UsageCost') final  String? usageCost;
@override@JsonKey(name: 'NumberOfPoints') final  int? numberOfPoints;
@override@JsonKey(name: 'StatusType') final  StatusType? statusType;
@override@JsonKey(name: 'IsRecentlyVerified') final  bool isRecentlyVerified;

/// Create a copy of ChargingStation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChargingStationCopyWith<_ChargingStation> get copyWith => __$ChargingStationCopyWithImpl<_ChargingStation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChargingStationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChargingStation&&(identical(other.id, id) || other.id == id)&&(identical(other.addressInfo, addressInfo) || other.addressInfo == addressInfo)&&const DeepCollectionEquality().equals(other._connections, _connections)&&(identical(other.operatorInfo, operatorInfo) || other.operatorInfo == operatorInfo)&&(identical(other.usageCost, usageCost) || other.usageCost == usageCost)&&(identical(other.numberOfPoints, numberOfPoints) || other.numberOfPoints == numberOfPoints)&&(identical(other.statusType, statusType) || other.statusType == statusType)&&(identical(other.isRecentlyVerified, isRecentlyVerified) || other.isRecentlyVerified == isRecentlyVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,addressInfo,const DeepCollectionEquality().hash(_connections),operatorInfo,usageCost,numberOfPoints,statusType,isRecentlyVerified);

@override
String toString() {
  return 'ChargingStation(id: $id, addressInfo: $addressInfo, connections: $connections, operatorInfo: $operatorInfo, usageCost: $usageCost, numberOfPoints: $numberOfPoints, statusType: $statusType, isRecentlyVerified: $isRecentlyVerified)';
}


}

/// @nodoc
abstract mixin class _$ChargingStationCopyWith<$Res> implements $ChargingStationCopyWith<$Res> {
  factory _$ChargingStationCopyWith(_ChargingStation value, $Res Function(_ChargingStation) _then) = __$ChargingStationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ID') int id,@JsonKey(name: 'AddressInfo') AddressInfo addressInfo,@JsonKey(name: 'Connections') List<Connection> connections,@JsonKey(name: 'OperatorInfo') OperatorInfo? operatorInfo,@JsonKey(name: 'UsageCost') String? usageCost,@JsonKey(name: 'NumberOfPoints') int? numberOfPoints,@JsonKey(name: 'StatusType') StatusType? statusType,@JsonKey(name: 'IsRecentlyVerified') bool isRecentlyVerified
});


@override $AddressInfoCopyWith<$Res> get addressInfo;@override $OperatorInfoCopyWith<$Res>? get operatorInfo;@override $StatusTypeCopyWith<$Res>? get statusType;

}
/// @nodoc
class __$ChargingStationCopyWithImpl<$Res>
    implements _$ChargingStationCopyWith<$Res> {
  __$ChargingStationCopyWithImpl(this._self, this._then);

  final _ChargingStation _self;
  final $Res Function(_ChargingStation) _then;

/// Create a copy of ChargingStation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? addressInfo = null,Object? connections = null,Object? operatorInfo = freezed,Object? usageCost = freezed,Object? numberOfPoints = freezed,Object? statusType = freezed,Object? isRecentlyVerified = null,}) {
  return _then(_ChargingStation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,addressInfo: null == addressInfo ? _self.addressInfo : addressInfo // ignore: cast_nullable_to_non_nullable
as AddressInfo,connections: null == connections ? _self._connections : connections // ignore: cast_nullable_to_non_nullable
as List<Connection>,operatorInfo: freezed == operatorInfo ? _self.operatorInfo : operatorInfo // ignore: cast_nullable_to_non_nullable
as OperatorInfo?,usageCost: freezed == usageCost ? _self.usageCost : usageCost // ignore: cast_nullable_to_non_nullable
as String?,numberOfPoints: freezed == numberOfPoints ? _self.numberOfPoints : numberOfPoints // ignore: cast_nullable_to_non_nullable
as int?,statusType: freezed == statusType ? _self.statusType : statusType // ignore: cast_nullable_to_non_nullable
as StatusType?,isRecentlyVerified: null == isRecentlyVerified ? _self.isRecentlyVerified : isRecentlyVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ChargingStation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressInfoCopyWith<$Res> get addressInfo {
  
  return $AddressInfoCopyWith<$Res>(_self.addressInfo, (value) {
    return _then(_self.copyWith(addressInfo: value));
  });
}/// Create a copy of ChargingStation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OperatorInfoCopyWith<$Res>? get operatorInfo {
    if (_self.operatorInfo == null) {
    return null;
  }

  return $OperatorInfoCopyWith<$Res>(_self.operatorInfo!, (value) {
    return _then(_self.copyWith(operatorInfo: value));
  });
}/// Create a copy of ChargingStation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusTypeCopyWith<$Res>? get statusType {
    if (_self.statusType == null) {
    return null;
  }

  return $StatusTypeCopyWith<$Res>(_self.statusType!, (value) {
    return _then(_self.copyWith(statusType: value));
  });
}
}

// dart format on

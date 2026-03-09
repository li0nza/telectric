// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StationState {

 int get apiCallCount;
/// Create a copy of StationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StationStateCopyWith<StationState> get copyWith => _$StationStateCopyWithImpl<StationState>(this as StationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StationState&&(identical(other.apiCallCount, apiCallCount) || other.apiCallCount == apiCallCount));
}


@override
int get hashCode => Object.hash(runtimeType,apiCallCount);

@override
String toString() {
  return 'StationState(apiCallCount: $apiCallCount)';
}


}

/// @nodoc
abstract mixin class $StationStateCopyWith<$Res>  {
  factory $StationStateCopyWith(StationState value, $Res Function(StationState) _then) = _$StationStateCopyWithImpl;
@useResult
$Res call({
 int apiCallCount
});




}
/// @nodoc
class _$StationStateCopyWithImpl<$Res>
    implements $StationStateCopyWith<$Res> {
  _$StationStateCopyWithImpl(this._self, this._then);

  final StationState _self;
  final $Res Function(StationState) _then;

/// Create a copy of StationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? apiCallCount = null,}) {
  return _then(_self.copyWith(
apiCallCount: null == apiCallCount ? _self.apiCallCount : apiCallCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StationState].
extension StationStatePatterns on StationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StationInitial value)?  initial,TResult Function( StationLoading value)?  loading,TResult Function( StationLoaded value)?  loaded,TResult Function( StationError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StationInitial() when initial != null:
return initial(_that);case StationLoading() when loading != null:
return loading(_that);case StationLoaded() when loaded != null:
return loaded(_that);case StationError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StationInitial value)  initial,required TResult Function( StationLoading value)  loading,required TResult Function( StationLoaded value)  loaded,required TResult Function( StationError value)  error,}){
final _that = this;
switch (_that) {
case StationInitial():
return initial(_that);case StationLoading():
return loading(_that);case StationLoaded():
return loaded(_that);case StationError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StationInitial value)?  initial,TResult? Function( StationLoading value)?  loading,TResult? Function( StationLoaded value)?  loaded,TResult? Function( StationError value)?  error,}){
final _that = this;
switch (_that) {
case StationInitial() when initial != null:
return initial(_that);case StationLoading() when loading != null:
return loading(_that);case StationLoaded() when loaded != null:
return loaded(_that);case StationError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int apiCallCount)?  initial,TResult Function( int apiCallCount)?  loading,TResult Function( List<ChargingStation> stations,  ChargingStation? selectedStation,  double searchLatitude,  double searchLongitude,  double searchRadius,  int apiCallCount)?  loaded,TResult Function( String message,  int apiCallCount)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StationInitial() when initial != null:
return initial(_that.apiCallCount);case StationLoading() when loading != null:
return loading(_that.apiCallCount);case StationLoaded() when loaded != null:
return loaded(_that.stations,_that.selectedStation,_that.searchLatitude,_that.searchLongitude,_that.searchRadius,_that.apiCallCount);case StationError() when error != null:
return error(_that.message,_that.apiCallCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int apiCallCount)  initial,required TResult Function( int apiCallCount)  loading,required TResult Function( List<ChargingStation> stations,  ChargingStation? selectedStation,  double searchLatitude,  double searchLongitude,  double searchRadius,  int apiCallCount)  loaded,required TResult Function( String message,  int apiCallCount)  error,}) {final _that = this;
switch (_that) {
case StationInitial():
return initial(_that.apiCallCount);case StationLoading():
return loading(_that.apiCallCount);case StationLoaded():
return loaded(_that.stations,_that.selectedStation,_that.searchLatitude,_that.searchLongitude,_that.searchRadius,_that.apiCallCount);case StationError():
return error(_that.message,_that.apiCallCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int apiCallCount)?  initial,TResult? Function( int apiCallCount)?  loading,TResult? Function( List<ChargingStation> stations,  ChargingStation? selectedStation,  double searchLatitude,  double searchLongitude,  double searchRadius,  int apiCallCount)?  loaded,TResult? Function( String message,  int apiCallCount)?  error,}) {final _that = this;
switch (_that) {
case StationInitial() when initial != null:
return initial(_that.apiCallCount);case StationLoading() when loading != null:
return loading(_that.apiCallCount);case StationLoaded() when loaded != null:
return loaded(_that.stations,_that.selectedStation,_that.searchLatitude,_that.searchLongitude,_that.searchRadius,_that.apiCallCount);case StationError() when error != null:
return error(_that.message,_that.apiCallCount);case _:
  return null;

}
}

}

/// @nodoc


class StationInitial implements StationState {
  const StationInitial({this.apiCallCount = 0});
  

@override@JsonKey() final  int apiCallCount;

/// Create a copy of StationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StationInitialCopyWith<StationInitial> get copyWith => _$StationInitialCopyWithImpl<StationInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StationInitial&&(identical(other.apiCallCount, apiCallCount) || other.apiCallCount == apiCallCount));
}


@override
int get hashCode => Object.hash(runtimeType,apiCallCount);

@override
String toString() {
  return 'StationState.initial(apiCallCount: $apiCallCount)';
}


}

/// @nodoc
abstract mixin class $StationInitialCopyWith<$Res> implements $StationStateCopyWith<$Res> {
  factory $StationInitialCopyWith(StationInitial value, $Res Function(StationInitial) _then) = _$StationInitialCopyWithImpl;
@override @useResult
$Res call({
 int apiCallCount
});




}
/// @nodoc
class _$StationInitialCopyWithImpl<$Res>
    implements $StationInitialCopyWith<$Res> {
  _$StationInitialCopyWithImpl(this._self, this._then);

  final StationInitial _self;
  final $Res Function(StationInitial) _then;

/// Create a copy of StationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? apiCallCount = null,}) {
  return _then(StationInitial(
apiCallCount: null == apiCallCount ? _self.apiCallCount : apiCallCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class StationLoading implements StationState {
  const StationLoading({this.apiCallCount = 0});
  

@override@JsonKey() final  int apiCallCount;

/// Create a copy of StationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StationLoadingCopyWith<StationLoading> get copyWith => _$StationLoadingCopyWithImpl<StationLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StationLoading&&(identical(other.apiCallCount, apiCallCount) || other.apiCallCount == apiCallCount));
}


@override
int get hashCode => Object.hash(runtimeType,apiCallCount);

@override
String toString() {
  return 'StationState.loading(apiCallCount: $apiCallCount)';
}


}

/// @nodoc
abstract mixin class $StationLoadingCopyWith<$Res> implements $StationStateCopyWith<$Res> {
  factory $StationLoadingCopyWith(StationLoading value, $Res Function(StationLoading) _then) = _$StationLoadingCopyWithImpl;
@override @useResult
$Res call({
 int apiCallCount
});




}
/// @nodoc
class _$StationLoadingCopyWithImpl<$Res>
    implements $StationLoadingCopyWith<$Res> {
  _$StationLoadingCopyWithImpl(this._self, this._then);

  final StationLoading _self;
  final $Res Function(StationLoading) _then;

/// Create a copy of StationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? apiCallCount = null,}) {
  return _then(StationLoading(
apiCallCount: null == apiCallCount ? _self.apiCallCount : apiCallCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class StationLoaded implements StationState {
  const StationLoaded({required final  List<ChargingStation> stations, this.selectedStation, required this.searchLatitude, required this.searchLongitude, this.searchRadius = 2.0, this.apiCallCount = 0}): _stations = stations;
  

 final  List<ChargingStation> _stations;
 List<ChargingStation> get stations {
  if (_stations is EqualUnmodifiableListView) return _stations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stations);
}

 final  ChargingStation? selectedStation;
 final  double searchLatitude;
 final  double searchLongitude;
@JsonKey() final  double searchRadius;
@override@JsonKey() final  int apiCallCount;

/// Create a copy of StationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StationLoadedCopyWith<StationLoaded> get copyWith => _$StationLoadedCopyWithImpl<StationLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StationLoaded&&const DeepCollectionEquality().equals(other._stations, _stations)&&(identical(other.selectedStation, selectedStation) || other.selectedStation == selectedStation)&&(identical(other.searchLatitude, searchLatitude) || other.searchLatitude == searchLatitude)&&(identical(other.searchLongitude, searchLongitude) || other.searchLongitude == searchLongitude)&&(identical(other.searchRadius, searchRadius) || other.searchRadius == searchRadius)&&(identical(other.apiCallCount, apiCallCount) || other.apiCallCount == apiCallCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_stations),selectedStation,searchLatitude,searchLongitude,searchRadius,apiCallCount);

@override
String toString() {
  return 'StationState.loaded(stations: $stations, selectedStation: $selectedStation, searchLatitude: $searchLatitude, searchLongitude: $searchLongitude, searchRadius: $searchRadius, apiCallCount: $apiCallCount)';
}


}

/// @nodoc
abstract mixin class $StationLoadedCopyWith<$Res> implements $StationStateCopyWith<$Res> {
  factory $StationLoadedCopyWith(StationLoaded value, $Res Function(StationLoaded) _then) = _$StationLoadedCopyWithImpl;
@override @useResult
$Res call({
 List<ChargingStation> stations, ChargingStation? selectedStation, double searchLatitude, double searchLongitude, double searchRadius, int apiCallCount
});


$ChargingStationCopyWith<$Res>? get selectedStation;

}
/// @nodoc
class _$StationLoadedCopyWithImpl<$Res>
    implements $StationLoadedCopyWith<$Res> {
  _$StationLoadedCopyWithImpl(this._self, this._then);

  final StationLoaded _self;
  final $Res Function(StationLoaded) _then;

/// Create a copy of StationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stations = null,Object? selectedStation = freezed,Object? searchLatitude = null,Object? searchLongitude = null,Object? searchRadius = null,Object? apiCallCount = null,}) {
  return _then(StationLoaded(
stations: null == stations ? _self._stations : stations // ignore: cast_nullable_to_non_nullable
as List<ChargingStation>,selectedStation: freezed == selectedStation ? _self.selectedStation : selectedStation // ignore: cast_nullable_to_non_nullable
as ChargingStation?,searchLatitude: null == searchLatitude ? _self.searchLatitude : searchLatitude // ignore: cast_nullable_to_non_nullable
as double,searchLongitude: null == searchLongitude ? _self.searchLongitude : searchLongitude // ignore: cast_nullable_to_non_nullable
as double,searchRadius: null == searchRadius ? _self.searchRadius : searchRadius // ignore: cast_nullable_to_non_nullable
as double,apiCallCount: null == apiCallCount ? _self.apiCallCount : apiCallCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of StationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChargingStationCopyWith<$Res>? get selectedStation {
    if (_self.selectedStation == null) {
    return null;
  }

  return $ChargingStationCopyWith<$Res>(_self.selectedStation!, (value) {
    return _then(_self.copyWith(selectedStation: value));
  });
}
}

/// @nodoc


class StationError implements StationState {
  const StationError({required this.message, this.apiCallCount = 0});
  

 final  String message;
@override@JsonKey() final  int apiCallCount;

/// Create a copy of StationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StationErrorCopyWith<StationError> get copyWith => _$StationErrorCopyWithImpl<StationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StationError&&(identical(other.message, message) || other.message == message)&&(identical(other.apiCallCount, apiCallCount) || other.apiCallCount == apiCallCount));
}


@override
int get hashCode => Object.hash(runtimeType,message,apiCallCount);

@override
String toString() {
  return 'StationState.error(message: $message, apiCallCount: $apiCallCount)';
}


}

/// @nodoc
abstract mixin class $StationErrorCopyWith<$Res> implements $StationStateCopyWith<$Res> {
  factory $StationErrorCopyWith(StationError value, $Res Function(StationError) _then) = _$StationErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, int apiCallCount
});




}
/// @nodoc
class _$StationErrorCopyWithImpl<$Res>
    implements $StationErrorCopyWith<$Res> {
  _$StationErrorCopyWithImpl(this._self, this._then);

  final StationError _self;
  final $Res Function(StationError) _then;

/// Create a copy of StationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? apiCallCount = null,}) {
  return _then(StationError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,apiCallCount: null == apiCallCount ? _self.apiCallCount : apiCallCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

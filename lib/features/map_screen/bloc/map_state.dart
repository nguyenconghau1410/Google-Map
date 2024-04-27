import 'package:equatable/equatable.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

import '../../../data/models/vietmap_autocomplete_model.dart';
import '../../../data/models/vietmap_place_model.dart';
import '../../../data/models/vietmap_reverse_model.dart';
import '../../../data/models/vietmap_routing_model.dart';
import '../components/select_map_tiles_modal.dart';

class MapState extends Equatable {
  final MapTiles mapTile;

  const MapState({required this.mapTile});

  @override
  List<Object?> get props => [mapTile];
}

class MapStateInitial extends MapState {
  const MapStateInitial() : super(mapTile: MapTiles.vietmapVector);
}

class MapStateLoading extends MapState {
  final MapState state;
  MapStateLoading(this.state) : super(mapTile: state.mapTile);
}

class MapStateSearchAddressSuccess extends MapState {
  final List<VietmapAutocompleteModel> response;
  final MapState state;
  MapStateSearchAddressSuccess(this.response, this.state)
      : super(mapTile: state.mapTile);
}

class MapStateSearchAddressError extends MapState {
  final String message;
  final MapState state;
  MapStateSearchAddressError(this.message, this.state)
      : super(mapTile: state.mapTile);
}

class MapStateGetPlaceDetailSuccess extends MapState {
  final VietmapPlaceModel response;
  final MapState state;

  MapStateGetPlaceDetailSuccess(this.response, this.state)
      : super(mapTile: state.mapTile);
}

class MapStateGetPlaceDetailError extends MapState {
  final String message;
  final MapState state;
  MapStateGetPlaceDetailError(this.message, this.state)
      : super(mapTile: state.mapTile);
}

class MapStateGetDirectionSuccess extends MapState {
  final VietMapRoutingModel response;
  final List<LatLng> listPoint;
  final MapState state;
  MapStateGetDirectionSuccess(this.response, this.listPoint, this.state)
      : super(mapTile: state.mapTile);
}

class MapStateGetDirectionError extends MapState {
  final String message;
  final MapState state;
  MapStateGetDirectionError(this.message, this.state)
      : super(mapTile: state.mapTile);
}

class MapStateGetLocationFromCoordinateSuccess extends MapState {
  final VietmapReverseModel response;
  final MapState state;
  MapStateGetLocationFromCoordinateSuccess(this.response, this.state)
      : super(mapTile: state.mapTile);
}

class MapStateGetLocationFromCoordinateError extends MapState {
  final String message;

  final MapState state;
  MapStateGetLocationFromCoordinateError(this.message, this.state)
      : super(mapTile: state.mapTile);
}

class MapStateGetHistorySearchSuccess extends MapState {
  final List<VietmapAutocompleteModel> response;
  final MapState state;
  MapStateGetHistorySearchSuccess(this.response, this.state)
      : super(mapTile: state.mapTile);
}

class MapStateGetHistorySearchError extends MapState {
  final String message;
  final MapState state;
  MapStateGetHistorySearchError(this.message, this.state)
      : super(mapTile: state.mapTile);
}

class MapStateGetCategoryAddressSuccess extends MapState {
  final List<VietmapReverseModel> response;
  final MapState state;
  MapStateGetCategoryAddressSuccess(this.response, this.state)
      : super(mapTile: state.mapTile);
}

class MapStateChangeMapTilesSuccess extends MapState {
  final MapTiles mapType;
  final MapState state;
  const MapStateChangeMapTilesSuccess(this.mapType, this.state)
      : super(mapTile: mapType);
}

import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';
import 'package:vietmap_flutter_navigation/embedded/controller.dart';

enum VehicleType {
  car('driving-traffic'),
  bike('bike'),
  foot('walking'),
  motorcycle('motorcycle');

  const VehicleType(this.name);
  final String name;
}

class VietMapRoutingParams {
  String apiKey;
  LatLng? originPoint;
  String? originDescription;
  String? destinationDescription;
  LatLng? destinationPoint;
  VehicleType vehicle;
  bool optimize;
  MapNavigationViewController? navigationController;

  VietMapRoutingParams(
      {required this.apiKey,
      this.originDescription,
      this.navigationController,
      this.destinationDescription,
      required this.originPoint,
      required this.destinationPoint,
      this.vehicle = VehicleType.car,
      this.optimize = false});
  toMap() {
    return {
      'api-version': '1.1',
      'apikey': apiKey,
      // 'point': originPoint.toUrlValue(),
      // 'point': destinationPoint.toUrlValue(),
      'vehicle': vehicle.name,
      'optimize': optimize
    };
  }
}

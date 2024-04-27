import 'package:vietmap_map/features/map_screen/components/select_map_tiles_modal.dart';

extension TileMapExtension on MapTiles {
  String getMapTiles(String apiKey) {
    assert(apiKey.isNotEmpty);
    switch (this) {
      case MapTiles.vietmapVector:
        return "https://maps.vietmap.vn/api/maps/light/styles.json?apikey=$apiKey";
      case MapTiles.vietmapRaster:
        return "https://maps.vietmap.vn/api/maps/raster/styles.json?apikey=$apiKey";
      case MapTiles.google:
        return "https://maps.vietmap.vn/api/maps/google/styles.json?apikey=$apiKey";
      case MapTiles.googleSatellite:
        return "https://run.mocky.io/v3/5c58f825-7619-4d07-8202-ebe3d3b3b2b6";
    }
  }
}

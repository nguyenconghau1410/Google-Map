import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppContext {
  static final AppContext _singleton = AppContext._internal();

  factory AppContext() {
    return _singleton;
  }
  AppContext._internal();

  static String? getVietmapAPIKey() {
    return dotenv.env['VIETMAP_API_KEY'];
  }

  static String? getVietmapBaseUrl() {
    return 'https://maps.vietmap.vn/api/';
  }

  static String? getVietmapMapStyleUrl() {
    return "https://maps.vietmap.vn/api/maps/light/styles.json?apiKey=${getVietmapAPIKey()}";
  }
}

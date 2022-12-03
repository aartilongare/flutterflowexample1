import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _TriggerExample = prefs.getString('ff_TriggerExample') ?? _TriggerExample;
  }

  late SharedPreferences prefs;

  String _TriggerExample = '';
  String get TriggerExample => _TriggerExample;
  set TriggerExample(String _value) {
    _TriggerExample = _value;
    prefs.setString('ff_TriggerExample', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

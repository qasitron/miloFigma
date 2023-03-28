import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _imgList = [
    'https://picsum.photos/seed/106/600',
    'https://picsum.photos/seed/18/600',
    'https://picsum.photos/seed/123/600',
    'https://picsum.photos/seed/261/600'
  ];
  List<String> get imgList => _imgList;
  set imgList(List<String> _value) {
    _imgList = _value;
  }

  void addToImgList(String _value) {
    _imgList.add(_value);
  }

  void removeFromImgList(String _value) {
    _imgList.remove(_value);
  }

  void removeAtIndexFromImgList(int _index) {
    _imgList.removeAt(_index);
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

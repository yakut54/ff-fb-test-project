import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _isDriver = false;
  bool get isDriver => _isDriver;
  set isDriver(bool value) {
    _isDriver = value;
  }

  bool _isPassengeer = false;
  bool get isPassengeer => _isPassengeer;
  set isPassengeer(bool value) {
    _isPassengeer = value;
  }

  String _from = '';
  String get from => _from;
  set from(String value) {
    _from = value;
  }

  String _to = '';
  String get to => _to;
  set to(String value) {
    _to = value;
  }
}

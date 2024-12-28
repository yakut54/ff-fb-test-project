import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

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

  String _mark = '';
  String get mark => _mark;
  set mark(String value) {
    _mark = value;
  }

  String _model = '';
  String get model => _model;
  set model(String value) {
    _model = value;
  }

  DocumentReference? _selectedCar;
  DocumentReference? get selectedCar => _selectedCar;
  set selectedCar(DocumentReference? value) {
    _selectedCar = value;
  }
}

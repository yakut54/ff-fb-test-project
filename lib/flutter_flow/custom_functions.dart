import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

bool checkPhoneNumber(String phone) {
  print('phone.length >> ${phone.length}');
  return phone.length == 18;
}

bool isEmptyPhoto(String photo) {
  print('photo >> ${photo} <<');
  return photo.isEmpty;
}

bool stringIsEmpty(String str) {
  return str.isEmpty;
}

String changeTextOnButton(
  bool isDriver,
  bool isPassenger,
) {
  if (isDriver) {
    return 'СОЗДАТЬ ПОЕЗДКУ';
  } else if (isPassenger) {
    return 'НАЙТИ ПОЕЗДКУ';
  } else {
    return 'ВЫБЕРИТЕ ДЕЙСТВИЕ';
  }
}

bool isButtonActive(
  bool isDriver,
  bool isPassenger,
  String from,
  String to,
) {
  return (isDriver || isPassenger) && from.isNotEmpty && to.isNotEmpty;
}

bool checkDate(DateTime? date) {
  print('date >>> $date');

  return date != null;
}

bool checkIfCarValid(
  String photo,
  String mark,
  String model,
  String regnumber,
) {
  return photo.isNotEmpty &&
      mark.isNotEmpty &&
      model.isNotEmpty &&
      regnumber.isNotEmpty;
}

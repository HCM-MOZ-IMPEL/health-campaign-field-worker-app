library app_utils;

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:uuid/uuid.dart';
import '../data/local_store/secure_store/secure_store.dart';
export 'app_exception.dart';
export 'constants.dart';
export 'extensions/extensions.dart';

Expression<bool> buildAnd(Iterable<Expression<bool?>> iterable) {
  if (iterable.isEmpty) return const Constant(true);
  final result = iterable.reduce((value, element) => value & element);

  return result.equals(true);
}

Expression<bool> buildOr(Iterable<Expression<bool?>> iterable) {
  if (iterable.isEmpty) return const Constant(true);
  final result = iterable.reduce((value, element) => value | element);

  return result.equals(true);
}

class IdGen {
  static const IdGen _instance = IdGen._internal();

  static IdGen get instance => _instance;

  /// Shorthand for [instance]
  static IdGen get i => instance;

  final Uuid uuid;

  const IdGen._internal() : uuid = const Uuid();

  String get identifier => uuid.v1();
}

class CustomValidator {
  /// Validates that control's value must be `true`
  static Map<String, dynamic>? requiredMin(AbstractControl<dynamic> control) {
    return control.value == null || control.value.toString().trim().length >= 2
        ? null
        : {'Mínimo 2 caracteres necessários': true};
  }

  static Map<String, dynamic>? nonRequiredMin(
    AbstractControl<dynamic> control,
  ) {
    return control.value == null ||
            control.value.toString().trim().isEmpty ||
            control.value.toString().trim().length >= 2
        ? null
        : {'Mínimo 2 caracteres necessários': true};
  }

  static Map<String, dynamic>? requiredMinIndividualName(
    AbstractControl<dynamic> control,
  ) {
    return control.value == null || control.value.toString().trim().length >= 3
        ? null
        : {'Mínimo 3 caracteres necessários': true};
  }

  static Map<String, dynamic>? dobRequired(
    AbstractControl<dynamic> control,
  ) {
    return control.value == null || control.value.toString().trim().isEmpty
        ? {'O campo Idade é obrigatório': true}
        : null;
  }

  /// validation for pgr mobile numbers. Need to change later to 9 digits
  static Map<String, dynamic>? pgrValidMobileNumber(
    AbstractControl<dynamic> control,
  ) {
    if (control.value == null || control.value.toString().isEmpty) {
      return null;
    }

    const pattern = r'[0-9]';

    if (control.value.toString().length != 10) {
      return {'mobileNumber': true};
    }

    if (RegExp(pattern).hasMatch(control.value.toString())) return null;

    return {'mobileNumber': true};
  }

  static Map<String, dynamic>? validMobileNumber(
    AbstractControl<dynamic> control,
  ) {
    if (control.value == null || control.value.toString().isEmpty) {
      return null;
    }

    const pattern = r'[0-9]';

    if (control.value.toString().length != 9) {
      return {'mobileNumber': true};
    }

    if (RegExp(pattern).hasMatch(control.value.toString())) return null;

    return {'mobileNumber': true};
  }

  static Map<String, dynamic>? vehicleNumberValidation(
    AbstractControl<dynamic> control,
  ) {
    return control.value == null ||
            control.value.toString().trim().length == 8 ||
            control.value.toString().trim().length == 9
        ? null
        : {'vehicleNumber': true};
  }

  static Map<String, dynamic>? validStockCount(
    AbstractControl<dynamic> control,
  ) {
    if (control.value == null || control.value.toString().isEmpty) {
      return {'required': true};
    }

    var parsed = int.tryParse(control.value) ?? 0;
    if (parsed < 0) {
      return {'min': true};
    } else if (parsed > 20000000) {
      return {'max': true};
    }

    return null;
  }
}

setBgrunning(bool isBgRunning) async {
  final localSecureStore = LocalSecureStore.instance;
  await localSecureStore.setBackgroundService(isBgRunning);
}

performBackgroundService({
  BuildContext? context,
  required bool stopService,
  required bool isBackground,
}) async {
  final connectivityResult = await (Connectivity().checkConnectivity());

  final isOnline = connectivityResult == ConnectivityResult.wifi ||
      connectivityResult == ConnectivityResult.mobile;
  final service = FlutterBackgroundService();
  var isRunning = await service.isRunning();

  if (!stopService) {
    if (!isRunning && isOnline) {
      service.startService();
    }
  } else {
    service.invoke('stopService');
  }
}

Timer makePeriodicTimer(
  Duration duration,
  void Function(Timer timer) callback, {
  bool fireNow = false,
}) {
  var timer = Timer.periodic(duration, callback);
  if (fireNow) {
    callback(timer);
  }

  return timer;
}

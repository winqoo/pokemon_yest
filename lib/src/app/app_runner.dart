import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokemon_yest/src/di/injector.dart';

import 'app.dart';

void runApplication() async {
  _injectDependencies();
  _setupErrorHandling();
  _runApp();
}

void _setupErrorHandling() {
  FlutterError.onError = (FlutterErrorDetails details) {
    if (!kReleaseMode) {
      FlutterError.dumpErrorToConsole(details);
    } else {
      Zone.current.handleUncaughtError(details.exception, details.stack);
    }
  };
}

void _injectDependencies() => Injector.inject();

void _runApp() {
  SystemChrome.setEnabledSystemUIOverlays([]).then((_) {
    runApp(App());
  });
}

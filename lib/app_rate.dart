import 'dart:async';

import 'package:flutter/services.dart';

class AppRate {
  static const MethodChannel _channel = const MethodChannel('app_rate');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<void> test() async {
    await _channel.invokeMethod("rate");
  }
}

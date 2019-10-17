import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_rate/app_rate.dart';

void main() {
  const MethodChannel channel = MethodChannel('app_rate');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AppRate.platformVersion, '42');
  });
}


import 'dart:async';

import 'package:flutter/services.dart';

class QuickNotify {
  static const MethodChannel _channel =
      const MethodChannel('quick_notify');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static void notify({
    String? title,
    String? content,
  }) {
    _channel.invokeMethod('notify', {
      'title': title,
      'content': content,
    });
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'open_mail_app_platform_interface.dart';

/// An implementation of [OpenMailAppPlatform] that uses method channels.
class MethodChannelOpenMailApp extends OpenMailAppPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('open_mail_app');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

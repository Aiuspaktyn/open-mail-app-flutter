import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'open_mail_app_flutter_platform_interface.dart';

/// An implementation of [OpenMailAppFlutterPlatform] that uses method channels.
class MethodChannelOpenMailAppFlutter extends OpenMailAppFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('open_mail_app_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

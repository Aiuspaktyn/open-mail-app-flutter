import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'open_mail_app_method_channel.dart';

abstract class OpenMailAppPlatform extends PlatformInterface {
  /// Constructs a OpenMailAppPlatform.
  OpenMailAppPlatform() : super(token: _token);

  static final Object _token = Object();

  static OpenMailAppPlatform _instance = MethodChannelOpenMailApp();

  /// The default instance of [OpenMailAppPlatform] to use.
  ///
  /// Defaults to [MethodChannelOpenMailApp].
  static OpenMailAppPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OpenMailAppPlatform] when
  /// they register themselves.
  static set instance(OpenMailAppPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

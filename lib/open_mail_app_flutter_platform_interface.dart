import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'open_mail_app_flutter_method_channel.dart';

abstract class OpenMailAppFlutterPlatform extends PlatformInterface {
  /// Constructs a OpenMailAppFlutterPlatform.
  OpenMailAppFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static OpenMailAppFlutterPlatform _instance = MethodChannelOpenMailAppFlutter();

  /// The default instance of [OpenMailAppFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelOpenMailAppFlutter].
  static OpenMailAppFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OpenMailAppFlutterPlatform] when
  /// they register themselves.
  static set instance(OpenMailAppFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

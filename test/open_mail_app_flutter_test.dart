import 'package:flutter_test/flutter_test.dart';
import 'package:open_mail_app_flutter/open_mail_app_flutter.dart';
import 'package:open_mail_app_flutter/open_mail_app_flutter_platform_interface.dart';
import 'package:open_mail_app_flutter/open_mail_app_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOpenMailAppFlutterPlatform
    with MockPlatformInterfaceMixin
    implements OpenMailAppFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OpenMailAppFlutterPlatform initialPlatform = OpenMailAppFlutterPlatform.instance;

  test('$MethodChannelOpenMailAppFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOpenMailAppFlutter>());
  });

  test('getPlatformVersion', () async {
    OpenMailAppFlutter openMailAppFlutterPlugin = OpenMailAppFlutter();
    MockOpenMailAppFlutterPlatform fakePlatform = MockOpenMailAppFlutterPlatform();
    OpenMailAppFlutterPlatform.instance = fakePlatform;

    expect(await openMailAppFlutterPlugin.getPlatformVersion(), '42');
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:hello_world/hello_world.dart';
import 'package:hello_world/hello_world_platform_interface.dart';
import 'package:hello_world/hello_world_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockHelloWorldPlatform
    with MockPlatformInterfaceMixin
    implements HelloWorldPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final HelloWorldPlatform initialPlatform = HelloWorldPlatform.instance;

  test('$MethodChannelHelloWorld is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelHelloWorld>());
  });

  test('getPlatformVersion', () async {
    HelloWorld helloWorldPlugin = HelloWorld();
    MockHelloWorldPlatform fakePlatform = MockHelloWorldPlatform();
    HelloWorldPlatform.instance = fakePlatform;

    expect(await helloWorldPlugin.getPlatformVersion(), '42');
  });
}

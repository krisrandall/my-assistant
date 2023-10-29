import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'hello_world_platform_interface.dart';

/// An implementation of [HelloWorldPlatform] that uses method channels.
class MethodChannelHelloWorld extends HelloWorldPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('hello_world');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

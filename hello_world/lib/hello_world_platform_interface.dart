import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'hello_world_method_channel.dart';

abstract class HelloWorldPlatform extends PlatformInterface {
  /// Constructs a HelloWorldPlatform.
  HelloWorldPlatform() : super(token: _token);

  static final Object _token = Object();

  static HelloWorldPlatform _instance = MethodChannelHelloWorld();

  /// The default instance of [HelloWorldPlatform] to use.
  ///
  /// Defaults to [MethodChannelHelloWorld].
  static HelloWorldPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HelloWorldPlatform] when
  /// they register themselves.
  static set instance(HelloWorldPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

import Flutter
import UIKit

public class SwiftDisableBatteryOptimizationPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "disable_battery_optimization", binaryMessenger: registrar.messenger())
    let instance = SwiftDisableBatteryOptimizationPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}

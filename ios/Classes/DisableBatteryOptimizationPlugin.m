#import "DisableBatteryOptimizationPlugin.h"
#if __has_include(<disable_battery_optimization/disable_battery_optimization-Swift.h>)
#import <disable_battery_optimization/disable_battery_optimization-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "disable_battery_optimization-Swift.h"
#endif

@implementation DisableBatteryOptimizationPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDisableBatteryOptimizationPlugin registerWithRegistrar:registrar];
}
@end

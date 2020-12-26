# disable_battery_optimization

Check for application battery optimization status and disable it

## Getting Started

### Check if app is ignoring battery optimization

```dart
BatteryOptimization.isIgnoringBatteryOptimizations().then((onValue) {
    setState(() {
        if (onValue) {
            // Igonring Battery Optimization
        } else {
            // App is under battery optimization
        }
    });
});
```


### Take user to battery optimization settings
this opens the battery optimization settings.  Apps can be placed on the whitelist through the settings UI

```dart
BatteryOptimization.openBatteryOptimizationSettings();
```

### Show battery optimization disable dialog
this opens the battery optimization disable dialog. Google Play can reject your app for this intent(`ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS`). Check [here](https://developer.android.com/training/monitoring-device-state/doze-standby#exemption-cases)
for exemption cases

```dart
BatteryOptimization.stopOptimizingBatteryUsage();
```
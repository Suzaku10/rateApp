#import "AppRatePlugin.h"
#import <app_rate/app_rate-Swift.h>

@implementation AppRatePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAppRatePlugin registerWithRegistrar:registrar];
}
@end

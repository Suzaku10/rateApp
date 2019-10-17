import Flutter
import UIKit
import StoreKit

public class SwiftAppRatePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "app_rate", binaryMessenger: registrar.messenger())
    let instance = SwiftAppRatePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
//    result("iOS " + UIDevice.current.systemVersion)
    if(call.method == "rate"){
        rateApp()
    }else {
         result("iOS " + UIDevice.current.systemVersion)
    }
  }
    
    private func rateApp() -> Void {
        if #available(iOS 10.3, *) {
            SKStoreReviewController.requestReview()
        } else {
            // Fallback on earlier versions
        }
    }
}

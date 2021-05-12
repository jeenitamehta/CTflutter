import UIKit
import Flutter
import CleverTapSDK
import clevertap_plugin

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    CleverTap.autoIntegrate()
    CleverTapPlugin.sharedInstance()?.applicationDidLaunch(options: launchOptions)

    let profile: Dictionary<String, AnyObject> = [
        //Update pre-defined profile properties
        "Name": "jm" as AnyObject,
        "Email": "ctflutter@gmail.com" as AnyObject,
        //Update custom profile properties
        "Plan type": "Silver" as AnyObject,
        "Favorite Food": "Pizza" as AnyObject
    ]

    CleverTap.sharedInstance()?.onUserLogin(profile)
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

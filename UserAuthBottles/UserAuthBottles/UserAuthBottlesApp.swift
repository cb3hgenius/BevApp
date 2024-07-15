//
//  UserAuthBottlesApp.swift
//  UserAuthBottles
//
//  Created by Charles B on 7/4/24.
//

import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct UserAuthBottlesApp: App {
  // register app delegate for Firebase setup
  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

@StateObject private var vm = LocationsViewModel()
@StateObject private var locationsViewModel = LocationsViewModel()
    
  var body: some Scene {
    WindowGroup {
      NavigationView {
        LoginView()
              .environmentObject(locationsViewModel)
      }
    }
  }
}

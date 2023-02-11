//
//  AppDelegate.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by Алексей on 10.02.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        let window = UIWindow()
        window.rootViewController = RegistrationViewController()
        self.window = window
        self.window?.makeKeyAndVisible()
        
        return true
        
    }
}


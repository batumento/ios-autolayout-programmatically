//
//  AppDelegate.swift
//  AutoLayoutP
//
//  Created by Batuhan Emiroğlu on 18.05.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let appearence = UINavigationBarAppearance()
        appearence.backgroundColor = .systemBlue
        let vc = UINavigationController(rootViewController: SpotiPlayerVC())
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }
}


//
//  AppDelegate.swift
//  StoreProject
//
//  Created by admin on 06.06.2020.
//  Copyright © 2020 Ivan Bolgov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
	
		let vc = ViewController.create()
		let navVC = UINavigationController(rootViewController: vc)
		window = UIWindow()
		window?.rootViewController = navVC
		window?.makeKeyAndVisible()
		
		return true
	}
}


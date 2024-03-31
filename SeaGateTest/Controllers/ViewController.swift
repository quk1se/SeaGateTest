//
//  ViewController.swift
//  SeaGateTest
//
//  Created by moseu on 28.03.2024.
//

import UIKit
import FirebaseCore

class ViewController: UIViewController, UIApplicationDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func application(_ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions:
                     [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()

        return true
      }

}


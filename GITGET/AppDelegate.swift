//
//  AppDelegate.swift
//  GITGET
//
//  Created by Bo-Young PARK on 24/10/2017.
//  Copyright © 2017 Bo-Young PARK. All rights reserved.
//

import UIKit
import Firebase
import Alamofire

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    override init() {
        FirebaseApp.configure()
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        print("//applicationDidFinishLaunchingWithOptions")
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.tintColor = UIColor(red: 0.137, green: 0.604, blue: 0.231, alpha: 1)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let myFieldViewController:MyFieldViewController = storyboard.instantiateViewController(withIdentifier: "MyFieldViewController") as! MyFieldViewController
        let navigationController:UINavigationController = storyboard.instantiateViewController(withIdentifier: "NavigationController") as! UINavigationController
        
        if let currentUserUid:String? = Auth.auth().currentUser?.uid {
            self.window?.rootViewController = myFieldViewController
            self.window?.makeKeyAndVisible()
        }else{
            self.window?.rootViewController = navigationController
            self.window?.makeKeyAndVisible()
        }
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print("//applicationWillResignActive")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("//applicationDidEnterBackground")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("//applicationWillEnterForeground")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("//applicationDidBecomeActive")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("//applicationWillTerminate")
    }
    
    
}


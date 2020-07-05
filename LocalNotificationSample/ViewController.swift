//
//  ViewController.swift
//  LocalNotificationSample
//
//  Created by Kap's on 16/06/20.
//  Copyright © 2020 Kapil. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let content = UNMutableNotificationContent()
        content.title = "Title"
        content.body = "Body"
        //content.badge = 1
        content.sound = UNNotificationSound.default
        //content.launchImageName = "apple"
        content.subtitle = "Subtitle"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false )
        
        let request = UNNotificationRequest(identifier: "testIdentifier", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }

}


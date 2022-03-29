//
//  Logger.swift
//  iosExample
//  
//  Created by kunikuni03 on 2022/03/28
//  
//

import Foundation
import Combine

class Logger {
    @Published var tappedEventName: String = ""

    func Run() {
        let logger = Logger()

        let subscriber = logger.$tappedEventName.sink(receiveValue: { event in
            print("event Name: \(event)")
        })

        logger.tappedEventName = "LoginButton"
        logger.tappedEventName = "CameraButton"
        subscriber.cancel()
        logger.tappedEventName = "LogoutButton"
    }
}


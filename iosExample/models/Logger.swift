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
    var tappedEvent = CurrentValueSubject<String, Never>("")

    func Run() {
        let logger = Logger()

        let subscriber = logger.tappedEvent.sink(receiveValue: { event in
            print("event Name: \(event)")
        })

        logger.tappedEvent.send("LoginButton")
        logger.tappedEvent.value = "CameraButton"
        subscriber.cancel()
        logger.tappedEvent.send("LogoutButton")
    }
}


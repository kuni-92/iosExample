//
//  iosExampleApp.swift
//  iosExample
//  
//  Created by kunikuni03 on 2022/03/25
//  
//

import SwiftUI

@main
struct iosExampleApp: App {
    @StateObject private var data = DataModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(data)
        }
    }
}

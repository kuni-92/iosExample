//
//  CardModel.swift
//  iosExample
//  
//  Created by kunikuni03 on 2022/03/30
//  
//

import Foundation
import SwiftUI

struct CardModel: Identifiable {
    let id: UUID = UUID()
    let icon: String
    let title: String
    let url: String

    init(icon: String, title: String, url: String) {
        self.icon = icon
        self.title = title
        self.url = url
    }
}

//
//  DataModel.swift
//  iosExample
//  
//  Created by kunikuni03 on 2022/03/27
//  
//

import Foundation

class DataModel: ObservableObject {
    @Published var number: Int

    init() {
        self.number = 0
    }
}

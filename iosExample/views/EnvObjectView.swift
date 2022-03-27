//
//  EnvObjectView.swift
//  iosExample
//  
//  Created by kunikuni03 on 2022/03/27
//  
//

import SwiftUI

struct EnvObjectView: View {
    @EnvironmentObject var data: DataModel
    var body: some View {
        Text("Environment Object value is : \(data.number)")
        Button("Tap") {
            data.number += 1
        }
    }
}

struct EnvObjectView_Previews: PreviewProvider {
    static var previews: some View {
        EnvObjectView()
    }
}

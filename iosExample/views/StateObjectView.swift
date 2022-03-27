//
//  StateObjectView.swift
//  iosExample
//  
//  Created by kunikuni03 on 2022/03/27
//  
//

import SwiftUI

struct StateObjectView: View {
    @StateObject private var data = DataModel()
    var body: some View {
        VStack {
            Button("CountUp") {
                data.number += 1
            }
            Text("Current number is : \(data.number)")

            NavigationLink(destination: ChildObjectView(data: data)) {
                Text("Jamp to child View")
            }
        }
    }
}

struct StateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectView()
    }
}

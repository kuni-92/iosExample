//
//  ContentView.swift
//  iosExample
//  
//  Created by kunikuni03 on 2022/03/25
//  
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView(), label: {
                    Text("Jamp to Second View")
                })

                NavigationLink(destination: StateObjectView()) {
                    Text("Jamp to StateObject")
                }

                Button("Logger Run") {
                    let logger = Logger()
                    logger.Run()
                }
            }
        }
        .navigationTitle("NavigationTitle")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

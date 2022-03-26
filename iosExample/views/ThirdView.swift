//
//  ThirdView.swift
//  iosExample
//  
//  Created by kunikuni03 on 2022/03/25
//  
//

import SwiftUI

struct ThirdView: View {
    @State private var isPresentedAlert: Bool = false
    @State private var isPresentedSheet: Bool = false
    var body: some View {
        VStack {
            Text("Third View")

            Button(action: {
                isPresentedAlert.toggle()
            }) {
                Text("Presented alert")
            }
            .alert("Alert title", isPresented: $isPresentedAlert, actions: {
                Button(action: {
                    print("Alert clicked")
                }, label: {
                    Text("Alert OK")
                })
            })

            Button(action: {
                isPresentedSheet.toggle()
            }) {
                Text("Presented Sheet")
            }
            .sheet(isPresented: $isPresentedSheet, content: {
                Text("I am Sheet")
            })
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}

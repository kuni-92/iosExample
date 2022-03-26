//
//  SecondView.swift
//  iosExample
//  
//  Created by kunikuni03 on 2022/03/25
//  
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Text("I am Second View")
        NavigationLink(destination: ThirdView()) {
           Text("Jamp to Next View")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

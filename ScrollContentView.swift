//
//  ScrollContentView.swift
//  iosExample
//  
//  Created by kunikuni03 on 2022/03/25
//  
//

import SwiftUI

struct ScrollContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                ForEach(1 ..< 100) {index in
                    HStack {
                        Text("music \(index)")
                        Image(systemName: "play")
                    }
                    .padding()
                }
            }
        }
    }
}

struct ScrollContentView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollContentView()
    }
}

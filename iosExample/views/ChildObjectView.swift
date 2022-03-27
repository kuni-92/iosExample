//
//  ChildObjectView.swift
//  iosExample
//  
//  Created by kunikuni03 on 2022/03/27
//  
//

import SwiftUI

struct ChildObjectView: View {
    @ObservedObject var data: DataModel

    var body: some View {
        Text("ObservedObject value is : \(data.number)")
        Button("Countup") {
            data.number += 1
        }
        NavigationLink(destination: EnvObjectView()) {
            Text("Jamp to Environment Object View")
        }
    }
}

struct ChildObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ChildObjectView(data: DataModel())
    }
}

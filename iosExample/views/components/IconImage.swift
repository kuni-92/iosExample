//
//  IconImage.swift
//  iosExample
//  
//  Created by kunikuni03 on 2022/03/30
//  
//

import SwiftUI

struct IconImage: View {
    let image: UIImage
    var body: some View {
        Image(uiImage: image)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 2))
    }
}

struct IconImage_Previews: PreviewProvider {
    static var previews: some View {
        let image = UIImage(systemName: "person")!
        IconImage(image: image)
    }
}

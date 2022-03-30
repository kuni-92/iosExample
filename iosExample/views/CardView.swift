//
//  CardView.swift
//  iosExample
//  
//  Created by kunikuni03 on 2022/03/30
//  
//

import SwiftUI

struct CardView: View {
    let card: CardModel

    var body: some View {
        HStack {
            IconImage(image: UIImage(systemName:card.icon)!)
                .frame(width: 60, height: 60)
                .shadow(color: .gray, radius: 3, x: 0, y: 0)
            VStack {
                Text(card.title)
                Text(card.url)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let card = CardModel(icon: "person", title: "TITLE TEXT", url: "http://.....")
        CardView(card: card)
    }
}

//
//  CardListView.swift
//  iosExample
//  
//  Created by kunikuni03 on 2022/03/30
//  
//

import SwiftUI

struct CardListView: View {
    var cards: [CardModel] = [
        CardModel(icon: "person", title: "Title Text", url: "http://localhost"),
        CardModel(icon: "person", title: "Title Text", url: "http://localhost"),
        CardModel(icon: "person", title: "Title Text", url: "http://localhost"),
    ]

    var body: some View {
        ScrollView {
            ForEach(cards) { card in
                CardView(card: card)
                    .border(.black)
            }
        }
    }
}

struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView()
    }
}

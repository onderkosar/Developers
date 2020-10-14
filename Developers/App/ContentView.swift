//
//  ContentView.swift
//  Developers
//
//  Created by Önder Koşar on 13.10.2020.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var cards: [Card] = cardData
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            } //: HSTACK
            .padding(20)
        } //: SCROLL VİEW
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
    }
}

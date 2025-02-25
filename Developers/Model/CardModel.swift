//
//  CardModel.swift
//  Developers
//
//  Created by Önder Koşar on 14.10.2020.
//

import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}

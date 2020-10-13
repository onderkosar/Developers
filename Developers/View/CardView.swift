//
//  CardView.swift
//  Developers
//
//  Created by Önder Koşar on 13.10.2020.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    var gradient: [Color] = [Color("Color01"), Color("Color02")]
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image("developer-no1")
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text("Better apps. Less code.")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            } //: VSTACK
            .offset(y: -218)
            
            Button(action: {
                print("Button was tapped.")
            }) {
                HStack {
                    Text("Learn".uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .accentColor(Color.white)
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(Color.white)
                } //: HSTACK
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            } //: BUTTON
            .offset(y: 210)
        } //: ZSTACK
        .frame(width: 335, height: 525)
        .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

// MARK: PREVIEW
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}

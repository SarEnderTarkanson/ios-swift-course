//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Alpy on 25/07/2025.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    var body: some View {
        HStack {
            //Left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)

            //Exchange rate text
            Text(text)

            //Right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)

        }
    }
}

#Preview {
    ExchangeRate(
        leftImage: .silverpiece,
        text: "1 silver piece = 4 silver pennies",
        rightImage: .silverpenny
    )
}

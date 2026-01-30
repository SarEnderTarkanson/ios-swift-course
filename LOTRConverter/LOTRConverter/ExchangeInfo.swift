//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Alpy on 26/01/2026.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack{
            //Background parchment image
            
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                //Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                //Description text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                //Exchange rates
                ExchangeRate(leftImage: .goldpiece, text: "1 gold piece = 4 gold pennies", rightImage: .goldpenny)

                ExchangeRate(leftImage: .goldpenny, text: "1 gold penny = 4 silver pieces", rightImage: .silverpiece)

                ExchangeRate(leftImage: .silverpiece, text: "1 silver piece = 4 silver pennies", rightImage: .silverpenny)
                
                ExchangeRate(leftImage: .silverpenny, text: "1 silver penny = 100 copper pennies", rightImage: .copperpenny)
                //Done button
                Button("Done"){
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}

//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Alpy on 28/07/2025.
//

import SwiftUI

struct SelectCurrency: View {

    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)

            VStack {
                //Text
                Text("Select the currnecy you are starting with")
                    .fontWeight(.bold)

                //Currency icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        CurrencyIcon(
                            currencyImage: currency.image,
                            currencyName: currency.name
                        )
                    }

                }
                //Text
                Text("Select the currency you would like to convert to")
                    .fontWeight(.bold)

                //Currency icons

                //Done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }

    }
}

#Preview {
    SelectCurrency()
}

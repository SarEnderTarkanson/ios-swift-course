//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Alpy on 20/07/2025.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    var body: some View {
        ZStack {
            // Background Image
            Image(.background)
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)

                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)

                //Conversion Section

                HStack {
                    //Left conversion section
                    VStack {
                        //Currency
                        HStack {
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)

                            //Currency text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom, -5)
                        //Text Field
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                    }
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)

                    //Right conversion section
                    VStack {
                        //Currency
                        HStack {
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)

                        }
                        .padding(.bottom, -5)
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)

                Spacer()

                HStack {
                    Spacer()
                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                    .sheet(isPresented: $showExchangeInfo) {
                        ExchangeInfo()
                    }
                }

            }
            //.border(.blue)
        }
    }
}

#Preview {
    ContentView()
}

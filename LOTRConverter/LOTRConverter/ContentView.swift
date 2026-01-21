//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Alpy on 15/01/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            //Background Image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack{
                //Prancing Pony Image View
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    
                //Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    
                //Conversion section
                HStack {
                    //Left conversion section
                    VStack {
                        //Currency
                        HStack{
                            //Currency Image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            //Currency Text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        //Text field
                        Text("Text Field")
                    }
                    //Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    //Right conversion section
                    VStack {
                        //Currency
                        HStack{
                            //Currency Text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            //Currency Image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        //Text field
                        Text("Text Field")
                    }
                }
                
                Spacer()
                //Info Button
                Image(systemName: "info.circle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    
            }
//            .border(.blue)
        }
    }
}

#Preview {
    ContentView()
}

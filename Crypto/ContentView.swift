//
//  ContentView.swift
//  Weather
//
//  Created by froehly jean-baptiste on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        var selectedUnit: String = "$"
        var buttonUnit: String = "€"
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                HStack
                {
                    Text("Crypto App ")
                        .font(.largeTitle).bold()
                        .foregroundStyle(.green)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.clockwise.circle")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundStyle(Color.green)
                            
                    }
                }
                
                
                HStack {
                    Image(systemName: "calendar.circle.fill")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .foregroundStyle(Color.green)
                    
                    Text("Monday September 13, 2025")
                        .font(.headline).bold()
                        .foregroundStyle(.green)
                }
                
                Spacer()
                Spacer()
                
                HStack(spacing: 30) {
                    CurrencyList(currency: "BIT", imageName: "bitcoin", value: 51, symbol: "\(selectedUnit)")
                    CurrencyList(currency: "ETH", imageName: "ethereum", value: 21, symbol: "\(selectedUnit)")
                    CurrencyList(currency: "XRP", imageName: "ripple", value: 6, symbol: "\(selectedUnit)")
                    CurrencyList(currency: "XLM", imageName: "stellar", value: 11, symbol: "\(selectedUnit)")
                }
                
                Spacer()
                Spacer()
                
                Button {
                    if (selectedUnit == "$") {
                        selectedUnit = "€"
                        buttonUnit = "$"
                    } else {
                        selectedUnit = "$"
                        buttonUnit = "€"
                    }
                    print("Change unit to \(selectedUnit)")
                } label: {
                    Text("Convert to \(buttonUnit)")
                        .frame(width: 280, height: 50)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .font(.title2).bold()
                        .cornerRadius(12)
                }
                
                Spacer()
            }
        }
    }
}

struct CurrencyList: View {
    
    var currency: String
    var imageName: String
    var value: Int
    var symbol: String
    
    var body: some View {
        VStack {
            Text(currency)
                .font(.title2)
                .foregroundStyle(.white)
            
            Image(imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            
            Text("\(symbol) \(value)k")
                .font(.title2)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}

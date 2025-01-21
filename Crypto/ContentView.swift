//
//  ContentView.swift
//  Crypto
//
//  Created by froehly jean-baptiste on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var isEur : Bool = false
    @State var hehe: [Currency] = [
        Currency(currency: "BIT", imageName: "bitcoin", value: 51),
        Currency(currency: "ETH", imageName: "ethereum", value: 21),
        Currency(currency: "XRP", imageName: "ripple", value: 6),
        Currency(currency: "XLM", imageName: "stellar", value: 11)
    ]
    
    var body: some View {
        

        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                HStack
                {
                    Text("Crypto App ")
                        .font(.largeTitle).bold()
                        .foregroundStyle(.mint)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.clockwise.circle")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundStyle(Color.mint)
                            
                    }
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "calendar.circle.fill")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .foregroundStyle(Color.mint)
                    
                    
                    Text(" Monday September 13, 2025")
                        .font(.title3).bold()
                        .foregroundStyle(.white)
                }
                Spacer()
                
                Spacer()
                Spacer()
                
                HStack(spacing: 30) {
                    CurrencyList(currency: hehe[0], isEur: isEur)
                    CurrencyList(currency: hehe[1], isEur: isEur)
                    CurrencyList(currency: hehe[2], isEur: isEur)
                    CurrencyList(currency: hehe[3], isEur: isEur)
                }
                
                Spacer()
                Spacer()
                
                Button {
                    print("Change unit to \(isEur ? "$":"€")")
                    isEur.toggle()
                } label: {
                    Text("Convert to \(isEur ? "$":"€")")
                        .frame(width: 280, height: 50)
                        .background(Color.mint)
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
    
    var currency: Currency
    var isEur : Bool
    
    var body: some View {
        VStack {
            Text(currency.currency)
                .font(.title2)
                .foregroundStyle(.white)
            
            Image(currency.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            
            Text("\(isEur ? "€":"$") \(currency.value)k")
                .font(.title2)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}

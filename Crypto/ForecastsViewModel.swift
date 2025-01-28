//
//  ForecastsViewModel.swift
//  Crypto
//
//  Created by froehly jean-baptiste on 28/01/2025.
//

import Foundation

class ForecastsViewModel: ObservableObject {
    @Published var forecasts: [CurrencyList] = []
    
    init() {
        getForecasts()
    }
    
    func getForecasts() {
        var newForecasts: [CurrencyList] = [
            CurrencyList(currency: "BIT",imageName: "bitcoin", value: 51)
            CurrencyList(currency: "ETH",imageName: "ethereum", value: 21)
            CurrencyList(currency: "XRP",imageName: "ripple", value: 6)
            CurrencyList(currency: "XLM",imageName: "stellar", value: 11)
        ]
        
        self.forecasts += newForecasts
    }
    
    func reloadPrices() {
        for i in 0..<forecasts.count {
            forecasts[i].value += 1
        }
    }
}

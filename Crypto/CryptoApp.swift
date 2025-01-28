//
//  CryptoApp.swift
//  Crypto
//
//  Created by froehly jean-baptiste on 14/01/2025.
//

import SwiftUI

@main
struct CryptoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ForecastsViewModel())
        }
    }
}

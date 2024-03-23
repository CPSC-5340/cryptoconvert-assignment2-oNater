//
//  CryptoExchangeViewModel.swift
//  Assignment2
//
//  Created by user250623 on 3/22/24.
//

import Foundation

class CryptoExchangeViewModel: ObservableObject {
    @Published var bitcoinAmount: String = ""
    
    let conversionRates = [
        "USD": 42000.00, 
        "ETH": 14.0,
        "Tether": 42000,
        "BNB": 120.0,
        "USD Coin": 42000,
        "XRP": 39200.0
    ]
    
    var convertedValues: [(String, Double)] {
        guard let bitcoin = Double(bitcoinAmount) else { return [] }
        return conversionRates.map { ($0.key, $0.value * bitcoin) }
    }
}


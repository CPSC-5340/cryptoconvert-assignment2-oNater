//
//  CurrencyExchangeView.swift
//  Assignment2
//
//  Created by user250623 on 3/22/24.
//

import SwiftUI

struct CurrencyExchangeView: View {
    let conversions = [
        ("USD", "1 USD = 1 USD", "us_flag"),
        ("JPY", "1 USD = 113.5 Yen", "japan_flag"),
        ("CAD", "1 USD = 1.27 Canadian Dollars", "canada_flag"),
        ("MXN", "1 USD = 20.18 Peso", "mexico_flag"),
        ("AUD", "1 USD = 1.35 Australian Dollars", "australia_flag"),
        ("INR", "1 USD = 73.65 Rupee", "india_flag")
    ]
    
    @State private var selectedCurrency: String?

    var body: some View {
        List(conversions, id: \.0) { currency, conversion, flagName in
            Button(action: {
                // Toggle selection
                if selectedCurrency == currency {
                    selectedCurrency = nil
                } else {
                    selectedCurrency = currency
                }
            }) {
                HStack {
                    if selectedCurrency == currency {
                        Text(conversion)
                    } else {
                        Image(flagName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .cornerRadius(8)
                        
                        Text(currency)
                            .foregroundColor(.primary)
                    }
                }
            }
            .buttonStyle(PlainButtonStyle())
        }
        .navigationTitle("1 USD Exchange Rate")
    }
}

struct CurrencyExchangeView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyExchangeView()
    }
}


//  CryptoExchangeView.swift
//  Assignment2
//
//  Created by user250623 on 3/22/24.
//

import SwiftUI

struct CryptoExchangeView: View {
    @StateObject private var viewModel = CryptoExchangeViewModel()

    var body: some View {
        VStack {
            TextField("Enter number of Bitcoins", text: $viewModel.bitcoinAmount)
                .padding()
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            List(viewModel.convertedValues, id: \.0) { currency, value in
                Text("BTC to \(currency): \(String(format: "%.2f", value))")
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Crypto Exchange")
    }
}


#Preview {
    CryptoExchangeView()
}

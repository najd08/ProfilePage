//
//  HomeView.swift
//  ProfilePage
//
//  Created by Najd on 17/09/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Exchange Rates")
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom, 30)
                        .padding(.top, 33)
                        .foregroundColor(.primary)

                    Image("Image") 
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                        .padding(.bottom, 25)

                    VStack(alignment: .leading, spacing: 16) {
                        exchangeRateRow(from: "🇺🇸 USD", to: "🇪🇺 EUR", rate: "0.8993")
                        exchangeRateRow(from: "🇺🇸 USD", to: "🇬🇧 GBP", rate: "0.7574")
                        exchangeRateRow(from: "🇺🇸 USD", to: "🇯🇵 JPY", rate: "140.5925")
                        exchangeRateRow(from: "🇺🇸 USD", to: "🇨🇦 CAD", rate: "1.3582")
                        exchangeRateRow(from: "🇺🇸 USD", to: "🇦🇪 AED", rate: "3.6725")
                        exchangeRateRow(from: "🇺🇸 USD", to: "🇮🇳 INR", rate: "83.8880")
                        exchangeRateRow(from: "🇺🇸 USD", to: "🇦🇺 AUD", rate: "1.4826")
                        exchangeRateRow(from: "🇺🇸 USD", to: "🇲🇽 MXN", rate: "19.2416")
                        exchangeRateRow(from: "🇺🇸 USD", to: "🇸🇦 SAR", rate: "3.7500")
                    }
                    .padding()
                }
                .padding()
            }
        }
    }
    
    private func exchangeRateRow(from base: String, to target: String, rate: String) -> some View {
        HStack {
            Text("\(base) to \(target):")
                .font(.headline)
                .foregroundColor(.secondary)
            Spacer()
            Text(rate)
                .font(.body)
                .bold()
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    HomeView()
}

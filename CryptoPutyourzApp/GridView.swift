//
//  GridView.swift
//  CryptoPutyourzApp
//
//  Created by Putut Yusri Bahtiar on 16/09/23.
//

import SwiftUI

struct GridView: View {
    let items: [Item]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [
                    GridItem(.flexible(minimum: 100, maximum: .infinity)),
                    GridItem(.flexible(minimum: 100, maximum: .infinity))
                    // Add more GridItem as needed for your desired layout
                ], spacing: 16) {
                    ForEach(items) { item in
                        GridItemView(item: item)
                    }
                }
                .padding()
            }
        }
    }
}


struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleItems = [
            Item(name: "BTC", balance: 4.485, balanceReal: 97305),
            Item(name: "ETH", balance: 11.20, balanceReal: 34253),
            Item(name: "XRP", balance: 234.20, balanceReal: 11864),
            Item(name: "LTC", balance: 319.45, balanceReal: 19485)
        ]
        GridView(items: sampleItems)
    }
}

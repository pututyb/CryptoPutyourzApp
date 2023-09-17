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
                    GridItem(.flexible(minimum: 60, maximum: .infinity)),
                    GridItem(.flexible(minimum: 60, maximum: .infinity)),
                    GridItem(.flexible(minimum: 60, maximum: .infinity)),
                    GridItem(.flexible(minimum: 60, maximum: .infinity))
                    // Add more GridItem as needed for your desired layout
                ], spacing: 16) {
                    ForEach(items) { item in
                        GridItemView(item: item)
                    }
                }
                .padding()
            }
            .navigationTitle("Grid View")
        }
    }
}


struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleItems = [
            Item(name: "Item 1"),
            Item(name: "Item 2"),
            Item(name: "Item 3"),
            Item(name: "Item 4"),
            Item(name: "Item 5"),
            // Add more items as needed
        ]
        GridView(items: sampleItems)
    }
}

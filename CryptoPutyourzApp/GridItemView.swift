//
//  GridItemView.swift
//  CryptoPutyourzApp
//
//  Created by Putut Yusri Bahtiar on 16/09/23.
//

import SwiftUI

struct GridItemView: View {
    let item: Item
    
    var body: some View {
        NavigationLink(destination: DetailView(item: item)) {
            VStack {
                Text(item.name)
                    .font(.headline)
                    .foregroundColor(.primary)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 3)
        }
    }
}


struct GridItemView_Previews: PreviewProvider {
    static var previews: some View {
        GridItemView(item: Item(name: "Item 1"))
    }
}

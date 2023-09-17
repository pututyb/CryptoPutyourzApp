//
//  DetailView.swift
//  CryptoPutyourzApp
//
//  Created by Putut Yusri Bahtiar on 16/09/23.
//

import SwiftUI

struct DetailView: View {
    let item: Item
    
    var body: some View {
        Text("Detail View for \(item.name)")
            .navigationTitle(item.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: Item(name: "Item 1"))
    }
}

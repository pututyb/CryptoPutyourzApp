//
//  Item.swift
//  CryptoPutyourzApp
//
//  Created by Putut Yusri Bahtiar on 16/09/23.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    let name: String
}

let items = [
    Item(name: "Item 1"),
    Item(name: "Item 2"),
    Item(name: "Item 3"),
    Item(name: "Item 4"),
    Item(name: "Item 5"),
    Item(name: "Item 6")
]

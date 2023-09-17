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
    let balance: Double
    let balanceReal : Int
}

let items = [
    Item(name: "BTC", balance: 4.485, balanceReal: 97305),
    Item(name: "ETH", balance: 11.20, balanceReal: 34253),
    Item(name: "XRP", balance: 22934, balanceReal: 11864),
    Item(name: "LTC", balance: 319.45, balanceReal: 19485)
]

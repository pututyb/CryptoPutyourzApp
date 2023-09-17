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
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Image(systemName: "dollarsign.circle.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.black)
                    
                    VStack(alignment: .leading) {
                        Text(item.name)
                            .foregroundColor(.black)
                            .font(.system(size: 18, weight: .semibold))
                        HStack(spacing: 0) {
                            Text(String(format: "%.2f", item.balance))
                                .font(.system(size: 14,weight: .light))
                            Text(item.name)
                                .font(.system(size: 14, weight: .light))
                        }
                        .foregroundColor(.black)
                        .opacity(0.7)
                    }
                    .padding(.leading)
                }
                
                Text("Balance")
                    .font(.system(size: 12, weight: .light))
                    .foregroundColor(.black)
                
                HStack {
                    Text("$\(item.balanceReal)")
                        .foregroundColor(.black)
                    
                    Text("+4.6%")
                        .foregroundColor(.green)
                        .font(.system(size: 12, weight: .light))
                        .padding(.leading)
                }
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
        GridItemView(item: Item(name: "BTC", balance: 10.2, balanceReal: 100293))
    }
}

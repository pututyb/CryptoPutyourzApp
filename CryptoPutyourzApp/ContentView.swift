//
//  ContentView.swift
//  CryptoPutyourzApp
//
//  Created by Putut Yusri Bahtiar on 16/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var balanceIsHidden = false
    @State private var selectedMoneys = 0
    
    @State private var isTextFieldVisible = false
    @State private var searchText = ""
    
    let moneys = ["USD", "IDR"]
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    HStack {
                        Button {
                            print("Button Menu")
                        } label: {
                            ZStack {
                                Image(systemName: "circle.grid.2x2")
                                    .resizable()
                                    .foregroundColor(.primary)
                                    .frame(width: geometry.size.width * 0.04, height: geometry.size.width * 0.04)
                                
                                Rectangle()
                                    .stroke(Color.black, lineWidth: 2)
                                    .frame(width: geometry.size.width * 0.06, height: geometry.size.width * 0.06)
                                    .cornerRadius(2)
                                    .opacity(0.4)
                            }
                        }
                        .padding(.leading)
                        
                        Spacer()
                        
                        Text("My Wallet")
                            .font(.system(size: geometry.size.width * 0.06, weight: .semibold))
                        
                        Spacer()
                        
                        Button {
                            print("Button Profile")
                        } label: {
                            Image("ricardo")
                                .resizable()
                                .frame(width: geometry.size.width * 0.1, height: geometry.size.width * 0.1)
                                .clipShape(Rectangle())
                                .cornerRadius(geometry.size.width * 0.02)
                        }
                        .padding(.trailing)
                    }
                    HStack {
                        Text("Total Balance")
                            .font(.system(size: geometry.size.width * 0.03, weight: .light))
                            .padding(.leading)
                        Button {
                            balanceIsHidden.toggle()
                        } label: {
                            Image(systemName: balanceIsHidden ? "eye" : "eye.slash")
                                .foregroundColor(.black)
                        }
                        
                        Spacer()
                        
                        Picker("", selection: $selectedMoneys) {
                            ForEach(0..<moneys.count, id: \.self) { index in
                                Text(moneys[index])
                                    .tag(index)
                                    .bold()
                                    .font(.system(size: geometry.size.width * 0.1))
                            }
                        }
                        .pickerStyle(DefaultPickerStyle())
                        .accentColor(.black)
                        .padding(.top)
                        
                    }
                    HStack {
                        Text(balanceIsHidden ? "*********" : "$29,637.00")
                            .font(.system(size: geometry.size.width * 0.1, weight: .heavy))
                            .padding(.leading)
                        
                        Spacer()
                        
                        Text("+175 (4.6%)")
                            .foregroundColor(.green)
                            .font(.system(size: geometry.size.width * 0.045))
                            .padding(.trailing)
                    }
                    HStack {
                        Button(action: {
                            
                        }) {
                            HStack {
                                Image(systemName: "arrow.down.to.line.compact")
                                    .bold()
                                Text("Deposit")
                                    .font(.system(size: geometry.size.width * 0.05, weight: .bold))
                            }
                            .padding()
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: geometry.size.width * 0.05)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                            .padding(.leading)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            HStack {
                                Image(systemName: "arrow.up.to.line.compact")
                                    .bold()
                                Text("Withdraw")
                                    .font(.system(size: geometry.size.width * 0.05, weight: .bold))
                            }
                            .foregroundColor(.white)
                            .padding()
                            .background(.black)
                            .cornerRadius(geometry.size.width * 0.05)
                            .padding(.trailing)
                        }
                    }
                    .padding()
                    
                    HStack {
                        Text("My Assets")
                            .font(.system(size: 24, weight: .semibold))
                        
                        Spacer()
                        
                        Image(systemName: "magnifyingglass")
                            .frame(width: geometry.size.width * 0.08, height: geometry.size.width * 0.08)
                            .overlay(
                                RoundedRectangle(cornerRadius: geometry.size.width * 0.01)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                            .onTapGesture {
                                withAnimation {
                                    isTextFieldVisible.toggle()
                                }
                            }
                    }
                    .padding()
                    
                    if isTextFieldVisible {
                        TextField("Search", text: $searchText)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .onTapGesture {
                                // Handle tap on the TextField if needed
                            }
                            .padding(.horizontal)
                    }
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

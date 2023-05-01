//
//  Butikk.swift
//  xcodelevering
//
//  Created by Magnus Holth Nysveen on 30/04/2023.
//

import SwiftUI

struct Shop: View {

    @State var goToCart = false

    var columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var items: [[Any]] = shopItems

    var body: some View {
        VStack(spacing: 5) {
            VStack {
                Text("Velkommen")
                    .frame(width: 320, alignment: .leading)
                    .foregroundColor(.gray)
                Text("Magnus Sin Kule Butikk")
                        .font(.system(size: 38, weight: .semibold, design: .rounded))
                        .frame(width: 320, alignment: .leading)
                Spacer().frame(height: 75)
                Text("Klær")
                    .frame(width: 320, alignment: .leading)
                    .foregroundColor(.gray)

            }.padding(20)
            ScrollView() {
                LazyVGrid(columns: columns, spacing: 30) {
                    ForEach(0..<items.count, id:\.self) { item in
                        Produkter(imageName: items[item][0] as! String, title: items[item][1] as! String, price: items[item][2] as! Double, color: items[item][3] as! Color, selfIndex: item)
                    }
                }
            }.padding(15)
        }
        .navigationDestination(isPresented: $goToCart) {
            BasketView()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button() {
                    goToCart = true
                }label: { 
                }
            }
        }
    }
}

 

struct Shop_Previews: PreviewProvider {
    static var previews: some View {
        Shop()
    }
}

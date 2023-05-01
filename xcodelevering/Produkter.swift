//
//  Produkter.swift
//  xcodelevering
//
//  Created by Magnus Holth Nysveen on 30/04/2023.
//

import SwiftUI

 

struct Produkter: View {

    var imageName: String
    var title: String
    var price: Double
    var color: Color
    var selfIndex: Int

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(color)
                .opacity(0.25)
                .frame(width: 170, height: 230)
            VStack {
                Image(imageName)
                    .resizable()
                    .frame(width: 80, height: 90)
                Text(title)
                Button() {
                    cartItems.append(shopItems[selfIndex])
                } label: {
                    Text("\(String(format: "%.2f", price))Kr")
                        .foregroundColor(.white)
                        .frame(width: 100, height: 40)
                        .background(color)
                }
            }
        }
    }
}

 

struct ShopItem_Previews: PreviewProvider {
    static var previews: some View {
        Produkter(imageName: "sekk", title: "Sekk", price: 400.00, color: Color.green, selfIndex: 0)
    }
}

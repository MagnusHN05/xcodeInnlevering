//
//  ContentView.swift
//  xcodelevering
//
//  Created by Magnus Holth Nysveen on 30/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            MainView()
                .tabItem(){
                Image(systemName: "tshirt.fill")
                Text("Butikk")
                }
            BasketView()
                .tabItem(){
                Image(systemName: "basket.fill")
                Text("Basket")
                }
            ProfilView()
                .tabItem(){
                Image(systemName: "person.fill")
                Text("Profil")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

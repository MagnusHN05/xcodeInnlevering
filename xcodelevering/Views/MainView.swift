//
//  MainView.swift
//  xcodelevering
//
//  Created by Magnus Holth Nysveen on 30/04/2023.
//

import SwiftUI

 

struct MainView: View {

    @State var changeScreen = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 50) {
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                Text("Velkommen tilbake!")
                    .font(.system(size: 42, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                Text("Du er logget inn som @Magnus")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                Button() {
                    changeScreen = true
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                        Text("Til Butikk")
                            .foregroundColor(.white)
                            .bold()
                    }
                }.frame(width: 200, height: 70)
                    .foregroundColor(.blue)
            }
            .navigationDestination(isPresented: $changeScreen) {
                Shop()
            }
        }
    }
}

 

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

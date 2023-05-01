//
//  ProfilView.swift
//  xcodelevering
//
//  Created by Magnus Holth Nysveen on 30/04/2023.
//

import SwiftUI

struct ProfilView: View {
    @State private var fornavn = "Magnus"
    @State private var etternavn = "Etternavnson"
    @State private var bursdag = "2005-05-05"
    @State private var email = "example@email.com"
    @State private var adresse = "KoseGata 25A"
    @State private var nyhetsbrev = false
    var body: some View{
        NavigationView{
            Form{
                Section(header: Text("Bruker-Info")){
                    TextField("Fornavn", text: $fornavn)
                    TextField("Etternavn", text: $etternavn)
                    TextField("Bursdag", text: $bursdag)
                    TextField("Adresse", text:$adresse)
                    TextField("Email", text: $email)
                }
                Section(header: Text("Actions")) {
                    Toggle("Send Nyheter", isOn: $nyhetsbrev)
                        .toggleStyle(SwitchToggleStyle(tint: .blue))
                }
                
            }
            .navigationTitle("Bruker-Profil")
        }
    }
    }

struct ProfilView_Previews: PreviewProvider{
    static var previews: some View{
        ProfilView()
    }
}

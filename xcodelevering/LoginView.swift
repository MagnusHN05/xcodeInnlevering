//
//  LoginView.swift
//  xcodelevering
//
//  Created by Magnus Holth Nysveen on 30/04/2023.
//

import SwiftUI

struct LoginView: View {
@State private var username = ""
@State private var password = ""
@State private var wrongusername = 0
@State private var wrongpassword = 0
@State private var showingLoginScreen = false // this state variable will control the navigation

var body: some View{
NavigationView{
ZStack{
Color.blue
.ignoresSafeArea()
Circle()
.scale(1.7)
.foregroundColor(.white.opacity(0.15))
Circle()
.scale(1.35)
.foregroundColor(.white)
VStack{
Text("Login")
.font(.largeTitle)
.bold()
.padding()
TextField("Username", text:$username)
.padding()
.frame(width: 300, height: 50)
.background(Color.black.opacity(0.05))
.cornerRadius(10)
.border(.red, width: CGFloat(wrongusername))
SecureField("Password", text:$password)
.padding()
.frame(width: 300, height: 50)
.background(Color.black.opacity(0.05))
.cornerRadius(10)
.border(.red, width: CGFloat(wrongpassword))
Button("Login"){
//autoriser brukeren
autheticateUser(username: username, password: password)
}
.foregroundColor(.white)
.frame(width: 300,height: 50)
.background(Color.blue)
.cornerRadius(10)

// this navigation link will be activated when showingLoginScreen is true
NavigationLink(destination: ContentView(), isActive: $showingLoginScreen){
EmptyView()
}
}
}
}
}

func autheticateUser(username: String, password: String) {
if username.lowercased() == "magnus"{
wrongusername = 0
if password.lowercased() == "magnus"{
wrongpassword = 0
showingLoginScreen = true // set this to true when login is successful
}
else{
wrongpassword = 2
}
}
else {
wrongusername = 2
}
}
}

struct LoginView_Previews: PreviewProvider {
static var previews: some View {
LoginView()
}
}


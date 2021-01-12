//
//  ContentView.swift
//  BallUp
//
//  Created by Ignacio Jimenez on 1/7/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var email = ""
    @State var password = ""
    @State private var isActive = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 15){
                Spacer()
                Text("Ball Up")
                    .font(.custom("DIN Condensed Bold", size: 80))
                    .font(.system(size: 64, weight: .semibold))
                    .foregroundColor(.white)
                HStack{
                    Image(systemName: "envelope")
                        .foregroundColor(.gray)
                    TextField("email", text: $email)
                }
                .padding(.all, 20)
                .background(Color.white)
                .cornerRadius(12)
                .padding(.horizontal, 20)
                
                HStack{
                    Image(systemName: "lock")
                        .foregroundColor(.gray)
                    SecureField("password", text: $password)
                }
                .padding(.all, 20)
                .background(Color.white)
                .cornerRadius(12)
                .padding(.horizontal, 20)
                
                NavigationLink(destination: Text("Create Account"), isActive: $isActive) {
                    Button(action: {
                        isActive = true
                    } ) {
                        HStack {
                            Text("Create Account")
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                        }
                    }.buttonStyle(CreateButtonStyle())
                }
                
                    Button(action: {} ) {
                        HStack {
                            Text("Login")
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                        }
                    }.buttonStyle(LoginButtonStyle())
                    
                    Spacer()
                    Spacer()
                }.background(
                    Image("basketballcourt")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .overlay(Color.black.opacity(0.4))
                ).edgesIgnoringSafeArea(.all)
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ContentView()
            }
        }
    }


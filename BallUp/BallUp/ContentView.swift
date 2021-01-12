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
    
    var body: some View {
        VStack(spacing: 15){
            Spacer()
            Text("Ball Up")
                .font(.system(size: 64, weight: .semibold))
                .foregroundColor(.white)
            HStack{
                Image(systemName: "envelope")
                    .foregroundColor(.gray)
                TextField("email", text: $email)
            }
            .padding(.all, 20)
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            
            HStack{
                Image(systemName: "lock")
                    .foregroundColor(.gray)
                SecureField("password", text: $password)
            }
            .padding(.all, 20)
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            
            Button(action: {} ) {
                Text("Login")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .medium))
            }.frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(Color.blue.opacity(0.8))
            .cornerRadius(8)
            .padding(.horizontal, 20)
            Spacer()
            Spacer()
        }.background(
        Image("basketballcourt")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        ).edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().previewDevice("iPhone 11")
//            ContentView().previewDevice("iPhone 8")
        }
    }
}

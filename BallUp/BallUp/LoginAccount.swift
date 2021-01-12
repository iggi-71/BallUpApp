//
//  CreateAccount.swift
//  BallUp
//
//  Created by apple on 1/12/21.
//

import SwiftUI

struct LoginAccount: View {
    @State private var isActive = false
    @State var name = "Ignacio"
    @State var age = "18 - 24"
    @State var gender = "Male"
    @State var skill = "Beginner"
    
    
    var body: some View {
        ScrollView{
            VStack {
                HStack {
                    TextField("name", text: $name)
                        .font(.system(size: 28, weight: .semibold))
                    Spacer()
                }
                HStack {
                    TextField("age", text: $age)
                        .font(.system(size: 28, weight: .semibold))
                    Spacer()
                }
                HStack {
                    TextField("gender", text: $gender)
                        .font(.system(size: 28, weight: .semibold))
                    Spacer()
                }
                HStack {
                    
                    TextField("skill", text: $skill)
                        .font(.system(size: 28, weight: .semibold))
                    Spacer()
                    Spacer()
                }
                
                NavigationLink(destination: RemindView(), isActive: $isActive) {
                    Button(action: {
                        isActive = true
                    }, label: {
                        Text("Proceed")
                            .font(.system(size: 24, weight: .medium))
                    })
                }
            }.navigationBarTitle("Check information")
            .buttonStyle(LoginButtonStyleLight())
        }
    }
}


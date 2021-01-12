//
//  CreateAccount.swift
//  BallUp
//
//  Created by apple on 1/12/21.
//

import SwiftUI

struct CreateAccount: View {
    @State private var isActive = false
    var body: some View {
        ScrollView{
            VStack {
                DropdownView()
                DropdownAge()
                DropdownGender()
                DropdownSkill()
                Spacer()
                NavigationLink(destination: StatsShower(), isActive: $isActive) {
                    Button(action: {
                        isActive = true
                    }, label: {
                        Text("Proceed")
                            .font(.system(size: 24, weight: .medium))
                    })
                }
            }.navigationBarTitle("Create Account")
        }
    }
}

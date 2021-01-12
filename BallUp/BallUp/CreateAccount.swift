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
                DropdownView()
                DropdownView()
                DropdownView()
                Spacer()
                NavigationLink(destination: RemindView(),isActive:
                                $isActive {
                                    Button(action: {
                                        isActive = true
                                    }, label: {
                                        Text("Proceed")
                                            .font(.system(size: 24, weight: .medium))
                                    })
                                }.navigationBarTitle("Create")
                                .navigationBarBackButtonHidden(true)
                )}
        }
    }
}

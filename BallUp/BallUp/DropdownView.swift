//
//  DropdownView.swift
//  BallUp
//
//  Created by apple on 1/12/21.
//

import SwiftUI

struct DropdownView: View {
    
    @State var name = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("Name")
                    .font(.system(size: 22, weight: .semibold))
                Spacer()
            }.padding(.vertical, 10)
            Button(action: {}) {
                HStack {
                    TextField("name", text: $name)
                        .font(.system(size: 28, weight: .semibold))
                    Spacer()
                }
            }.buttonStyle(LoginButtonStyleLight())
        }.padding(15)
    }
}

struct DropdownView_Preview: PreviewProvider {
    static var previews: some View {
        DropdownView().environment(\.colorScheme, .light)
    }
}

//
//  DropdownView.swift
//  BallUp
//
//  Created by apple on 1/12/21.
//

import SwiftUI

struct DropdownAge: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("Age")
                    .font(.system(size: 22, weight: .semibold))
                Spacer()
            }.padding(.vertical, 10)
            Button(action: {}) {
                HStack {
                    Text("13-17")
                        .font(.system(size: 28, weight: .semibold))
                    Spacer()
                    Image(systemName: "arrowtriangle.down.circle")
                        .font(.system(size: 24, weight: .medium))
                }
            }.buttonStyle(LoginButtonStyleLight())
        }.padding(15)
    }
}

struct DropdownAge_Preview: PreviewProvider {
    static var previews: some View {
        DropdownAge().environment(\.colorScheme, .light)
    }
}

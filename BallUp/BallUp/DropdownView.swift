//
//  DropdownView.swift
//  BallUp
//
//  Created by apple on 1/12/21.
//

import SwiftUI

struct DropdownView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Name")
                    .font(.system(size: 22, weight: .semibold))
                Spacer()
            }.padding(.vertical, 10)
            Button(action: {}) {
                HStack {
                    Text("Iggi")
                        .font(.system(size: 28, weight: .semibold))
                    Spacer()
                    Image(systemName: "arrowtriangle.down.circle")
                        .font(.system(size: 24, weight: .medium))
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

//
//  DropdownGender.swift
//  BallUp
//
//  Created by apple on 1/12/21.
//

import SwiftUI

struct DropdownGender: View {
    var body: some View {
        VStack {
            HStack {
                Text("Gender")
                    .font(.system(size: 22, weight: .semibold))
                Spacer()
            }.padding(.vertical, 10)
            Button(action: {}) {
                HStack {
                    Text("Male")
                        .font(.system(size: 28, weight: .semibold))
                    Spacer()
                    Image(systemName: "arrowtriangle.down.circle")
                        .font(.system(size: 24, weight: .medium))
                }
            }.buttonStyle(LoginButtonStyleLight())
        }.padding(15)
    }
}

struct DropdownGender_Preview: PreviewProvider {
    static var previews: some View {
        DropdownGender().environment(\.colorScheme, .light)
    }
}

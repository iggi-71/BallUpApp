//
//  LoginButton.swift
//  BallUp
//
//  Created by apple on 1/11/21.
//

import SwiftUI

struct LoginButtonStyleLight: ButtonStyle {
    var fillColor: Color = .lightLoginButton
    func makeBody(configuration: Configuration) -> some View {
        return LoginButtonOne(configuration: configuration,
                           fillColor: fillColor
        )
    }
    
    struct LoginButtonOne: View {
        let configuration: Configuration
        let fillColor: Color
        var body: some View {
            return configuration.label
                .padding(20)
                .background(RoundedRectangle(cornerRadius: 8).fill(
                    fillColor
                ))
        }
    }
}

struct LoginButtonStlyeLight_Preiews: PreviewProvider {
    static var previews: some View {
        Button(action: {}) {
            Text("Create a Challenge")
        }.buttonStyle(LoginButtonStyleLight())
    }
}

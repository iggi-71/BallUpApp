//
//  LoginButton.swift
//  BallUp
//
//  Created by apple on 1/11/21.
//

import SwiftUI

struct LoginButtonStyle: ButtonStyle {
    var fillColor: Color = .darkLoginButton
    func makeBody(configuration: Configuration) -> some View {
        return LoginButton(configuration: configuration,
                           fillColor: fillColor
        )
    }
    
    struct LoginButton: View {
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

struct LoginButtonStlye_Preiews: PreviewProvider {
    static var previews: some View {
        Button(action: {}) {
            Text("Create a Challenge")
        }.buttonStyle(LoginButtonStyle())
    }
}

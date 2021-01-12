//
//  LoginButton.swift
//  BallUp
//
//  Created by apple on 1/11/21.
//

import SwiftUI

struct CreateButtonStyle: ButtonStyle {
    var fillColor: Color = .darkCreateButton
    func makeBody(configuration: Configuration) -> some View {
        return CreateButton(configuration: configuration,
                           fillColor: fillColor
        )
    }
    
    struct CreateButton: View {
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

struct CreateButtonStlye_Preiews: PreviewProvider {
    static var previews: some View {
        Button(action: {}) {
            Text("Create a Challenge")
        }.buttonStyle(CreateButtonStyle())
    }
}

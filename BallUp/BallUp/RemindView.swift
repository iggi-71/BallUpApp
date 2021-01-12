//
//  RemindView.swift
//  BallUp
//
//  Created by apple on 1/12/21.
//

import SwiftUI

struct RemindView: View {
    var body: some View {
        VStack{
            Spacer()
            DropdownView()
            Spacer()
            Button(action:{}) {
                Text("Proceed")
                    .font(.system(size: 24, weight: .medium))
            }.navigationTitle("About Me")
        }
    }
    
    
    struct RemindView_Preview: PreviewProvider {
        static var previews: some View {
            NavigationView{
                RemindView()
            }
        }
    }
}

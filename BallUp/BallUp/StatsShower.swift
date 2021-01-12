//
//  StatsShower.swift
//  BallUp
//
//  Created by apple on 1/12/21.
//

import SwiftUI

struct StatsShower: View {
    @State var wins = ""
    @State var games = ""
    @State var scored = ""
    @State var against = ""
    
    var body: some View {
        VStack{
            VStack(spacing: 15){
                HStack{
                    Image(systemName: "")
                        .foregroundColor(.gray)
                    Text("Wins:")
                    TextField("Wins", text: $wins)
                }
                .padding(.all, 20)
                .background(Color.white)
                .cornerRadius(12)
                .padding(.horizontal, 20)
                
                HStack{
                    Image(systemName: "")
                        .foregroundColor(.gray)
                    Text("Games Played:")
                    TextField("Games Player", text: $games)
                }
                .padding(.all, 20)
                .background(Color.white)
                .cornerRadius(12)
                .padding(.horizontal, 20)
                HStack{
                    Image(systemName: "")
                        .foregroundColor(.gray)
                    Text("Points Scored:")
                    TextField("Points Scored", text: $scored)
                }
                .padding(.all, 20)
                .background(Color.white)
                .cornerRadius(12)
                .padding(.horizontal, 20)
                
                HStack{
                    Image(systemName: "")
                        .foregroundColor(.gray)
                    Text("Points Scored on you:")
                    TextField("Opponent Points", text: $against)
                }
                .padding(.all, 20)
                .background(Color.white)
                .cornerRadius(12)
                .padding(.horizontal, 20)
            }
            
            Spacer()
            Button(action:{}) {
                Text("Calculate")
                    .font(.system(size: 24, weight: .medium))
            }.navigationTitle("My Stats Grade")
        }
    }
    
    
    
    struct StatsShower_Preview: PreviewProvider {
        static var previews: some View {
            NavigationView{
                StatsShower()
            }
        }
    }
}

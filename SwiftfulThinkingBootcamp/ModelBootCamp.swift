//
//  ModelBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 06.04.23.
//

import SwiftUI

struct userModel: Identifiable {
    let id = UUID().uuidString
    let displayName : String
    let userName : String
    let followerCount : Int
    let isVerified : Bool
    
    
}



struct ModelBootCamp: View {
    @State var users : [userModel] =
    [userModel(displayName: "Nich", userName: "Nick123", followerCount: 100, isVerified: true),
     userModel(displayName: "Emily", userName: "Emily1995", followerCount: 123, isVerified: false),
     userModel(displayName: "Samantha", userName: "ninja", followerCount: 1231, isVerified: true),
     userModel(displayName: "Pere", userName: "Pettypete", followerCount: 1231, isVerified: true)]
    
    //["Nick", "Emily", "Samantha", "Chris"]
    var body: some View {
        NavigationView {
            List{
                ForEach(users) { user in
                    HStack (spacing: 15){
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack (alignment: .leading){
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct ModelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootCamp()
    }
}

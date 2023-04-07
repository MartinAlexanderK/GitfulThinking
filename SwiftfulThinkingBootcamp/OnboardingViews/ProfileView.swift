//
//  ProfileView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 07.04.23.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge : Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack (spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Unknown")
            Text("This user is \(currentUserAge ?? 13212) years old")
            Text("Their gender is \(currentUserGender ?? "unknown")")
            Text("Sign out")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color(.black))
                .cornerRadius(10)
                .onTapGesture {
                    signout()
                }
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
        func signout() {
        currentUserName = nil
        currentUserAge = nil
        withAnimation (.spring()){
            currentUserSignedIn = false

        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

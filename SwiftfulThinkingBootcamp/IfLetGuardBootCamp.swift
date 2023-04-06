//
//  IfLetGuardBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 06.04.23.
//

import SwiftUI

struct IfLetGuardBootCamp: View {
    @State var displayText : String? = nil
    @State var isLoading : Bool = false
    @State var currentUserID: String? = "Testuser"
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing save coding ")
                if let text = displayText {
                    Text(text)
                        .font(.title)}
                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Save Coding")
            .onAppear{
                loadData()
            }
        }
    }
    func loadData(){
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                displayText = "Peace out: user id is \(userID)"
                isLoading = false
            }
        }
        else {
            displayText = "Error, there is no user id"
        }
    }
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error, there is no user id"
            return
        }
        // if it works, we are continuing with the current code.
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            displayText = "Peace out: user id is \(userID)"
            isLoading = false}
    }
}

struct IfLetGuardBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootCamp()
    }
}

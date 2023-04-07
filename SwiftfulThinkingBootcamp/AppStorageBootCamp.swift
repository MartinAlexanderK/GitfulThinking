//
//  AppStorageBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 07.04.23.
//

import SwiftUI

struct AppStorageBootCamp: View {
    
//    @State var currentUserName : String?   ---> For USERDEFAULTS
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add name here")
            if let name = currentUserName {
                Text(name)
            }
            Button("Save".uppercased()) {
                let name = "emely"
                    currentUserName = name
                //MARK: - USERDEFAULTS
//                UserDefaults.standard.set(name, forKey: "name")---> For USERDEFAULTS
            }
        }
//        .onAppear{
//            currentUserName = UserDefaults.standard.string(forKey: "name") ---> For USERDEFAULTS
//        }
    }
}

struct AppStorageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootCamp()
    }
}

//
//  FocusStateBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 08.04.23.
//

import SwiftUI

struct FocusStateBootCamp: View {
    
    enum OnboardingField: Hashable {
    case username
    case password
    }
    @State private var userName : String = ""
//    @FocusState private var usernameInFocus: Bool
    @State private var password : String = ""
//    @FocusState private var passwordinforcus: Bool
    @FocusState private var fieldInFocus : OnboardingField?
    
    var body: some View {
        VStack (spacing: 30) {
            TextField("Add your name here...", text: $userName)
                .focused($fieldInFocus, equals: .username)
//                .focused($usernameInFocus)
                .padding()
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            SecureField("Add your password here...", text: $password)
//                .focused($passwordinforcus)
                .focused($fieldInFocus, equals: .password)

                .padding()
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
//            Button("Toggle Focus state") {
//                usernameInFocus.toggle()
//            }
//
            Button("Sign up😡") {
                let usernameIsValid = !userName.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("Sign up")
                }
                else if usernameIsValid {
                    fieldInFocus = .password
//                    usernameInFocus = false
//                    passwordinforcus = true
                }
                else {
                    fieldInFocus = .password
//                    usernameInFocus = true
//                    passwordinforcus = false
                }
            }
        }
        .padding(40)
//        .onAppear{
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
//            }
//        }
    }
}

struct FocusStateBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootCamp()
    }
}

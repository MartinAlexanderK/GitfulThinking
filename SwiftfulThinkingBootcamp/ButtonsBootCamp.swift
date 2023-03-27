//
//  ButtonsBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 27.03.23.
//

import SwiftUI

struct ButtonsBootCamp: View {
    
    //MARK: - variable declaration
    @State var title : String = "This is my title"
    
    //MARK: - Body
    var body: some View {
        VStack (spacing: 20) {
            Text(title)
            
            Button("This is a Button") {
                self.title  = "Button was Pressed"
            }
            
            Button {
                self.title = "Button Nr.2 is pressed"
            } label: {
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.primary)
                    .shadow(color: .primary, radius: 5)
                    .overlay(Circle().stroke(.white))
            }
            
            Button {
                self.title = "U lost"
            } label: {
                Text("Finish".uppercased())
                    .font(.callout)
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal)
                    .background( Capsule().stroke(Color.gray, lineWidth: 3.2)
                    )
            }


        }
    }
}
//MARK: - BootCamp
struct ButtonsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootCamp()
    }
}

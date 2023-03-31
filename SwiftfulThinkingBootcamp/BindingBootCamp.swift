//
//  BindingBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 30.03.23.
//

import SwiftUI

struct BindingBootCamp: View {
    @State var backGroundColor: Color = Color.blue
    @State var title: String = "Title"
    var body: some View {
        ZStack {
            backGroundColor
                .ignoresSafeArea()
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backGroundColor: $backGroundColor, title: $title)
            }
        }
    }
}
struct ButtonView : View {
    @Binding var backGroundColor : Color
    @State var buttonColor : Color = Color.blue
    @Binding var title : String
    
    var body: some View {
        Button {
            backGroundColor = Color.orange
            buttonColor = Color.pink
            title = "New Title"
        } label: {
            Text("button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}
struct BindingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootCamp()
    }
}

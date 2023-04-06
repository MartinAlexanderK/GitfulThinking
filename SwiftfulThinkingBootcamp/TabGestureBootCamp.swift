//
//  TabGestureBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 06.04.23.
//

import SwiftUI

struct TabGestureBootCamp: View {
    @State var isSelected : Bool = false
    var body: some View {
        VStack (spacing: 40) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green : .red)
            Button {
                isSelected.toggle()
                //action
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            Text("Tab Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            Spacer()
        }
        .padding(40)
    }
}

struct TabGestureBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TabGestureBootCamp()
    }
}

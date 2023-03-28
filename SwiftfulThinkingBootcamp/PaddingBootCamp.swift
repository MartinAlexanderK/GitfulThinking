//
//  PaddingBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 28.03.23.
//

import SwiftUI

struct PaddingBootCamp: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
            
            Text("This is the descipiton of what we will do on this screen. It is multiple lines and we will align the text on the leading edge")

        }
        .padding()
        .padding(.vertical, 30)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 10)
        .padding(.horizontal, 10)
    }
}

struct PaddingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootCamp()
    }
}

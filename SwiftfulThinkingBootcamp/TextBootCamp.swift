//
//  TextBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 27.03.23.
//

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.system(size: 40, weight: .heavy))
            .underline(true, color: Color.red)
            .foregroundColor(.white)
            .frame(width: 300, height: 200)
            .background(Color(.systemMint))
            .clipShape(Capsule())
            .overlay {
                Capsule()
                    .stroke(lineWidth: 6)

            }
    }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
    }
}


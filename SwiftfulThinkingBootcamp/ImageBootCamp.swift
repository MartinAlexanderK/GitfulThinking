//
//  ImageBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 27.03.23.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        Image("GS")
            .resizable()
            .renderingMode(.template)
            .foregroundColor(.primary)
            .frame(width: 200, height: 200)
            .scaledToFit()
//            .aspectRatio(contentMode: .fit)
            .shadow(color: .primary, radius: 4)
    }
}

struct ImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootCamp()
    }
}

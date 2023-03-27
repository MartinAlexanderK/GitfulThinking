//
//  ColorsBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 27.03.23.
//

import SwiftUI

struct ColorsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
//                Color.primary.shadow(.inner(radius: 3))
                Color(.secondarySystemBackground)
                //For a nice alternative 
            
            )
            .frame(width: 300, height: 200)
            }
}

struct ColorsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootCamp()
    }
}

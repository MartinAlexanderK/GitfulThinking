//
//  SymbolsBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 27.03.23.
//

import SwiftUI

struct SymbolsBootCamp: View {
    var body: some View {
        Image (systemName: "person.fill.badge.plus")
        .renderingMode (.original)
        .font (.largeTitle)
        //.resizable ()
        //.aspectRatio(contentMode:.fit)
        //.scaledToFit ()
        //.scaledToFi11 ()
        //.font (.caption)
        //.font (.system(size: 200))
        //.foregroundColor(Color (#colorLiteral(red:
//        0.9254902005, green: 0.2352941185, blue:
//        0.1019607857, alpha: 1))) /. frame (width: 300, height: 300) //.clipped ()
    }
}

struct SymbolsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SymbolsBootCamp()
    }
}

//
//  TextSelectionBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 08.04.23.
//

import SwiftUI

struct TextSelectionBootCamp: View {
    var body: some View {
        Text("Peace")
            .textSelection(.enabled)
    }
}

struct TextSelectionBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionBootCamp()
    }
}

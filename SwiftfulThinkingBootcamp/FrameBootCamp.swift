//
//  FrameBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 27.03.23.
//

import SwiftUI

struct FrameBootCamp: View {
    var body: some View {
        Text("Hello World")
            .background(Color.red)
            .frame(height: 100,alignment: .top)
            .background(Color.blue)
            .frame(width: 200, alignment: .leading)
            .background(Color.yellow)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.red)
        
    }
}

struct FrameBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootCamp()
    }
}

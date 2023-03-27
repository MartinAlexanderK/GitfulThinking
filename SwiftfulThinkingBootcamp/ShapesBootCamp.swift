//
//  Shapes.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 27.03.23.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        Circle()
//            .fill()
//            .stroke()
//        .stroke(Color.red , style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
            .trim(from: 0.2, to: 1.0)
            .stroke(Color.blue, lineWidth: 50)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}

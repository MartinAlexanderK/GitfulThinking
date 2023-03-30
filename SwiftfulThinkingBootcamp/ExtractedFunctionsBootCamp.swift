//
//  ExtractedFunctionsBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 30.03.23.
//

import SwiftUI

struct ExtractedFunctionsBootCamp: View {
    
    @State var backgroundColor : Color = Color.pink
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            contentLayer
        }
    }
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Button {
                ButtonPressed()
            } label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }
    func ButtonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractedFunctionsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootCamp()
    }
}

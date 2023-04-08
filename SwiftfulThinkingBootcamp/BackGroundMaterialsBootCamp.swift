//
//  BackGroundMaterialsBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 08.04.23.
//

import SwiftUI

struct BackGroundMaterialsBootCamp: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
        }
        .ignoresSafeArea()
        .background {
            Image("exampleImage")
        }
    }
}
struct BackGroundMaterialsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BackGroundMaterialsBootCamp()
    }
}

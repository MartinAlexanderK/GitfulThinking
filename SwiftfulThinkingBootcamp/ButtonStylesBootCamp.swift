//
//  ButtonStylesBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 08.04.23.
//

import SwiftUI

struct ButtonStylesBootCamp: View {
    var body: some View {
        VStack {
            Button {
            } label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            Button("Button Title") {
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
            .buttonStyle(.borderedProminent)
            Button("Button Title") {
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
            .buttonStyle(.borderedProminent)
            Button("Button Title") {
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.mini)
            .buttonStyle(.borderedProminent)
        }
    }
}

struct ButtonStylesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesBootCamp()
    }
}

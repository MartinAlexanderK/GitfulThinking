//
//  TransitionBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 31.03.23.
//

import SwiftUI

struct TransitionBootCamp: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack (alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .ignoresSafeArea()
                    .transition(AnyTransition.scale.animation(.easeOut))
            }
        }
    }
}

struct TransitionBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TransitionBootCamp()

        }
    }
}

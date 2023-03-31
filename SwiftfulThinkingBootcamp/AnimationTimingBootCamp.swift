//
//  AnimationTimingBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 31.03.23.
//

import SwiftUI

struct AnimationTimingBootCamp: View {
    
    @State var isAnimating : Bool = false
    @State var linear = false
    @State var easain = false
    @State var easeInandout = false
    @State var easeOut = false
    
    
    
    var body: some View {
        VStack {
            
            HStack {
                Button("Button") {
                    withAnimation(.default) {
                        isAnimating.toggle()

                    }
                    

                }
                Button("Button") {
                    withAnimation(.linear) {
                        linear.toggle()

                    }
                    

                }
                Button("Button") {
                    withAnimation(.easeIn) {
                        easain.toggle()

                    }
                    

                }
                Button("Button") {
                    withAnimation(.spring(
                        response: 0.7,
                        dampingFraction: 0.5,
                        blendDuration: 1.0)) {
                        easeInandout.toggle()

                    }
                    

                }
                Button("Button") {
                    withAnimation(.easeOut) {
                        easeOut.toggle()

                    }
                    

                }
            }
            
            
            
            
            
            
            
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: isAnimating ? 350 : 50, height: 100)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: linear ? 350 : 50, height: 100)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: easain ? 350 : 50, height: 100)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: easeInandout ? 350 : 50, height: 100)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: easeOut ? 350 : 50, height: 100)
        }
    }
}

struct AnimationTimingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootCamp()
    }
}

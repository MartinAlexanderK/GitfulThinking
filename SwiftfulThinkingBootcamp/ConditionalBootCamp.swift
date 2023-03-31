//
//  ConditionalBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 31.03.23.
//

import SwiftUI

struct ConditionalBootCamp: View {
    @State var showCircle : Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    
    var body: some View {
        VStack (spacing: 20) {
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
                
            }
            Button("Rectangle Button: \(showRectangle.description)") {
                showRectangle.toggle()
                
            }
            
            Button("Is Loading: \(isLoading.description)") {
                isLoading.toggle()
                
            }
            
            if isLoading {
                ProgressView()
            }
            
            
            if showCircle {
        //= if showCircle {
                
                Circle()
                    .frame(width: 100, height: 100)
            }
            if showRectangle {
                Rectangle()
                    .frame(width: 50, height: 50)
                    
            }
            
            if showCircle && showRectangle {

                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 200, height: 200)
                
                
            }
            
        }
    }
}

struct ConditionalBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootCamp()
    }
}

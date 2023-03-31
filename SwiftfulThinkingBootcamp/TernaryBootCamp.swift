//
//  TernaryBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 31.03.23.
//

import SwiftUI

struct TernaryBootCamp: View {
    
    @State var isStartingState : Bool = false
    
    var body: some View {
        
        
        VStack {
            Button("Button \(isStartingState.description)") {
                
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting State" : "Ending State")
            
            
            RoundedRectangle(cornerRadius: 25)
                .fill(isStartingState ? .red : .blue)
                .frame(width: isStartingState ? 100 : 400, height: isStartingState ? 50 : 500)
            
            Spacer()
        }
    }
}

struct TernaryBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootCamp()
    }
}

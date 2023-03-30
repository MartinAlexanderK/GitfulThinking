//
//  StatePropertyBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 30.03.23.
//

import SwiftUI

struct StatePropertyBootCamp: View {
    
    @State var backGroundColor : Color = Color.green
    @State var counting : Int = 0
    @State var myTitle: String = "My Title"
    
    
    var body: some View {
        ZStack {
            //background
            backGroundColor
                .ignoresSafeArea()
            
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(counting)")
                    .font(.headline)
                    .underline()
                
                
                HStack (spacing: 20) {
                    Button("Button 1") {
                        backGroundColor = Color.red
                        myTitle = "Button 1 was pressed"
                        counting += 1
                        
                    }
                    Button("Button 2") {
                        backGroundColor = Color.green
                        myTitle = "Button 2 was pressed"

                    }
                    
                    
                }
            }
            .foregroundColor(.white)
            
        }
    }
}

struct StatePropertyBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StatePropertyBootCamp()
    }
}

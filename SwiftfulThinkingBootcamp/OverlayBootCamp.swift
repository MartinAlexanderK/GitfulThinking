//
//  OverlayBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 28.03.23.
//

import SwiftUI

struct OverlayBootCamp: View {
    var body: some View {
    Image(systemName: "heart.fill")
            .foregroundColor(.white)
            .font(.system(size: 40))
            .background(
            Circle()
                .fill(LinearGradient(
                    gradient: Gradient(colors: [Color.white, Color.blue]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing))
            
                .frame(width: 100, height: 100)
                .shadow(color: .purple.opacity(0.5), radius: 10, x: 0.0, y: 10)
                .overlay(alignment: .bottomTrailing, content: {
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 35, height: 35)

                        .overlay {
                            Text("5")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .shadow(color: .purple.opacity(0.5), radius: 10, x: 5, y: 5)

                        
                })
                
            
            
            )
    }
    
}

struct OverlayBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        OverlayBootCamp()
    }
}

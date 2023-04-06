//
//  DarkModeBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 03.04.23.
//

import SwiftUI

struct DarkModeBootCamp: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (spacing: 20) {
                    Text("This text is primary")
                        .foregroundColor(.primary)
                    
                    Text("This color is secondary")
                        .foregroundColor(.secondary)
                    
                    Text("This color is black")
                        .foregroundColor(.black)
                    Text("This color is white")
                        .foregroundColor(.white)
                    Text("This color is red")
                        .foregroundColor(Color.red)
                    Text("This color is globally adaptive")
                        .foregroundColor(Color(.systemBlue))
                        Text("This color is locally addaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
                
            }
        }.navigationTitle("Dark Mode BootCamp")
    }
}

struct DarkModeBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeBootCamp()
            .preferredColorScheme(.light)
        DarkModeBootCamp()
            .preferredColorScheme(.dark)
    }
}

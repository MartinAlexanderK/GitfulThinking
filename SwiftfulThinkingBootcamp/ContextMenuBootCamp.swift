//
//  ContextMenuBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 02.04.23.
//

import SwiftUI

struct ContextMenuBootCamp: View {
    @State var backgroundColor : Color = .indigo
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful thinking")
                .font(.headline)
            Text("How to use the context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding()
        .background(backgroundColor)
        .cornerRadius(30)
        .contextMenu {
            Button {
                backgroundColor = .brown
            } label: {
                Label("Share post ", systemImage: "flame.fill")
            }

            Button {
                backgroundColor = .yellow

            } label: {
                Text("Report post")
            }
            Button {
                backgroundColor = .pink

            } label: {
                HStack {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

struct ContextMenuBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootCamp()
    }
}

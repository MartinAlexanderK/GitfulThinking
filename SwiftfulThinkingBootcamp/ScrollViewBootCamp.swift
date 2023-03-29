//
//  ScrollViewBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 29.03.23.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
        ScrollView{
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color(.secondarySystemBackground))
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                                    .overlay {
                                        Image(systemName: "person")
                                        Image(systemName: "heart")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                    }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootCamp()
    }
}

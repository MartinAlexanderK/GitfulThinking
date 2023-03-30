//
//  ExtractSubviewsBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 30.03.23.
//

import SwiftUI

struct ExtractSubviewsBootCamp: View {
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            
            HStack {
                MyItem(title: "hello", count: 2, color: .white)
                MyItem(title: "you little", count: 2, color: .white)

                MyItem(title: "green", count: 2, color: .green)

            }
          
        }
    }
    
}

struct ExtractSubviewsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootCamp()
    }
}

struct MyItem: View {
    
    let title : String
    let count : Int
    let color : Color
    var body: some View {
        VStack {
            Text("\(count)")
            
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

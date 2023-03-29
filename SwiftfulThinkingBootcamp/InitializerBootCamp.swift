//
//  InitializerBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 29.03.23.
//

import SwiftUI

struct InitializerBootCamp: View {
    //MARK: - variable declaration
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        
        if fruit == .apple {
            self.title = "Apple"
            self.backgroundColor = .red
        }
        else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
//        self.title = title
//
//        if title == "Apples" {
//            self.backgroundColor = .red
//        } else {
//            self.backgroundColor = .orange
//        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    
    var body: some View {
        VStack (spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        InitializerBootCamp(count: 5, fruit: .apple)
    }
}

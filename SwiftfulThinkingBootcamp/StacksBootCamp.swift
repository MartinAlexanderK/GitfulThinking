//
//  StacksTutorial.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 28.03.23.
//

import SwiftUI

struct StacksTutorial: View {
    var body: some View {
        ZStack (alignment: .top){
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500)
            
            VStack(alignment: .center) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(Color.pink)
                    .frame(width: 100, height: 100)
                HStack {
                    Rectangle()
                        .fill(Color.purple)
                    .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.purple)
                    .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.purple)
                    .frame(width: 50, height: 50)
                }
                .background(Color.white)
            }
            .background(Color.blue)
        }
    }
}

struct StacksTutorial_Previews: PreviewProvider {
    static var previews: some View {
        StacksTutorial()
    }
}

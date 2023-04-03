//
//  SaveAreaBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 30.03.23.
//

import SwiftUI

struct SaveAreaBootCamp: View {
    var body: some View {
        ScrollView {
            Text("Title goes gere")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
            }
        }
        .background(Color(.systemCyan))
//        ZStack {
//
//            //background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            //foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//        }
    }
}

struct SaveAreaBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SaveAreaBootCamp()
    }
}

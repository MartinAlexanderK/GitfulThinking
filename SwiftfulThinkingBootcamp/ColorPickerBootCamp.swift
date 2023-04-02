//
//  ColorPickerBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 02.04.23.
//

import SwiftUI

struct ColorPickerBootCamp: View {
    @State var backGroundColor : Color = .green
    
    var body: some View {
        ZStack {
            backGroundColor
                .ignoresSafeArea()
            ColorPicker("Select a Color",
                        selection: $backGroundColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

struct ColorPickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootCamp()
    }
}

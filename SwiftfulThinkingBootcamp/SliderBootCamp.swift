//
//  SliderBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 02.04.23.
//

import SwiftUI

struct SliderBootCamp: View {
    @State var sliderNumber: Double = 10
    @State var color : Color = .red
    var body: some View {
        VStack {
            Text("Rating:")
            Text(String(format: "%.2f", sliderNumber))
                .foregroundColor(color)
//            Slider(value: $sliderNumber)
//            Slider(value: $sliderNumber, in: 0...100)
//            Slider(value: $sliderNumber, in: 1...5, step: 1.0)
            Slider(
                value: $sliderNumber,
                in: 1...5,
                step: 1.0,
                label: {
                    Text("Title")
                },
                minimumValueLabel: {Text("1")},
                maximumValueLabel: {Text("5")},
                onEditingChanged: { _ in
                    color = .green                })
     .accentColor(.pink)
        }
    }
}

struct SliderBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootCamp()
    }
}

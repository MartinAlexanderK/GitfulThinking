//
//  ToggleBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 02.04.23.
//

import SwiftUI

struct ToggleBootCamp: View {
    @State var isOn : Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status")
                Text(isOn ? "online" : "offline")
            }
            .font(.title)
            Toggle(isOn: $isOn) {
                Text("Change Status")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            .padding()
            Spacer()
        }
    }
}


struct ToggleBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootCamp()
    }
}

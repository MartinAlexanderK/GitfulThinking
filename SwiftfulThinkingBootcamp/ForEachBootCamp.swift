//
//  ForEachBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 29.03.23.
//

import SwiftUI

struct ForEachBootCamp: View {
    //MARK: - variable Declaration
    
    
    let data : [String] = ["Hi", "Hello", "Waddup"]
    let myString : String = "Hello"
    
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]) : \(index)")
            }
        }
    }
}

struct ForEachBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootCamp()
    }
}

//
//  SubmitTextFieldBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 08.04.23.
//

import SwiftUI

struct SubmitTextFieldBootCamp: View {
    
    @State private var text : String = ""
    
    var body: some View {
        TextField("Placeholder....", text: $text)
            .submitLabel(.route)
            .onSubmit {
                print("something to the console")
            }
    }
}

struct SubmitTextFieldBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootCamp()
    }
}

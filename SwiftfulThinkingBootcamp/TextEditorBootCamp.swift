//
//  TextEditorBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 02.04.23.
//

import SwiftUI

struct TextEditorBootCamp: View {
    @State var textEditorText = "This is the starting Text"
    @State var savedText = ""
    
    var body: some View {
        NavigationView{
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundColor(.red)
                //If we want to change the backGround Color, we need to use the following function
//                    .colorMultiply(.gray)
                
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Text(savedText)
                Spacer()
            }
            .padding()
//            .background(Color.gray)
            .navigationTitle("Text Editor BootCamp")
        }
    }
}

struct TextEditorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootCamp()
    }
}

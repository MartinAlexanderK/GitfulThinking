//
//  TextFieldBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 02.04.23.
//

import SwiftUI

struct TextFieldBootCamp: View {
    @State var textFieldText : String = ""
    @State var dataArray : [String] = []
    var body: some View {
        NavigationView {
            VStack {
                TextField("Tyoe something here...", text: $textFieldText)
        //            .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray).opacity(0.3).cornerRadius(10)
                    .foregroundColor(.red)
                    .font(.headline)
                Button {
                    if textIsApporpriate() {
                        saveText()
                    }
                    
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
//                    Changes the background color depending on check
                        .background(textIsApporpriate() ? Color.pink : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)

                        .font(.headline)
                }
//                Diables the button when fails the check
                .disabled(!textIsApporpriate())
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Textfield BootCamp")
        }
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
    func textIsApporpriate() -> Bool {
        //check text
        if textFieldText.count <= 3 {
            return true
        }
        return false
    }
    
    
}

struct TextFieldBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootCamp()
    }
}

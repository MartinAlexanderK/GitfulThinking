//
//  DocumentationBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 06.04.23.
//

import SwiftUI

struct DocumentationBootCamp: View {
    //MARK: - Properites
    @State var data : [String] = ["Apples", "Oranges", "Bananas"]
    @State var showAllert : Bool = false
    //MARK: - BODY
    var body: some View {
        NavigationView { //: Start NAV
            ZStack {
                //Bakckground
                Color.red
                    .ignoresSafeArea()
                ForegroundLayer

                .navigationTitle("Documentation")
                .alert(isPresented: $showAllert, content: {
                    getAllert(text: "This is the alert")
                })
                .navigationBarItems(trailing: Button(action: {
                    showAllert.toggle()
                }, label: {
                    Text("Allert")
            }))
            }
        }//: END NAV
    }
    ///This is the forefround layer which holds the scrollview
    private var ForegroundLayer : some View {
        
        ScrollView {
            //ForeGround
            /*
             MY first multi line comment
             Things to do:
             1) Fix title
             2) change Font
             
             
             */
            Text("Hello")
            ForEach(data, id:\.self) { text in
                Text(text)
                    .font(.headline)
            }
        }
        
    }
    //MARK: - FUNCTIONS
    /// Gets an allert with a specified title
    ///
    ///This is the discussion where we would add an extensive explanation over what we have done
    ///```
    ///getAlert (text: "Hi") -> Alert(title: Text("Hi"))
    ///```
    /// - Parameter text: is the title we want to add
    /// - Returns: returns alert with thitle
    func getAllert (text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

struct DocumentationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootCamp()
    }
}

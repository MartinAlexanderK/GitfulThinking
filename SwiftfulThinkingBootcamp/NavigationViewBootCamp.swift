//
//  NavigationViewBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 01.04.23.
//

import SwiftUI

struct NavigationViewBootCamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("hello, world") {
                    MyOtherScreen()
                }
                
                
                Text("Hello World")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}



struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("green Screen")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "person")
                    }
                }
            
            
            VStack {
                Button("BackButton") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                
                NavigationLink {
                    Text("3rd screen")
                } label: {
                    Text("Klick here")
                }
            }
            
            
            

        }
        
    }
}



struct NavigationViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootCamp()
    }
}

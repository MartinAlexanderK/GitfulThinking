//
//  OnAppearBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 06.04.23.
//

import SwiftUI

struct OnAppearBootCamp: View {
    @State var myText: String = "MyText"
    @State var count : Int = 0
    var body: some View {
        NavigationView{
            ScrollView {
                Text(myText)
                
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .onAppear {
                                count +=  1
                            }
                    }
                }
            }
            .navigationTitle("\(count)")
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) { myText = "This is my new text"
                }
            }
            .onDisappear {
                myText = "peace out"
            }
        }
    }
}

struct OnAppearBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootCamp()
    }
}

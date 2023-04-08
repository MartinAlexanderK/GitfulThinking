//
//  BadgesBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 08.04.23.
//

import SwiftUI

//List
//TabView

struct BadgesBootCamp: View {
    var body: some View {
//        List {
//            Text("Hello World")
//                .badge("Hellowwww")
//            Text("Hello World")
//
//            Text("Hello World")
//
//            Text("Hello World")
//
//        }
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("hellooow")
                }.badge(2)

            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("hellooow")
                }
                
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("hellooow")
                }
        }
    }
}

struct BadgesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootCamp()
    }
}

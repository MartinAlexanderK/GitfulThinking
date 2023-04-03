//
//  TabViewBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 03.04.23.
//

import SwiftUI

struct TabViewBootCamp: View {
    @State var selectedTab : Int = 0
    let icons: [String] = [
    "heart.fill", "globe", "house.fill", "person.fill"]
    
    var body: some View {
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]) , center: .center, startRadius: 5, endRadius: 300))
        .tabViewStyle(.page)
        .frame(height: 300)
//        TabView (selection: $selectedTab) {
//
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
    }
}
//struct HomeView: View {
//    @Binding var selectedTab : Int
//    
//    var body: some View {
//        ZStack {
//            Color(.blue)
//            VStack {
//                Text("Home Tab")
//                    .font(.largeTitle)
//                Button {
//                    selectedTab = 1
//                    
//                } label: {
//                    Text("Go to Profile")
//                        .font(.headline)
//                        .padding()
//                        .padding(.horizontal, 10)
//                        .background(Color.white)
//                        .cornerRadius(15)
//                }
//            }
//        }
//    }
//}
struct TabViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootCamp()
    }
}

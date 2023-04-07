//
//  EnvironmentObjectBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 07.04.23.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    @ Published var dataArray: [String] = []
    init(){
        getData()
    }
    func getData() {
        self.dataArray.append("Iphone")
        self.dataArray.append("Ipad")
        self.dataArray.append(contentsOf: ["Apple Watch","Apple TV", "Apple Glasses"])
    }
}
struct EnvironmentObjectBootCamp: View {
    
    @StateObject var environmentViewModel : EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(environmentViewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(
//                            environmentViewmodel: environmentViewModel,
                            selectedItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("Ios Devices")
        }
        .environmentObject(environmentViewModel)
    }
}
struct DetailView : View {
//    @ObservedObject var environmentViewmodel : EnvironmentViewModel
    let selectedItem : String
    var body: some View {
        ZStack {
            //background
            Color.orange.ignoresSafeArea()
            //foreground
            NavigationLink {
                FinalView(
//                    environmentViewMode: environmentViewmodel
                )
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }
        }
    }
}
struct FinalView: View {
    @EnvironmentObject var environmentViewMode : EnvironmentViewModel
    
    var body: some View{
        ZStack {
            //backgroundlayer
            LinearGradient(
                gradient: Gradient(colors: [.red, .blue]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            //foregroundlayer
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(environmentViewMode.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootCamp()
        DetailView(selectedItem: "Iphone")
        FinalView()
            .environmentObject(EnvironmentViewModel())
    }
}

//
//  ViewModelBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 06.04.23.
//

import SwiftUI
struct FruitModel: Identifiable {
    let id : String = UUID().uuidString
    let name : String
    let count : Int
}
class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    init(){
        getFruits()
    }
    func getFruits()  {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermellon", count: 88)
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootCamp: View {
    @StateObject var viewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List{
                if viewModel.isLoading {
                    ProgressView()
                }
                else {
                    ForEach(viewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }.onDelete { indexSet in
                        viewModel.deleteFruit(index: indexSet)
                }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruitlist")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: {
                OtherScreen(viewModel: viewModel)
            }, label: {
                Image(systemName: "arrow.right")
                    .font(.title)
            })
            )
            /*
            .onAppear{
                viewModel.getFruits()
            }
             */
        }
    }
}
struct OtherScreen : View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel :FruitViewModel
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                ForEach(viewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
        }
    }
}
struct ViewModelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootCamp()
        OtherScreen(viewModel: FruitViewModel())
    }
}

//
//  ListBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 01.04.23.
//

import SwiftUI


struct ListBootCamp: View {
    
    @State var fruits : [String] = ["Apple", "Orange", "Banana", "Peach"]
    @State var veggies: [String] = ["tomato", "potato", "carrot"]
    
    var body: some View {
        NavigationView {
            List {
                Section("Fruits") {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .background(Color.purple)
                            .foregroundColor(.white)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background {
//                                Color.pink
//                            }
                    }
                    //To make deleting possible
                    .onDelete (perform: delete)
                    //to make moving the items possible
                    .onMove (perform: move)
                    //We have a specific modifyer for lists to change the backGround Color
                    .listRowBackground(Color.pink)
                }
                Section("veggies") {
                    ForEach(veggies, id:\.self) { vegie in
                        Text(vegie)
                    }
                }
                Section {
                } header: {
                    HStack {
                        Text("veeeegan")
                        Image(systemName: "flame.fill")
                    }
                }
            }
            .listStyle(.sidebar)
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()//already given by apple
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    addButton
                }
            }
        }
    }
    var addButton: some View {
        Button("Add") {
            appendCoconut()
        }
    }
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    func appendCoconut() {
        fruits.append("Coconut")
    }
}

struct ListBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootCamp()
    }
}

//
//  ListSwipeActionsBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 08.04.23.
//

import SwiftUI

struct ListSwipeActionsBootCamp: View {
    
    @State var fruits : [String] = ["Apple", "Orange", "Banana", "Peach"]

    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(
                        edge: .trailing,
                        allowsFullSwipe: true) {
                            Button("Archive") {
                            }
                            Button("Favorite") {
                            }
                            .tint(.gray)
                            Button("Remove Favorite") {
                            }
                            .tint(.black)
                        }
                        .swipeActions(
                            edge: .leading,
                            allowsFullSwipe: true) {
                                Button("Share") {
                                    
                                }
                               
                                .tint(.black)
                            }
            }
//            .onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet){
        
    }
}

struct ListSwipeActionsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootCamp()
    }
}

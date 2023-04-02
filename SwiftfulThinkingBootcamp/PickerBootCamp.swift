//
//  PickerBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 02.04.23.
//

import SwiftUI

struct PickerBootCamp: View {
    @State var selection : String = "Most Recent"
    
    let filterOptions : [String] = ["Most Recent", "Most Popular", "Most Liked"]
    //MARK: - Trick for Picker 3 with UIKIT to modify picker
    init() {
        //CAREFUL! This will overwrite all segmented controlls in our app
        let atrributed : [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
                
        ]
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        UISegmentedControl.appearance().setTitleTextAttributes(atrributed, for: .selected)
    }
    
    var body: some View {
        
        
        //MARK: - Picker 3
        
        Picker(selection: $selection) {
            
            //We could have used a normal foreach loop as well. This is just pracitce. we loop through the indices of the array instead of the array itself.
            ForEach(filterOptions.indices) { index in
                Text(filterOptions[index])
                    .tag(filterOptions[index])
            }
        } label: {
        }
        .pickerStyle(.segmented)
//        .background(Color.red)
        
        
        //MARK: - Picker 2
//        Picker(
//            selection: $selection,
//            content: {
//                ForEach(filterOptions, id: \.self) { index in
//                    Text(index)
//                        .tag(index)
//                }
//        },
//            label: {
//                    Text("Picker")
//
//        })
//        .pickerStyle(.menu)
//        .padding()
//        .background(Color.black)
//        .cornerRadius(25)
  
        //MARK: - Picker 1
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            Picker(
//                selection: $selection) {
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .tag("\(number)")
//                    }
//                } label: {
//                    Text("Picker")
//                }
//                .background(Color.gray.opacity(0.3))
//                .pickerStyle(.wheel)
//        }
    }
}

struct PickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootCamp()

    }
}

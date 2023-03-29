//
//  GridBottCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 29.03.23.
//

import SwiftUI

struct GridBottCamp: View {
    
    let columns: [GridItem] = [
        
        GridItem(.flexible(minimum: 5, maximum: 200), spacing: 6, alignment: nil),
        GridItem(.flexible(minimum: 5, maximum: 200), spacing: 6, alignment: nil),
        GridItem(.flexible(minimum: 5, maximum: 200), spacing: 6, alignment: nil)
    
    ]
    
    
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders] ) {
                Section(header:
                            Text("Section 1")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                        
                        
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150, alignment: .center)
                        
                    }
                    
                    }
                Section(header:
                            Text("Section 2")
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                        
                        
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150, alignment: .center)
                        
                    }
                    
                }
            }
        }
    }
}

struct GridBottCamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBottCamp()
    }
}

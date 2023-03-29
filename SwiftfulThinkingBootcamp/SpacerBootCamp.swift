//
//  SpacerBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 29.03.23.
//

import SwiftUI

struct SpacerBootCamp: View {
    var body: some View {
        //MARK: - Body
        
        HStack (spacing: 0){
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
        }
        .padding(.horizontal)
                .background(Color.blue)
    }
}
//MARK: - preview
struct SpacerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootCamp()
    }
}

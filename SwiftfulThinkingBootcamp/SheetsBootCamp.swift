//
//  SheetsBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 31.03.23.
//

import SwiftUI

struct SheetsBootCamp: View {
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            Button("Button") {
                showSheet.toggle()
            }
            .foregroundColor(.green)
            .font(.headline)
            .padding(20)
            .background(Color.white.cornerRadius(10))
        }
        //        .sheet(isPresented: $showSheet) {
        //            SecondScreen()
        .fullScreenCover(isPresented: $showSheet) {
            SecondScreen()
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack (alignment: .topLeading){
            Color.red
                .ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
                
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.red)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
        }
    }
}

struct SheetsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        //SheetsBootCamp()
        SheetsBootCamp()    }
}

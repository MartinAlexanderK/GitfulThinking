//
//  PopOverBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 31.03.23.
//

import SwiftUI

struct PopOverBootCamp: View {
    
    @State var showNewScreen : Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                    
                }
                .font(.largeTitle)
                Spacer()
            }
            //METHOD 1 -SHEET
//            .sheet(isPresented: $showNewScreen) {
//                newScreen()
//
//            }
            //METHOD 2 -Transition
//            ZStack {
//                if showNewScreen {
//                    newScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(AnyTransition.scale.animation(.easeOut))
//                }
//            }.zIndex(2.0)
            //METHOD 3 - ANIMATIOn OFFSET
            newScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)
        }
    }
}

struct newScreen : View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen : Bool
    
    var body: some View{
        
        ZStack (alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            Button {
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            }
        }
    }
}






struct PopOverBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PopOverBootCamp()
        newScreen(showNewScreen: .constant(false))
    }
}

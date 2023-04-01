//
//  ActionSheetBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 01.04.23.
//

import SwiftUI

struct ActionSheetBootCamp: View {
    
    //MARK: - 2. Creation of a State variable to toggle the actionsheet to true and initialization of the actionsheet enum as a @State var
    @State var showActionSheet : Bool = false
    @State var actionSheetOptions: ActionSheetOptions = .myPost
    //MARK: - 1. Creation of Enum with 2 states depending on if i'm the current user or not
    enum ActionSheetOptions {
        case myPost
        case isOtherPost
    }
        var body: some View {
        VStack {
            HStack(content: {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@ username")
                Spacer()
                Button {
                    //MARK: - 3. Toggle Button for the Action sheet
                    showActionSheet.toggle()
                } label: {
                    Image(systemName:"ellipsis")
                }

            })
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    //MARK: - 4. Function with action sheet logic and different buttons as let constants
    func getActionSheet() -> ActionSheet {
        
        let shareButton : ActionSheet.Button = .default(Text("share")) {
            //code to share post
        }
        let reportButton : ActionSheet.Button = .destructive(Text("Report")) {
            //code to report
        }
        let deleteButton : ActionSheet.Button = .destructive(Text("delete")) {
            //code to delete this post
        }
        let cancelButton : ActionSheet.Button = .cancel()
        let title = Text("What would you like to do")
        
        //MARK: - 5. Switch statement to give back different Action sheet depending on which case of the enum is active.
        switch actionSheetOptions {
        case .isOtherPost:
            return ActionSheet(
                title: title ,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton])
        case.myPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton ,deleteButton , cancelButton])
        }
    }
}

struct ActionSheetBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootCamp()
    }
}

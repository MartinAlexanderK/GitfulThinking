//
//  AllertsBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 01.04.23.
//

import SwiftUI

struct AllertsBootCamp: View {
    @State var showAlert : Bool = false
    @State var alertType: MyAlerts? = nil
    @State var backGroundColor : Color = .yellow
//    @State var alertTitle : String = ""
//    @State var alertMessage : String = ""
    enum MyAlerts {
        case success
        case error
    }
    var body: some View {
        ZStack {
            backGroundColor.ignoresSafeArea()
            VStack {
                Button("Button 1") {
                    alertType = .error
//                    alertTitle = "Error Uploading Video"
//                    alertMessage = "The video could not be uplaoded"
                    showAlert.toggle()
                }
                Button("Button 2") {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video"
//                    alertMessage = "Your Video is now public"
                    showAlert.toggle()
                }
            }
            } .alert(isPresented: $showAlert) {
                //            Alert(title: Text("There was an Error"))
                getAllert()
        }
    }
    func getAllert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error"))
        case .success:
            return Alert(title: Text("this was a success"), message: nil, dismissButton: .default(Text("Ok"), action: {
                backGroundColor = .green
            }))
        default:
            return Alert(title: Text("Error"))
        }
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("ok")))
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will descibe the error"),
//            primaryButton: .destructive(Text("delete"), action: {
//                backGroundColor = .blue
//            }),
//            secondaryButton: .cancel())
    }
}

struct AllertsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AllertsBootCamp()
    }
}

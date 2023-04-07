//
//  OnboardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 07.04.23.
//24:19


import SwiftUI

struct OnboardingView: View {
    
    //Oboarding States:
    /*
     0 - Welcome Screne
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    let transition : AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    @State var onboardingState: Int = 0
    
    //onboarding inputs
    @State var name : String = ""
    @State var age : Double = 50
    @State var gender : String = ""
    
    //for the alert
    @State var alterTitle : String = ""
    @State var showAlert : Bool = false
    
    //appStorage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge : Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    
    var body: some View {
        ZStack {
            //content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    genderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                }
            }
            //buttons
            
            VStack {
                Spacer()
                bottomButton
            }
            .padding()
        }
        .alert("\(alterTitle)", isPresented: $showAlert) {
            
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}
//MARK: - COMPONENTS

extension OnboardingView {
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "SIGN UP" :
            onboardingState == 3 ? "FINISH" :
                "NEXT")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .animation(nil)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    private var welcomeSection: some View {
        VStack (spacing: 40){
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your Match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay (
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom)
            
            Text("This is the number 1 app for finding your match online! In this BootCamp we are practicing how to use @appstorage and other swiftui techniques")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    private var addNameSection: some View {
        VStack (spacing: 20){
            Spacer()
            
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    private var addAgeSection: some View {
        VStack (spacing: 20){
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Slider(value: $age, in: 18...100, step: 1)
            Spacer()
            Spacer()
        }
        .padding(30)
        .foregroundColor(.white)
    }
    private var genderSection: some View {
        VStack (spacing: 20){
            Spacer()
            //the count here is simply the count of characters.
            Text(gender.count > 1 ? gender : "Select a gender")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .pickerStyle(MenuPickerStyle())
            Menu("Select a gender")
            {
                Picker("Select a gender", selection: $gender) {
                    Text("male").tag("male")
                    Text("female").tag("female")
                }
            }
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .padding()
            
            Spacer()
            Spacer()
        }
    }
}

//MARK: - FUNCTIONS
extension OnboardingView {
    func handleNextButtonPressed() {
        // CHECK Inputs
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 characters long")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select a gender before moving forward")
                return
            }
        default:
            break
        }
        //Go to next section
        if onboardingState == 3 {
            signIn()
        }
        else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    func showAlert(title: String) {
        alterTitle = title
        showAlert.toggle()
    }
    
}

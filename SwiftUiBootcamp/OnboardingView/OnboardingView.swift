//
//  OnboardingView.swift

import SwiftUI


struct OnboardingView: View {
    
    // Onboarding States:
    /*
     0 - Welcome Screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    
    @State var onboardingState: Int = 0
    @State var name: String = ""
    @State var age: Double = 15
    @State var gender: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    @AppStorage("name") var currentUsername: String?
    @AppStorage("age") var currentAge: Int?
    @AppStorage("gender") var currentGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    var body: some View {
        ZStack{
            
            ZStack{
                switch onboardingState {
                case 0:
                    welcomeScreen
                        .transition(transition)
                    
                case 1:
                    AddNameSection
                        .transition(transition)
                case 2:
                    AddAgeSection
                        .transition(transition)
                case 3:
                    GenderSection
                        .transition(transition)
                    
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                }
            }
            
            VStack{
                Spacer()
                bottomButton
                
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
    
}

// MARK: PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.blue)
    }
}

// MARK: COMPONENTS
extension OnboardingView{
    private var bottomButton: some View{
        Text(onboardingState == 0 ? "Sign Up":
                onboardingState == 3 ? "Finish" :
                "Next")
            .font(.headline)
            .foregroundColor(.blue)
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(Color.white)
            .cornerRadius(10)
            .animation(nil)
            .onTapGesture {
                handleNextBtnPressed()
            }
    }
    
    private var welcomeScreen: some View{
        VStack(spacing: 40){
            
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            
            Text("This is the #1 app for finding your match online!")
                .fontWeight(.medium)
                .foregroundColor(.white)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
    }
    
    
    private var AddNameSection: some View{
        VStack(spacing: 40){
            
            Spacer()
            
            Text("Whats your name?")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            TextField("Your Name here...", text: $name)
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
    
    private var AddAgeSection: some View{
        VStack(spacing: 40){
            
            Spacer()
            
            Text("Whats your age?")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    
    private var GenderSection: some View{
        VStack(spacing: 40){
            
            Spacer()
            
            Text("Whats your gender?")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            
            Picker(selection: $gender,
                   label:
                    Text(gender.count > 1 ? gender:"Select a gender")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10),
                   content: {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-Binary").tag("NonBinary")
            })
            .pickerStyle(MenuPickerStyle())
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}


// MARK: FUNCTIONS
extension OnboardingView{
    func handleNextBtnPressed(){
        
        //check inputs
        
        switch onboardingState{
        case 1:
            guard name.count >= 3 else{
                showAlert(title: "Name must be atleast 3 characters long!")
                return
            }
            
        case 3:
            guard gender.count > 1 else{
                showAlert(title: "Please select a gender before moving forward!")
                return
            }
            
        default:
            break
        }
        
        if onboardingState == 3{
            signIn()
        }else{
            withAnimation(.spring()){
                onboardingState += 1
            }
        }
        
    }
    
    
    func showAlert(title: String){
        alertTitle = title
        showAlert.toggle()
    }
    
    func signIn(){
        currentUsername = name
        currentAge = Int(age)
        currentGender = gender
        currentUserSignedIn = true
    }
}


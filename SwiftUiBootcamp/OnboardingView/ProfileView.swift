//
//  ProfileView.swift


import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUsername: String?
    @AppStorage("age") var currentAge: Int?
    @AppStorage("gender") var currentGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Text("Username : \(currentUsername ?? "Username here")")
            Text("Age : \(currentAge ?? 0) ")
            Text("Gender : \(currentGender ?? "Unknown")")
            
            Text("Sign Out")
                .foregroundColor(.white)
                .font(.headline)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color.blue)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
                .padding()
            
        }
        .font(.title2)
        .padding()
        .padding(.top, 40)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
        .padding()
    }
    
    func signOut(){
        currentUsername = nil
        currentAge = nil
        currentGender = nil
        withAnimation(.spring()){
            currentUserSignedIn = false
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

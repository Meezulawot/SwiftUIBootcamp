//
//  FocusStateBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 29/08/2023.
//

import SwiftUI

@available(iOS 15.0, *)
struct FocusStateBootcamp: View {
    
    @State var username: String = ""
    @FocusState private var usernameInFocused: Bool
    
    var body: some View {
        VStack{
            TextField("Type Something...", text: $username)
                .focused($usernameInFocused)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(10)
                .padding()
            
//            Button("Toggle button", action: {
//                usernameInFocused.toggle()
//            })
        }
        .padding()
        .onAppear(){
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                usernameInFocused = true
            }
        }
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            FocusStateBootcamp()
        } else {
            // Fallback on earlier versions
        }
    }
}

//
//  AlertBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 20/08/2023.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    
    var body: some View {
        Button(action: {
            showAlert.toggle()
        }, label: {
            Text("Show Alert".uppercased())
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 20)
                .background(
                    Color.blue
                        .cornerRadius(10)
                        .shadow(radius: 3.0)
                )
                
        })
        .alert(isPresented: $showAlert, content: {
//            Alert(title: Text("Unknown error occured!!"))
            Alert(
                title: Text("Error:"),
                message: Text("This is an error"),
                primaryButton: .default(Text("Ok"), action: {

                }),
                secondaryButton: .cancel())
        })
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}

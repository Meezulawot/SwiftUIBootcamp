//
//  ButtonsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 19/08/2023.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    
    @State var title : String = "This is title"
    
    var body: some View {
        
        VStack(spacing: 20.0){
            
            Text(title)
            
            Button("Click", action: {
                self.title = "Btn1 Pressed"
            })
            .accentColor(.red)
            
            Button(action: {
                self.title = "Btn2 pressed"
            }, label: {
                Text("Save".uppercased())
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
            
            
            Button(action: {
                self.title = "Btn3 pressed"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 55, height: 55)
                    .shadow(radius: 7.0)
                    .overlay(
                       Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                    )
            })
            
            
            Button(action: {
                self.title = "btn4 pressed"
            }, label: {
                Text("finish".uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
        }
        
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}

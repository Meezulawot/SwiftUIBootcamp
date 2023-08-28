//
//  BindingBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 20/08/2023.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var background: Color = Color.red
    @State var title: String = "Title"
    @State var toggleValue = false
    
    @State var btnColor: Color = Color.blue
    
    var body: some View {
        ZStack{
            
            background
            
            VStack{
                Text(title)
                    .foregroundColor(.white)
                ButtonView(background: $background, title: $title, btnColor: $btnColor)
                
                
            }
            
        }
    }
}

struct ButtonView: View {
    
    @Binding var background: Color
    @Binding var title: String
    @Binding var btnColor: Color
    
    var body: some View {
        Button(action: {
            background = Color.yellow
            title = "Two way binding"
            btnColor = Color.red
        }, label: {
            Text("Click me")
                .foregroundColor(.white)
                .padding()
                .background(btnColor)
                .cornerRadius(10)
        })
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

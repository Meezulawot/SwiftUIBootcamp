//
//  PaddingAndSpacer.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 19/08/2023.
//

import SwiftUI

struct PaddingAndSpacer: View {
    var body: some View {
        VStack(alignment: .leading){
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .background(Color.white)
//    //            .padding()
//                .padding(.all, 10)
//                .padding(.leading, 20)
//                .background(Color.red)
            
            Text("Hello world!")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom, 10)
            
            Text("This is the desciption of hat we will do in this. Add multiple line and align them as we wanted")
        }
        .padding()
//        .background(Color.blue)
//        .padding()
//        .background(Color.red)
//        .padding(.all, 10)
//        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.2),
                    radius: 10,
                    x:0.0,
                    y: 0.0
                )
        )
        .padding(.horizontal, 10)
        
    }
}

struct PaddingAndSpacer_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacer()
    }
}

//
//  SafeAreaBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 19/08/2023.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
            
            ScrollView{
                Text("Title")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                ForEach(0..<10){index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 300)
                        .shadow(radius: 3.0).opacity(0.6)
                        .padding(16)
                }
            }
            .background(
                Color.red
//                    .edgesIgnoringSafeArea(.all)  //old method
                    .ignoresSafeArea(edges: .all)
            )

        
//        ZStack{
//
//            //Background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            //Foreground
//            VStack{
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//        }
        
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}

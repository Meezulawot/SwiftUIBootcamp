//
//  StateBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 19/08/2023.
//

import SwiftUI

struct StateBootcamp: View {
    
   @State var backgroundColor : Color = Color.red
    
   @State var myTitle : String = "My Title"
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(.all)
            
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                
                HStack(spacing: 20){
                    
                    Button("Btn1", action: {
                        backgroundColor = .green
                        myTitle = "Btn 1 pressed"
                    })
                    
                    Button("Btn2", action: {
                        backgroundColor = .yellow
                        myTitle = "Btn 2 pressed"
                    })
                  
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}

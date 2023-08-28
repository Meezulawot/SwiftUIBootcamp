//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 19/08/2023.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
   @State var background: Color = Color.red
    
    var body: some View {
        ZStack{
            //background
            background.ignoresSafeArea(.all)
            
            
            //contents
            contentLayer
            
        }
    }
    
    var contentLayer: some View{
        VStack{
            Text("Title")
                .font(.title)
            Button(action: {
                btnPressed()
            }, label: {
                Text("Click")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(Color.black)
                    .cornerRadius(10)

            })
        }
    }
    
    func btnPressed(){
        
        background = .yellow
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}



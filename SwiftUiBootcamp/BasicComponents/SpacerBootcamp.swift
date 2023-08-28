//
//  Spacer.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 19/08/2023.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack{
            HStack(spacing: 0){
                
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(Color.orange)
                
                Rectangle()
                    .frame(width: 50, height: 50)
                
                Spacer(minLength: nil)
                    .frame(height: 10)
                    .background(Color.orange)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
                
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(Color.orange)
            }
            .padding(.horizontal, 200)
            .background(Color.blue)
            
            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
            
//            HStack(spacing: 0){
//                Image(systemName: "xmark")
//                Spacer()
//                    .frame(height: 10)
//                    .background(Color.orange)
//                Image(systemName: "gear")
//            }
//            .font(.title)
//            .padding(.horizontal)
//            .background(Color.blue)
            
            
        }
        .background(Color.yellow)
    }
}

struct Spacer_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}

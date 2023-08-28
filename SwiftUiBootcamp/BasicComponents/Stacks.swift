//
//  Stacks.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 19/08/2023.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        ZStack(alignment: .center, content: {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)

            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)

            Rectangle()
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
        })
        
//        VStack(spacing: 50){
//
//            ZStack{
//                Circle()
//                    .frame(width: 100, height: 100)
//
//                Text("1")
//                    .font(.title)
//                    .foregroundColor(.white)
//
//            }
//
//            Text("1")
//                .font(.title)
//                .foregroundColor(.white)
//                .background(
//                    Circle()
//                        .frame(width: 100, height: 100)
//                )
//
//
//            Circle()
//                .frame(width: 100, height: 100)
//                .overlay(
//                    Text("1")
//                        .font(.title)
//                        .foregroundColor(.white)
//                )
//        }
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}

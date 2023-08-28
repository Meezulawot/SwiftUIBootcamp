//
//  CorlorsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 13/08/2023.
//

import SwiftUI

struct CorlorsBootcamp: View {
    var body: some View {
        
//        var color = Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        
       RoundedRectangle(cornerRadius: 25)
//            .fill(Color.primary)
//            .fill(color)
            .fill(
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
    }
}

struct CorlorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CorlorsBootcamp()
    }
}

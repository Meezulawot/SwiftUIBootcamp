//
//  ImageBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 13/08/2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("customImage")
            .resizable()
//            .aspectRatio(contentMode: .fill)
            .scaledToFill()
            .frame(width: 300, height: 200)
//            .clipped()
//            .cornerRadius(20)
            .clipShape(
                Circle()
//                Ellipse()
//                RoundedRectangle(cornerRadius: 25.0)
            )
        
        Image("")
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}

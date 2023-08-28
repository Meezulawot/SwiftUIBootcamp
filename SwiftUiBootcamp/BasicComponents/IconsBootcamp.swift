//
//  IconsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 13/08/2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
//            .font(.system(size: 100))
//            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFill()
            .foregroundColor(Color.blue)
//            .frame(width: 300, height: 300)
//            .clipped()
            
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}

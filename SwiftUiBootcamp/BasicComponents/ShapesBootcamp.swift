//
//  ShapesBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 13/08/2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.green)
//            .foregroundColor(.blue)
//            .stroke()
//            .stroke(Color.red)
//            .stroke(Color.blue, lineWidth: 30)
//            .stroke(Color.blue, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
//            .trim(from:0.2, to:1.0)
//            .stroke(Color.purple, lineWidth: 50)
            .frame(width: 200, height: 100)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}

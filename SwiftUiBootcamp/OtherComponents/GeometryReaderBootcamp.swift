//
//  GeometryReaderBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 11/09/2023.
//

import SwiftUI

struct GeometryReaderBootcamp: View {
    
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack{
                ForEach(0..<20, content: {index in
                    GeometryReader{ geometry in
                        RoundedRectangle(cornerRadius: 10)
                            .rotation3DEffect(
                                Angle(degrees: getPercentage(geo: geometry) * 10),
                                axis: (x: 0.0, y: 1.0, z: 0.0))
                    }
                    .frame(width: 300, height: 200)
                    .padding()
                    
                })
            }
        })
        
//        GeometryReader{ geometry in
//                    HStack(spacing: 0){
//                        Rectangle()
//                            .fill(Color.red)
//                            .frame(width: geometry.size.width * 0.6)
//
//                        Rectangle()
//                            .fill(Color.blue)
//                    }
//                    .ignoresSafeArea()
//        }
        
    }
    
    func getPercentage(geo: GeometryProxy)-> Double {
        let maxDistance = UIScreen.main.bounds.width/2
        let currentX = geo.frame(in: .global).midX
        
        return Double(1 - (currentX/maxDistance))
    }
}

struct GeometryReaderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderBootcamp()
    }
}

//
//  FrameBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 13/08/2023.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(width: 120, height: 120)
            .background(Color.green)
            .frame(width: 250, height: 250, alignment: .topLeading)
            .background(Color.blue)
            .frame(maxWidth: .infinity, maxHeight: 400.0, alignment: .topLeading)
            .background(Color.yellow)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.orange)
        
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}

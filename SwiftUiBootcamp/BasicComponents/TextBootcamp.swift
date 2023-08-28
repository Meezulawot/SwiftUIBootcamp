//
//  TextBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 13/08/2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!".capitalized)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough()
//            .strikethrough(true, color: Color.green)
            
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(-50.0)    //space between lines
//            .kerning(10)        //space between letters
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 300, alignment: .center)                 //size of text box frame
        
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}

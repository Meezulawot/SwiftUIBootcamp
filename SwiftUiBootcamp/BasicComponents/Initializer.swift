//
//  Initializer.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 19/08/2023.
//

import SwiftUI

enum Fruit {
    case apple
    case orange
}

struct Initializer: View {
    
    let background: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit){
        self.count = count
        
        if fruit == .apple{
            self.title = "Apples"
            self.background = .red
        } else{
            self.title = "Oranges"
            self.background = .orange
        }
    }
    
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        
        .frame(width: 150, height: 150)
        .background(background)
        .cornerRadius(10)
    }
}

struct Initializer_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            Initializer(count: 5, fruit: .orange)
            Initializer(count: 60, fruit: .apple)
        }
    }
}

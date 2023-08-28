//
//  ExtractSubViews.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 20/08/2023.
//

import SwiftUI

struct ExtractSubViews: View {
    var body: some View {
        ZStack{
            Color.green
            
            contentLayer
        }
    }
    
    var contentLayer: some View{
        HStack{
            MyItem(title: "Apples", color: .red, count: 1)
            MyItem(title: "Oranges", color: .orange, count: 50)
            MyItem(title: "Mangoes", color: .yellow, count: 72)
        }
    }
}

struct ExtractSubViews_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViews()
    }
}


struct MyItem: View{
    
    let title: String
    let color: Color
    let count: Int
    
    var body: some View{
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}


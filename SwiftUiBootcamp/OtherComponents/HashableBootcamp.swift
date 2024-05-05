//
//  HashableBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 12/09/2023.
//

import SwiftUI

struct MyModel: Hashable{
//    var id = UUID().uuidString
    var title: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
}

struct HashableBootcamp: View {
    
    let data: [MyModel] = [
        MyModel(title: "One"),
        MyModel(title: "Two"),
        MyModel(title: "Three"),
        MyModel(title: "Four")
    ]
    
    var body: some View {
        ZStack{
            VStack{
                ForEach(data, id: \.self){item in
                    Text(item.hashValue.description)
                }
            }
        }
    }
}

struct HashableBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HashableBootcamp()
    }
}

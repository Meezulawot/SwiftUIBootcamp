//
//  NavigationStackBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 30/08/2023.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits = ["Apple", "Orange", "Mango", "Banana"]
    
    @State var stackpath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackpath){  // lazy loading of navigation important for scalable apps
            VStack(spacing: 30){
                
                ForEach(fruits, id:\.self){ fruit in
                    
                    NavigationLink(value: fruit, label: {
                        Text(fruit)
                    })
                        
                }
                
                ForEach(0..<10){x in
                    
                    NavigationLink(value: x, label: {
                        Text("Click me \(x)")
                    })
                    
//                    NavigationLink(destination: {
//                        MySecondScreen(value: x)
//                    }, label: {
//                        Text("Click me \(x)")
//                    })
                }
            }
            .navigationTitle("Navigation Stack")
            .navigationDestination(for: Int.self, destination: {value in
                MySecondScreen(value: value)
            })
            
            .navigationDestination(for: String.self, destination: { value in
                Text(value)
            })
            
        }
        
    }
}

struct MySecondScreen: View {
    
    var value: Int
    
    var body: some View {
        Text("Screen \(value)")
        
    }
}


struct NavigationStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackBootcamp()
    }
}

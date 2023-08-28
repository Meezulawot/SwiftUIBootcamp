//
//  NavigationViewBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 20/08/2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            
            VStack{
                NavigationLink("Click Me", destination: {
                    SecondScreen()
                })
                .padding()
                
                Text("Dummy Text Here")
                Text("Dummy Text Here")
                Text("Dummy Text Here")
            }
            .navigationTitle("Navigation View Demo")
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack{
                        Image(systemName: "more.fill")
                    }
                ,trailing:
                    NavigationLink(destination: {
                        SecondScreen()
                    }, label: {
                        Image(systemName: "gear")
                    })
            )
            
        }
        
    }
}


struct SecondScreen: View {
    var body: some View {
        ZStack{
            NavigationLink("Next Screen", destination:  {
                Text("Third Screen")
            })
            .navigationTitle("Second Screen")
//            .navigationBarHidden(true)
        }
        
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}

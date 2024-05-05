//
//  BadgesBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 29/08/2023.
//

import SwiftUI


//works in only list and tabview

struct BadgesBootcamp: View {
    var body: some View {
        
        List{
            if #available(iOS 15.0, *) {
                Text("Hello World")
                    .badge("New Item!")
            } else {
                // Fallback on earlier versions
            }
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
        }
        
        TabView{
            if #available(iOS 15.0, *) {
                Color.red
                    .tabItem({
                        Image(systemName: "house")
                        Text("Home")
                    })
                    .badge("5")
            } else {
                // Fallback on earlier versions
            }
            
            Color.blue
                .tabItem({
                    Image(systemName: "house")
                    Text("Home")
                })
            
            Color.green
                .tabItem({
                    Image(systemName: "house")
                    Text("Home")
                })
        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}

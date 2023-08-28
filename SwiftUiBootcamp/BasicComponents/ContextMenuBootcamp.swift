//
//  ContextMenuBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 21/08/2023.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var background: Color = Color.blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
            Text("Swiftful Thinking")
                .font(.headline)
            Text("Using Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding()
        .background(background.cornerRadius(10))
        .contextMenu(menuItems: {
            
            Button(action: {
                background = .green
            }, label: {
                Label("Share Post", systemImage: "system.fill")
            })
            
            Button(action: {
                background = .red
            }, label: {
                Text("Report Post")
            })
            
            Button(action: {
                background = .yellow
            }, label: {
                HStack{
                    Text("Like Post")
                    Image(systemName: "house.fill")
                }
            })
            
            Text("Menu Item 1")
            Text("Menu Item 2")
            Text("Menu Item 3")
            
        })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}

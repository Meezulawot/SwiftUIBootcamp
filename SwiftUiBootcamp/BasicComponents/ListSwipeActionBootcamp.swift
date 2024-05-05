//
//  ListSwipeActionBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 29/08/2023.
//

import SwiftUI

struct ListSwipeActionBootcamp: View {
    
    @State var fruits:[String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        List{
            ForEach(fruits, id: \.self){ fruit in
                if #available(iOS 15.0, *) {
                    Text(fruit.capitalized)
                        .swipeActions(edge:.trailing, allowsFullSwipe: false, content: {
                            Button("Archive"){
                                
                            }
                            .tint(.blue)
                            
                            Button("Save"){
                                
                            }
                            .tint(.green)
                            
                            Button("Delete"){
                                
                            }
                            .tint(.red)
                        })
                        .swipeActions(edge:.leading, allowsFullSwipe: true, content: {
                            Button("Archive"){
                                
                            }
                            .tint(.blue)
                           
                        })
                } else {
                    // Fallback on earlier versions
                }
                
            }
//            .onDelete(perform: deleteItem)
        }
    }
    
    func deleteItem(){
        
    }
}

struct ListSwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionBootcamp()
    }
}

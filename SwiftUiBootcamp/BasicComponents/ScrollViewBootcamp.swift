//
//  ScrollView.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 19/08/2023.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
        ScrollView{
            LazyVStack{
                ForEach(0..<10){index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack{
                            ForEach(0..<50){index in
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(.blue)
                                    .frame(width:200 ,height: 150)
                                    .padding()
                                    .shadow(radius: 8)
                                
                            }
                        }
                    })
                }
            }
        }
        
        
        
//        ScrollView(.horizontal, showsIndicators: true, content: {
//            HStack{
//                ForEach(0..<50){index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width:300 ,height: 300)
//
//                }
//            }
//        })
        
//        ScrollView(.vertical, showsIndicators: false, content: {
//            VStack{
//                ForEach(0..<50){index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(height: 300)
//
//                }
//            }
//        })
        
//        ScrollView{
//            VStack{
//                ForEach(0..<50){index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(height: 300)
//
//                }
//            }
//        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}

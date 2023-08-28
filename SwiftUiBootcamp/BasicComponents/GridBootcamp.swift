//
//  GridBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 19/08/2023.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        //        GridItem(.fixed(75), spacing: nil, alignment: nil),
        //        GridItem(.fixed(100), spacing: nil, alignment: nil),
        //        GridItem(.fixed(75), spacing: nil, alignment: nil),
        //        GridItem(.fixed(50), spacing: nil, alignment: nil)
        
//        GridItem(.flexible(), spacing: 6, alignment: nil),
//        GridItem(.flexible(), spacing: 6, alignment: nil),
//        GridItem(.flexible(), spacing: 6, alignment: nil),
        //        GridItem(.flexible(), spacing: nil, alignment: nil),
        //        GridItem(.flexible(), spacing: nil, alignment: nil)
        
                GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(Color.orange)
                .frame(height: 200)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section1").foregroundColor(.black)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .background(Color.blue)
                        .padding()
                            
                    ){
                        ForEach(0..<10) { index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 100)
                        }
                    }
                    
                    Section(header:
                                Text("Section2").foregroundColor(.black)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .background(Color.blue)
                        .padding()
                            
                    ){
                        ForEach(0..<10) { index in
                            Rectangle()
                                .fill(Color.red)
                                .frame(height: 100)
                        }
                    }
                    
                    
                })
            
            //            LazyVGrid(columns: columns, content: {
            //                ForEach(0..<50) { index in
            //                    Rectangle()
            //                        .frame(height: 150)
            //                }
            //
            //            })
        }
        
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}

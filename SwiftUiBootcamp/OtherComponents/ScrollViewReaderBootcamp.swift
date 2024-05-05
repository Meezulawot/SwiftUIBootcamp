//
//  ScrollViewReaderBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 11/09/2023.
//

import SwiftUI

struct ScrollViewReaderBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var scrolToIndex: Int = 0
    
    var body: some View {
        
        VStack {
            TextField("Enter # here:", text: $textFieldText)
                .frame(height: 55)
                .border(Color.gray)
                .padding(.horizontal)
                .keyboardType(.numberPad)
            
            Button("Scroll Now"){
                withAnimation(.spring()){ // for scrolling animation down upto the number in this condition
                    
                    if let index = Int(textFieldText){
                        scrolToIndex = index
                    }
                }
            }
            
            ScrollView{
                //scrollviewreader for automatically scrolling down upto certain positions
                ScrollViewReader{proxy in // proxy is reading the size of the scrollview
                    
                    ForEach(0..<50){ index in
                        Text("This is item: \(index)")
                            .font(.headline)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 3)
                            .padding()
                            .id(index)
                    }
                    .onChange(of: scrolToIndex, perform: {value in
                        proxy.scrollTo(value, anchor: .center)
                    })
                    
                }
                
            }
        }
    }
}

struct ScrollViewReaderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderBootcamp()
    }
}

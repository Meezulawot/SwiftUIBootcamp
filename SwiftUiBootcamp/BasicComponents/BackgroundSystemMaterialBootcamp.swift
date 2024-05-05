//
//  BackgroundSystemMaterialBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 29/08/2023.
//

import SwiftUI

struct BackgroundSystemMaterialBootcamp: View {
    var body: some View {
        VStack{
            Spacer()
            if #available(iOS 15.0, *) {
                VStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 50, height: 5)
                        .background(Color.gray)
                        .padding()
                    
                    Spacer()
                    
                    Text("Something")
                        .textSelection(.enabled)
                        
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .frame(height: 300)
                .background(.thinMaterial)
                .cornerRadius(20)
            } else {
                // Fallback on earlier versions
            }
        }
        .background(Color.blue)
        .ignoresSafeArea()
    }
}

struct BackgroundSystemMaterialBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundSystemMaterialBootcamp()
    }
}

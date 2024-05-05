//
//  ButtonStylesBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 29/08/2023.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack{
            if #available(iOS 15.0, *) {
                Button("Button Title", action: {
                    
                })
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                //            .buttonStyle(.plain)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
            } else {
                // Fallback on earlier versions
            }
            
            if #available(iOS 15.0, *) {
                Button("Button Title", action: {
                    
                })
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                //            .buttonStyle(.automatic)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.automatic)
                .controlSize(.mini)
            } else {
                // Fallback on earlier versions
            }
            
            if #available(iOS 15.0, *) {
                Button("Button Title", action: {
                    
                })
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                //            .buttonStyle(.borderless)
                .buttonStyle(.borderedProminent)
                .controlSize(.regular)
            } else {
                // Fallback on earlier versions
            }
            
            if #available(iOS 15.0, *) {
                Button("Button Title", action: {
                    
                })
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .buttonStyle(.bordered)
            } else {
                // Fallback on earlier versions
            }
            
            if #available(iOS 15.0, *) {
                Button("Button Title", action: {
                    
                })
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .buttonStyle(.borderedProminent)
                .controlSize(.small)
            } else {
                // Fallback on earlier versions
            }
        }
    }
}

struct ButtonStylesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesBootcamp()
    }
}

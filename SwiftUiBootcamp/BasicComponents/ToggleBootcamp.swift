//
//  ToggleBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 22/08/2023.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var switchedOn: Bool = false
    
    var body: some View {
        
        VStack{
            HStack{
                Text("Status:")
                Text(switchedOn ? "Online":"Offline")
            }
            
            Toggle(isOn: $switchedOn, label: {
                Text("Switch Button")
            })
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            .padding()
            .padding(.horizontal, 20)
            
            Spacer()
        }
        
        
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}

//
//  PickerBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 22/08/2023.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "2"
    
    var body: some View {
        Picker(
            selection: $selection,
            content: {
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(3)
                Text("4").tag(4)
                Text("5").tag(5)
                Text("6").tag(2)
            },
            label: {
                Text("Picker")
            })
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}

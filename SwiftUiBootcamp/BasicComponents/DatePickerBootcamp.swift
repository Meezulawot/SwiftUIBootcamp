//
//  DatePicker.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 24/08/2023.
//

import SwiftUI

struct DatePicker: View {
    
    @State var pickedDate = Date()
    
    var body: some View {
//        DatePicker("Select a date", selection: $pickedDate)
        DatePicker()
    }
}

struct DatePicker_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker()
    }
}

//
//  ResizableSheets.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 30/08/2023.
//

import SwiftUI

//@available(iOS 16.0, *)
struct ResizableSheets: View {
    
    
    
    var body: some View {
        NavigationView{
            
            VStack{
            
                NavigationLink("Next Screen", destination: TestView())
            }
            
        }
        
    }
}

struct TestView: View{
    
    @State var showBottomSheet: Bool = false
//    @State var presentationDetents: PresentationDetent = .large
    
    var body: some View{
        Button("Click Me", action: {
            showBottomSheet.toggle()
        })
        .sheet(isPresented: $showBottomSheet, content: {
            MyNextView()
//            (detents: $presentationDetents)
//                .presentationDetents([.medium])  // size of the bottomsheet
//                .presentationDetents([.fraction(0.1), .medium, .large]) // size of bottomsheet set using fraction
//                .presentationDetents([.height(500), .medium, .large]) // size set using height
//                .presentationDetents([.medium, .large], selection: $presentationDetents)
//                .presentationDragIndicator(.visible)
//                .interactiveDismissDisabled()
        })
    }
}

//@available(iOS 16.0, *)
struct MyNextView: View {
    
    @Environment(\.presentationMode) var presentationMode
//    @Binding var detents: PresentationDetent
    
    var body: some View {
        VStack {
            Button("Btn Large", action: {
//               detents = .large
            })
            
            Button("Btn Medium", action: {
//                detents = .medium
                presentationMode.wrappedValue.dismiss()
            })
        }
        .background(Color.blue)
       
    }
}

//@available(iOS 16.0, *)
struct ResizableSheets_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheets()
    }
}

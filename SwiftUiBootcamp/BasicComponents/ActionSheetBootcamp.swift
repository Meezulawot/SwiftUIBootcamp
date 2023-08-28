//
//  ActionSheetBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 21/08/2023.
//

import SwiftUI

enum ActionSheetOptions{
    case myPost
    case othersPost
}

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .othersPost
    
    var body: some View {
        
        VStack{
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                Text("Username")
                Spacer()
                Button(action: {
                    actionSheetOption = .othersPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                        .accentColor(.primary)
                })
            }
            .padding()
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
        
//        Button("Click"){
//            showActionSheet.toggle()
//        }
//        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet{
        
        let shareButton: ActionSheet.Button = .default(Text("Share"))
        let reportButton: ActionSheet.Button = .destructive(Text("Report"))
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete"))
        let cancelButton: ActionSheet.Button = .cancel()
        
        let title = Text("What woudld you like to do?")
        
        switch actionSheetOption{
        case .othersPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
            
        case .myPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton]
            )
            
        }
        
//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel()
        
//        return ActionSheet(
//            title: Text("This is action sheet"),
//            message: Text("some description"),
//            buttons: [button1, button2, button3]
//        )
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}

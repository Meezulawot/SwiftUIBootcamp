//
//  TextFieldBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 22/08/2023.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var textEditorText: String = ""
    @State var savedText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Type something here...", text: $textFieldText)
                //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .font(.headline)
                
                
                ZStack(alignment: .topLeading) {
                    
                    TextEditor(text: $textEditorText)
                        .frame(height: 250)
                        .colorMultiply(Color.white)
                        .border(Color.gray, width: 1)
                        .cornerRadius(10)
                    
                    if textEditorText.isEmpty {
                        Text("Enter something here")
                            .foregroundColor(Color(.placeholderText))
                            .padding(.horizontal, 8)
                            .padding(.vertical, 12)
                    }
                }
                .font(.body)
                
                Button(action: {
                    
                    if textIsAppropriate(){
                        saveText()
                    }
                    
                    savedText = textEditorText
                    textEditorText = ""
                    
                }, label: {
                    Text("save".uppercased())
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .padding()
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                    
                        .cornerRadius(10)
                })
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id:\.self, content: {data in
                    Text(data)
                })
                
                Text(savedText)
                
                Spacer()
                
            }
            .padding()
            .background(Color.yellow)
            .navigationTitle("Textfield Bootcamp")
        }
        
    }
    
    func textIsAppropriate() -> Bool{
        if (textFieldText).count >= 3{
            return true
        }
        return false
    }
    
    func saveText(){
        dataArray.append(textFieldText)
        textFieldText = ""
        
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}

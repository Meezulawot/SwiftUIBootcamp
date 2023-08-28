//
//  AppStorageBootcamp.swift
//  SwiftUiBootcamp
//

import SwiftUI

struct AppStorageBootcamp: View {
    
//    @State var currentUsername: String?
    @AppStorage("name") var currentUsername: String?
    
    var body: some View {
        VStack{
            Text(currentUsername ?? "Add Name Here")
            
            if let name = currentUsername{
                Text(name)
            }
            
            Button("Save".uppercased()){
                
                let name = "Emily"
                currentUsername = name
//                UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear(){
//            currentUsername = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}

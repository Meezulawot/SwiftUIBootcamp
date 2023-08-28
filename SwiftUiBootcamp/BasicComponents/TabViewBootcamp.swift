//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectionTab : Int  = 0
    
    let icons : [String] = ["globe", "house.fill", "person.fill"]
    
    var body: some View {
        
        TabView{
            
            ForEach(icons, id: \.self, content: {icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
            })
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.green)
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.yellow)
                
        }
        .background(Color.red)
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
//        TabView(selection: $selectionTab){
//
//            HomeView(selectedTab: $selectionTab)
//                .tabItem({
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                })
//                .tag(0)
//
//            Text("Browse Tab")
//                .tabItem({
//                    Image(systemName: "globe")
//                    Text("Browse")
//                })
//                .tag(1)
//
//            Text("Profile Tab")
//                .tabItem({
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                })
//                .tag(2)
//        }
//        .accentColor(.red)
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack{
            Color.red
            
            VStack {
                Text("Home Tab")
                    .foregroundColor(.white)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("To profile")
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10.0)
                })
            }
        }
    }
}

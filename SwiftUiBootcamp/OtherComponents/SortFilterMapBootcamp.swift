//
//  SortFilterMapBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 12/09/2023.
//

import SwiftUI

struct UserModel: Identifiable{
    var id = UUID().uuidString
    var name : String?
    var points : Int
    var isVerified: Bool
}

class ArrayModificationViewModel: ObservableObject{
    
    @Published var dataArray: [UserModel] = []
    @Published var filteredArray: [UserModel] = []
    @Published var mappedArray: [String] = []
    
    init(){
        getUsers()
        updateFilteredArray()
    }
    
    func updateFilteredArray(){
        //sort
        /*
        filteredArray = dataArray.sorted{(user1, user2) -> Bool in
            return user1.points > user2.points
        }
        
        filteredArray = dataArray.sorted(by: {$0.points > $1.points})
         */
        
        //filter
        /* filter
        filteredArray = dataArray.filter({ (user) -> Bool in
            return user.isVerified

        })
        
        filteredArray = dataArray.filter({$0.isVerified})
         */
        
        //map
        /*
        mappedArray = dataArray.map({ (user) -> String in
            return user.name ?? "Error"
        })
        
        mappedArray = dataArray.map({$0.name})
         */
        
        //compactMap
        /*
        mappedArray = dataArray.compactMap({ (user) -> String? in
            return user.name
        })
        
        mappedArray = dataArray.compactMap({$0.name}
         */
        
        
        let sort = dataArray.sorted(by: {$0.points > $1.points})
        let filter = dataArray.filter({$0.isVerified})
        let map = dataArray.map{$0.name}
        
        mappedArray = dataArray.sorted(by: {$0.points > $1.points}).filter({$0.isVerified}).compactMap({$0.name})
        
    }
    
    func getUsers(){
        let user1 = UserModel(name: "Olive", points: 1, isVerified: true)
        let user2 = UserModel(name: "John", points: 20, isVerified: false)
        let user3 = UserModel(name: "Dibbles", points: 12, isVerified: false)
        let user4 = UserModel(name: "Nick", points: 16, isVerified: true)
        let user5 = UserModel(name: nil, points: 7, isVerified: true)
        let user6 = UserModel(name: "Meredith", points: 15, isVerified: false)
        let user7 = UserModel(name: "Emily", points: 6, isVerified: true)
        let user8 = UserModel(name: nil, points: 10, isVerified: true)
        let user9 = UserModel(name: "Sam", points: 2, isVerified: true)
        let user10 = UserModel(name: "Emily", points: 18, isVerified: false)
        
        self.dataArray.append(contentsOf: [
            user1,
            user2,
            user3,
            user4,
            user5,
            user6,
            user7,
            user8,
            user9,
            user10
        ])
    }
}

struct SortFilterMapBootcamp: View {
    
    @State var vm = ArrayModificationViewModel()
    
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                
                ForEach(vm.mappedArray, id: \.self){ name in
                    Text(name)
                }
                
//                ForEach(vm.filteredArray){ user in
//                    VStack(alignment: .leading) {
//                        Text(user.name)
//                        HStack{
//                            Text("Points: \(user.points)")
//                            Spacer()
//                            if user.isVerified{
//                                Image(systemName: "house.fill")
//                            }
//                        }
//                    }
//                    .padding()
//                    .background(Color.blue)
//                    .cornerRadius(10)
//                    .foregroundColor(Color.white)
//                    .padding(.horizontal)
//                }
            }
        }
    }
}

struct SortFilterMapBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SortFilterMapBootcamp()
    }
}

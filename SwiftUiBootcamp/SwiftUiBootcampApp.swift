//
//  SwiftUiBootcampApp.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 13/08/2023.
//

import SwiftUI

@main
struct SwiftUiBootcampApp: App {
    @Environment(\.scenePhase) var scenePhase
    

    var body: some Scene {
        WindowGroup {
            ResizableSheets()
//            if #available(iOS 15.0, *) {
//                FocusStateBootcamp()
//            } else {
//                // Fallback on earlier versions
//            }
        }
        .onChange(of: scenePhase, perform: { phase in
            switch phase{
                
            case .background:
                print("background Phase")
            case .inactive:
                print("inactive Phase")
            case .active:
                print("active Phase")
            @unknown default:
                print("default Phase")
            }
        })
    }
}

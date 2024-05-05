//
//  DragGestureBootcamp2.swift
//  SwiftUiBootcamp
//
//  Created by Meezu Lawot on 11/09/2023.
//

import SwiftUI

struct DragGestureBootcamp2: View {
    
    @State var startingOffSetY: CGFloat = UIScreen.main.bounds.height * 0.85
    @State var currentDragOffSetY: CGFloat = 0.0
    @State var endingOffSetY: CGFloat = 0.0
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            
            SignUpView()
                .offset(y: startingOffSetY)
                .offset(y: currentDragOffSetY)
                .offset(y: endingOffSetY)
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            withAnimation(.spring()){
                                currentDragOffSetY = value.translation.height
                            }
                        }
                    
                        .onEnded{value in
                            
                            withAnimation(.spring()){
                                if currentDragOffSetY < -150 {
                                    endingOffSetY = -startingOffSetY
                                    
                                }else if endingOffSetY != 0 && currentDragOffSetY > 150{
                                    endingOffSetY = 0
                                }
                                currentDragOffSetY = 0
                            }
                        }
                )
            
            Text("\(currentDragOffSetY)")
        }
        .ignoresSafeArea(edges: .bottom)
    
    }
}

struct DragGestureBootcamp2_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureBootcamp2()
    }
}

struct SignUpView: View {
    var body: some View {
        VStack(spacing: 20){
            Image(systemName: "chevron.up")
                .padding(.top)
            Text("Sign Up")
                .font(.headline)
                .fontWeight(.semibold)
            Image(systemName: "house.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Text("This is the description of the app created to implement the gesture draggesture , magnifying gesture and rotation gesture !!")
                .multilineTextAlignment(.center)
            Text("Create an account".uppercased())
                .font(.headline)
                .padding()
                .padding(.horizontal)
                .foregroundColor(Color.white)
                .background(Color.black.cornerRadius(10))
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.blue)
        .cornerRadius(20)
    }
}

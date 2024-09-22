//
//  ButtonBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 16/9/24.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    var body: some View {
        VStack(spacing: 50) {
            Button {
                print("hello")
            } label: {
                Text("finish!".uppercased())
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Capsule()
                    )
            }
            
            Button(action: {
                print("Hi")
            }, label: {
                Text("Tap!")
                    .foregroundStyle(.white)
                    .font(.system(size: 40, weight: .heavy))
                    .frame(width: 150, height: 150)
                    .background(.blue)
                    .clipShape(Circle())
                    .shadow(radius: 10)
            })
            
            Button(action: {
                
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .foregroundStyle(.red)
                            .font(.largeTitle)
                    )
            })
            
//            Button("sign in") {
//                print("sign in")
//            }
        }
    }
}

#Preview {
    ButtonBootcamp()
}

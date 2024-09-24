//
//  AnimationTimingBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 24/9/24.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimated = false
    
    var body: some View {
        VStack {
            Button {
                isAnimated.toggle()
            } label: {
                    Text("Press!")
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .padding()
                        .padding(.horizontal)
                        .background(.blue)
                        .clipShape(Capsule())
            }
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimated ? .infinity : 100, height: 50)
                .padding(.horizontal)
                .animation(
                    .spring(response: 1, dampingFraction: 0.5)
                    , value: isAnimated)
            
//            RoundedRectangle(cornerRadius: 25)
//                .frame(width: isAnimated ? .infinity : 100, height: 50)
//                .animation(
////                    .linear
//                    .linear(duration: 1)
//                    , value: isAnimated)
//            
//            RoundedRectangle(cornerRadius: 25)
//                .frame(width: isAnimated ? .infinity : 100, height: 50)
//                .animation(.easeIn(duration: 1), value: isAnimated)
//            
//            RoundedRectangle(cornerRadius: 25)
//                .frame(width: isAnimated ? .infinity : 100, height: 50)
//                .animation(.easeInOut, value: isAnimated)
//            
//            RoundedRectangle(cornerRadius: 25)
//                .frame(width: isAnimated ? .infinity : 100, height: 50)
//                .animation(.easeOut, value: isAnimated)
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}

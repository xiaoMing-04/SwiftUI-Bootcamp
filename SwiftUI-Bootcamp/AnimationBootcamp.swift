//
//  AnimationBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 23/9/24.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated = false
    
    var body: some View {
        VStack(spacing: 250) {
            Button {
//                withAnimation(
//                    Animation.default
////                        .delay(0.25)
////                        .repeatCount(5, autoreverses: true)
////                        .repeatForever(autoreverses: true)
//                ) {
//                    isAnimated.toggle()
//                }
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
            RoundedRectangle(cornerRadius: isAnimated ? 75 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(width: 200, height: 200)
                .rotationEffect(Angle(degrees: isAnimated ? 180 : 0))
                .offset(y: isAnimated ? 150 : 0)
                .animation(
                    Animation.default
                    , value: isAnimated)
        }
    }
}

#Preview {
    AnimationBootcamp()
}

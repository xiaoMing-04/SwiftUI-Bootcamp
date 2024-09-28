//
//  TransitionBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 24/9/24.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showViewed = false
    
    var body: some View {
        ZStack {
            Button("Press!") {
                withAnimation(.easeInOut(duration: 1)) {
                    showViewed.toggle()
                }
//                showViewed.toggle()
            }
                .zIndex(1)
            
            if showViewed {
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: 100)
                    .transition(
//                        .slide
//                        .move(edge: .bottom)
//                        .scale.animation(.easeInOut)
//                        AnyTransition.opacity.animation(.easeInOut(duration: 1))
//                        AnyTransition.scale.animation(.easeInOut)
                        .asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom))
                    )
            }
        }
            
    }
}

#Preview {
    TransitionBootcamp()
}

//
//  30.PopoverBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 27/9/24.
//

import SwiftUI

struct _0_PopoverBootcamp: View {
    @State var showViewd = false
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            Button("Press!") {
//                withAnimation(.spring) {
//                    showViewd.toggle()
//                }
                showViewd.toggle()
            }
            .font(.largeTitle)
            .padding()
            .background(.white)
            
            // METHOD 1 - SHEET
            //            .sheet(isPresented: $showViewd, content: {
            //                NewScreen()
            //            })
            
            // METHOD 2 - TRANSITION
//            VStack {
//                
//                if showViewd {
//                    NewScreen(showViewd: $showViewd)
//                        .transition(
//                            .move(edge: .bottom)
//                        )
//                }
//            }.animation(.spring, value: showViewd)
        }
    }
}


struct NewScreen: View {
    
//    @Environment(\.dismiss) var dismiss
    @Binding var showViewd: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            
            Button(action: {
                showViewd.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .padding()
            })
        }
    }
}

#Preview {
    _0_PopoverBootcamp()
//    NewScreen()
}

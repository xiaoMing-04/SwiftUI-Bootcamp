//
//  29.SheetsBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 27/9/24.
//

import SwiftUI

struct _9_SheetsBootcamp: View {
    
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            
            Color.green
                .ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Press!")
                    .font(.system(size: 40))
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.white)
                    )
            })
//            .sheet(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            .fullScreenCover(isPresented: $showSheet, content: {
                // do not add any conditional logic here
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            Color.white
                .ignoresSafeArea()
            
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
            })
        }
        .padding()
    }
}

#Preview {
    _9_SheetsBootcamp()
//    SecondScreen()
}

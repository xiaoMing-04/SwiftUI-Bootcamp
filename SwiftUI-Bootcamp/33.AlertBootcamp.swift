//
//  33.AlertBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 29/9/24.
//

import SwiftUI

struct _3_AlertBootcamp: View {
    
    @State var showAlert = false
    @State var backgroundColor = Color.white
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            
            Button("Click here") {
                showAlert.toggle()
            }
            //        .alert("Error", isPresented: $showAlert) {
            //            Button("OK", role: .cancel) {  }
            //            Button("No", role: .destructive) { }
            //        }
            .alert("Change background", isPresented: $showAlert) {
                Button("OK", role: .cancel) {
                    backgroundColor = Color.black
                }
                Button("No", role: .destructive) {
                    
                }
            } message: {
                Text("If you change background color...😍")
//                emoji -> ctrl + cmd + spacebar
            }
        }
    }
}

#Preview {
    _3_AlertBootcamp()
}

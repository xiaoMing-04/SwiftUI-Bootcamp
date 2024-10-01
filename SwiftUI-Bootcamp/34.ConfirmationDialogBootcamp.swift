//
//  34.ActionSheetBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 1/10/24.
//

import SwiftUI

struct _4_ConfirmationDialogBootcamp: View {
    
    @State var showAction = false
    
    var body: some View {
        Button("Click me") {
            showAction.toggle()
        }
        .confirmationDialog("This is a title", isPresented: $showAction) {
//            Button("OK", role: .cancel) { }
//            Button("Cancle", role: .destructive) { }
            ButtonView
        } message: {
            Text("This is a content.")
        }
    }
    
    var ButtonView: some View {
        VStack {
            Button("Cancle", role: .cancel) { }
            Button("OK 1", role: .destructive) { }
            Button("OK 2", role: .destructive) { }
        }
    }
}

#Preview {
    _4_ConfirmationDialogBootcamp()
}

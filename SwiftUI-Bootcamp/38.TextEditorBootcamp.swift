//
//  38.TextEditorBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 2/10/24.
//

import SwiftUI

struct _8_TextEditorBootcamp: View {
    
    @State var text = "This is some text here."
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $text)
                    .frame(height: 300)
                    .scrollContentBackground(.hidden) // we cannot change the background color of 'TextEditor' directly, first we have to hide the default background using this code, then apply background.
                    .background(.black.opacity(0.3))
                    .foregroundStyle(.white)
                Spacer()
                Text(text)
            }
            .navigationTitle("Text Editor")
            .padding()
            .background(.green)
        }
    }
}

#Preview {
    _8_TextEditorBootcamp()
}

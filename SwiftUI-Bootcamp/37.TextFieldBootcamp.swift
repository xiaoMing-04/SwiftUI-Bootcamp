//
//  37.TextFieldBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 1/10/24.
//

import SwiftUI

struct _7_TextFieldBootcamp: View {
    
    @State var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Type something here...", text: $text)
//                .textFieldStyle(.roundedBorder)
                .padding()
                .background(.gray.opacity(0.3))
                .foregroundStyle(.blue)
                .onSubmit {
                    if textValidate() {
                        text = ""
                    }
                }
            Text(text)
        }
    }
    
    func textValidate() -> Bool {
        if text.count >= 5 {
            return true
        }
        return false
    }
}

#Preview {
    _7_TextFieldBootcamp()
}

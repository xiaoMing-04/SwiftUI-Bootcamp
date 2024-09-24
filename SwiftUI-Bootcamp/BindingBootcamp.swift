//
//  BindingBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 22/9/24.
//

import SwiftUI

struct ParrentView: View {
    
    @Binding var text: String
    
    var body: some View {
        Text(text)
    }
}

struct BindingBootcamp: View {
    
    @State var text = "Hello, Minh!"
    
    var body: some View {
        ParrentView(text: $text)
    }
}

#Preview {
    BindingBootcamp()
}

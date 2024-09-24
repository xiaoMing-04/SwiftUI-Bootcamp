//
//  ExtractingBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 22/9/24.
//

import SwiftUI

struct ExtractingBootcamp: View {
    
    var body: some View {
        VStack {
            Text("Hello!")
            ExtractedView()
        }
    }
}

#Preview {
    ExtractingBootcamp()
}

struct ExtractedView: View {
    var body: some View {
        HStack {
            Text("Hi!")
            Text("What?")
        }
    }
}

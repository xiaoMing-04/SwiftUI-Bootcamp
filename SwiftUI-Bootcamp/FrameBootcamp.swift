//
//  FrameBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 12/9/24.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .frame(width: 100)
            .background(.red)
            .frame(width: 150)
            .background(.green)
            .frame(height: 100)
            .background(.blue)
            .frame(width: 200, height: 200, alignment: .bottomTrailing)
            .background(.orange)
            .frame(width: 300, height: 300, alignment: .topLeading)
            .border(.pink, width: 5)
    }
}

#Preview {
    FrameBootcamp()
}

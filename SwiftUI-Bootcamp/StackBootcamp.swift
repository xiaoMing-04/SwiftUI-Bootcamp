//
//  StackBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 14/9/24.
//

import SwiftUI

struct StackBootcamp: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
                .zIndex(0)
            Rectangle()
                .fill(.blue)
                .frame(width: 50, height: 50)
        }
    }
}

#Preview {
    StackBootcamp()
}

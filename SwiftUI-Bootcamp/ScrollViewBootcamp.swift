//
//  ScrollViewBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 15/9/24.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(1..<20) { _ in
                    Rectangle()
                        .fill(.red)
                        .frame(width: 100, height: 100)
                        .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}

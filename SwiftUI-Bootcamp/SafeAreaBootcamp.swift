//
//  SafeAreaBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 16/9/24.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ScrollView {
            Text("Large Title")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            LazyVStack(spacing: 20) {
                ForEach(1..<50) { _ in
                    Rectangle()
                        .fill(.white)
                        .frame(width: .infinity, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .padding(.horizontal, 10)
                        .shadow(radius: 10)
                }
            }
        }
        .background(.blue)
//        .ignoresSafeArea()
        // is set by default
    }
}

#Preview {
    SafeAreaBootcamp()
}

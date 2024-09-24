//
//  StateBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 22/9/24.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State private var backgroundColor = Color.white
    
    var body: some View {
        HStack {
            Button {
                backgroundColor = Color.black
            } label: {
                Text("Dark")
                    .foregroundStyle(.orange)
                    .padding(.horizontal)
                    .background(
                        Capsule()
                    )
            }
            Button {
                backgroundColor = Color.white
            } label: {
                Text("Light")
                    .foregroundStyle(.orange)
                    .padding(.horizontal)
                    .background(
                        Capsule()
                    )
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor)
    }
}

#Preview {
    StateBootcamp()
}

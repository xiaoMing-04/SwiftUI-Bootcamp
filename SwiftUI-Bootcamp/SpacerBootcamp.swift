//
//  SpacerBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 15/9/24.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 100, height: 100)
            Spacer(minLength: 10)
            Rectangle()
                .frame(width: 100, height: 100)
        }
        .foregroundStyle(.red)
    }
}

#Preview {
    VStack {
        SpacerBootcamp()
        SpacerBootcamp()
    }
}

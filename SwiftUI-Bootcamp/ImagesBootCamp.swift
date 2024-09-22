//
//  ImagesBootCamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 11/9/24.
//

import SwiftUI

struct ImagesBootCamp: View {
    var body: some View {
        VStack {
            Image("avatar")
                //.renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                //.foregroundStyle(.red)
                //.clipShape(RoundedRectangle(cornerRadius: 50))
                //.overlay(RoundedRectangle(cornerRadius: 50).stroke(.red, lineWidth: 5))
                .frame(width: 300, height: 200)
        }
    }
}

#Preview {
    ImagesBootCamp()
}

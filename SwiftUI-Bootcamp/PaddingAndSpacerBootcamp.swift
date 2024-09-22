//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 14/9/24.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            //            .padding(30)
            //            .padding(.vertical, 30)
            //            .padding(.horizontal, 30)
            //            .padding(.leading, 50)
            
            //            .background(.blue.opacity(0.4))
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .background(
            Color.white
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .shadow(color: .black.opacity(0.4), radius: 10, y: 10)
        )
        .padding()
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}

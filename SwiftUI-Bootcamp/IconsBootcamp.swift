//
//  ContentView.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 11/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.fill.badge.plus")
                .renderingMode(.original)
                //.resizable()
                //.aspectRatio(contentMode: .fit)
                //.scaledToFit()
                //.scaledToFill()
                //.font(.largeTitle)
                .font(.system(size: 50))
                .foregroundStyle(.blue)
                //.frame(width: 100, height: 100)
                //.clipped()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

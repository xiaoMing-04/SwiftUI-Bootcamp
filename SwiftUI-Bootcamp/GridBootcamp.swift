//
//  GridBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 16/9/24.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 1, pinnedViews: [.sectionHeaders], content: {
                Section {
                    ForEach(0..<30) { _ in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 1")
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue)
                        .padding(.vertical)
                }

            })
            .padding()
        }
    }
}

#Preview {
    GridBootcamp()
}

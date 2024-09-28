//
//  ListBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 28/9/24.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits = [
        "banana", "orange", "apple", "coconut"
    ]
    
    var body: some View {
        List {
            Section {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                }
                .onDelete(perform: { indexSet in
                    fruits.remove(atOffsets: indexSet)
                })
            } header: {
                Text("Fruits")
            }
        }
    }
}

#Preview {
    ListBootcamp()
}

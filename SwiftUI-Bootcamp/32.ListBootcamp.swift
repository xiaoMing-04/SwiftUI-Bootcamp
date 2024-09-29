//
//  32.ListBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 29/9/24.
//

import SwiftUI

struct _2_ListBootcamp: View {
    @State var fruits = [
        "banana", "orange", "apple", "coconut"
    ]
    
    @State var isExpanded = true
    // need to add isExpanded and listStyle to collapse list
    
    var body: some View {
        NavigationStack {
            List {
                Section(isExpanded: $isExpanded) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
//                        .onDelete(perform: { indexSet in
//                            fruits.remove(atOffsets: indexSet)
//                        })
                    .onDelete(perform: delete)
                    .onMove(perform: move)
//                    .listRowBackground(Color.blue) // place afterward
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                }
                
                Section(isExpanded: $isExpanded) {
                    Text("Bong cuoi")
                    Text("Can sa")
                    ForEach(0..<10) { _ in
                        Text("hello")
                    }
                } header: {
                    Text("Mai Thuy")
                }

            }
            .navigationTitle("Grocery List")
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        fruits.append("mango")
                    }
                }
            })
            .listStyle(.sidebar)
        }
//        .tint(.red) color of the accent color
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
}

#Preview {
    _2_ListBootcamp()
}

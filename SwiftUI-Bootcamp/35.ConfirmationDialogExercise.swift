//
//  35.ConfirmationDialogExercise.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 1/10/24.
//

import SwiftUI

struct _5_ConfirmationDialogExercise: View {
    
    @State var fruits = ["Apple", "Orange", "Coconut", "Mango"]
    @State var isConfirm = false
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(fruits, id: \.self) {fruit in
                        Text(fruit)
                    }
                    .onDelete(perform: delete)
                } header: {
                    Text("Fruits type A")
                }
            }.navigationTitle("Fruits")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        EditButton()
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Add") {
                            isConfirm.toggle()
                        }
                        .confirmationDialog("Add Item", isPresented: $isConfirm) {
                            confirmView
                        }
                    }
                }
        }
    }
    
    var confirmView: some View {
        VStack {
            Button("Cancle", role: .cancel) {
                isConfirm.toggle()
            }
            Button("OK", role: .destructive) {
                fruits.append("fruit A")
                isConfirm.toggle()
            }
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
}

#Preview {
    _5_ConfirmationDialogExercise()
}

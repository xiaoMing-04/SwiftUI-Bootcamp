//
//  31.NavigationViewBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 28/9/24.
//

import SwiftUI

struct _1_NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
                NavigationLink("click here") {
                    SecondScreen1()
                }
                
                ForEach(0..<10) { _ in
                    Text("Hello")
                }
            }.navigationTitle("AAA")
//                .navigationBarTitleDisplayMode(.inline)
//                .toolbar(.hidden, for: .navigationBar)
                .toolbar {
                    ToolbarItemGroup(placement: .topBarLeading) {
                        NavigationLink {
                            
                        } label: {
                            Image(systemName: "person.fill")
                        }
                    }
                    ToolbarItemGroup(placement: .topBarTrailing) {
                        NavigationLink {
                            
                        } label: {
                            Image(systemName: "gear")
                        }
                    }
                }
            
        }
    }
}

struct SecondScreen1: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Button("Back!") {
                dismiss()
            }
        }.navigationTitle("Second Screen")
            .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    _1_NavigationViewBootcamp()
}

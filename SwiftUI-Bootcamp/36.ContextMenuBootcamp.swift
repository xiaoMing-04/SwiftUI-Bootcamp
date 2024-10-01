//
//  36.ContextMenuBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 1/10/24.
//

import SwiftUI

struct _6_ContextMenuBootcamp: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 7) {
            Image(systemName: "house.fill")
                .font(.largeTitle)
            Text("SwiftUI")
                .font(.title)
                .fontWeight(.bold)
            Text("How to use Context Menu")
                .fontWeight(.medium)
        }
        .foregroundStyle(.white)
        .padding(25)
        .background(.blue)
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
        .contextMenu(ContextMenu(menuItems: {
//            Button("Delete", role: .destructive) { }
            menuItems
        }))
    }
    
    var menuItems: some View {
        VStack {
            Button("Share", systemImage: "person.fill") { }
            Button("Add", role: .cancel) { }
            Button("Delete", role: .destructive) { }
        }
    }
}

#Preview {
    _6_ContextMenuBootcamp()
}

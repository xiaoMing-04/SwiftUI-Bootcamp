//
//  41.PickerExample.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 2/10/24.
//

import SwiftUI

struct _1_PickerExample: View {
    
    let content = ["Most Liked", "Liked", "Disliked"]
    @State var status = "Most Liked"
    
    var body: some View {
        VStack {
            Menu {
                Picker("Filters", selection: $status) {
                    ForEach(content, id: \.self) { item in
                        HStack {
                            Text(item)
                            Image(systemName: "heart.fill")
                        }.tag(item)
                    }
                }
            } label: {
                Text("Filters")
            }
        }
        Text(status)
    }
//  The issue is that now the label (content of label) won't show If we just placed the picker on it's own, we have to place it in a menu.
}

#Preview {
    _1_PickerExample()
}

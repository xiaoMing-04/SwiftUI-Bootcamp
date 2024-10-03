//
//  39.ToggleBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 2/10/24.
//

import SwiftUI

struct _9_ToggleBootcamp: View {
    
    @State var isOn = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text(isOn ? "On" : "Off")
            })
            .padding(.horizontal, 100)
//            .toggleStyle(.button)
            .tint(.yellow)
        }
    }
}

#Preview {
    _9_ToggleBootcamp()
}

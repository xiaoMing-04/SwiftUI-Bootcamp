//
//  40.PickerBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 2/10/24.
//

import SwiftUI

struct _0_PickerBootcamp: View {
    
    @State var num = 2
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("People", selection: $num) {
                    ForEach(2..<10) { number in
                        Text("\(number)").tag(number)
                    }
                }
                .pickerStyle(
//                    .navigationLink
                    .automatic
                )
            }
            Text("\(num)")
        }
    }
}

#Preview {
    _0_PickerBootcamp()
}

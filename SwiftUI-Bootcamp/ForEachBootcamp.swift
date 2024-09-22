//
//  ForEachBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 15/9/24.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [Int] = [5, 4, 3, 2, 1]
    
    var body: some View {
        List {
            ForEach(data.indices, id: \.self) { index in
                Text("\(index): \(data[index])")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}

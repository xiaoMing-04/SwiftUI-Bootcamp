//
//  Background&OverplayBootcamp.swift
//  SwiftUI-Bootcamp
//
//  Created by Nguyễn Minh on 12/9/24.
//

import SwiftUI

struct Background_OverplayBootcamp: View {
    
    let color1 = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
//    let color2 = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
    
    var body: some View {
//        Text("Hello, World!")
//            .frame(width: 100, height: 100)
//            .background(
////                Circle()
////                    .fill(.blue)
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(.radialGradient(colors: [.red, .blue], center: .center, startRadius: 20, endRadius: 60))
        
//                    .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(.linearGradient(colors: [.green, .pink], startPoint: .leading, endPoint: .trailing), lineWidth: 5))
//            )
        
//        Circle()
//            .fill(.pink)
//            .frame(width: 300, height: 300)
//            .overlay(
//                Text("Hello")
//                    .font(.largeTitle)
//                    .fontWeight(.heavy)
//                    .foregroundStyle(.white)
//            )
//            .overlay(Circle().stroke(.purple, lineWidth: 10))
        
        Image(systemName: "heart.fill")            .font(.system(size: 40))
            .scaledToFit()
            .foregroundStyle(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [.pink, .purple], startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .black, radius: 10)
                    .overlay(
                        Circle()
                            .fill(.red)
                            .frame(width: 30, height: 30)
                            .overlay {
                                Text("9")
                                    .foregroundStyle(.white)
                                    .font(.headline)
                            }
                            .shadow(radius: 5)
                        , alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    Background_OverplayBootcamp()
}

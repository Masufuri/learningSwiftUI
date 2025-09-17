//
//  Layout.swift
//  LearnSwiftUI
//
//  Created by Chien on 17/9/25.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .background(.yellow)
            Text("Hello, World!")
                .background(.yellow)
            Text("Hello, World!")
                .background(.yellow)
            Text("Hello, World!")
                .background(.yellow)
            Text("Hello, World!")
                .background(.yellow)
        }
        .frame(maxWidth: .infinity, minHeight: 100,
               alignment: .topLeading)
        .background(.blue)
        .clipped()
        
        Image(.frame2147225982)
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(alignment:.bottom) {
                Text("hello")
                    .bold()
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .background(.blue)
                    .clipShape(Capsule())
//                    .offset(x: 0, y: 0)
            }
    }
}

#Preview {
    Layout()
}

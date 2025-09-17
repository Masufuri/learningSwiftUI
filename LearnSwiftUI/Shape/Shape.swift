//
//  Shape.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 17/9/25.
//

import SwiftUI

struct Shape: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack {
            Capsule(style: .circular)
                .frame(width: 100, height: 50)
            Capsule(style: .continuous)
                .frame(width: 100, height: 50)
            Circle()
                .frame(width: 50, height: 50)
            Rectangle()
                .frame(width: 100, height: 50)
            RoundedRectangle(cornerRadius: 20, style: .circular)
                .frame(width: 100, height: 50)
            Image(.frame2147225982)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 50, height: 50)
                
        }
    }
}

#Preview {
    Shape()
}

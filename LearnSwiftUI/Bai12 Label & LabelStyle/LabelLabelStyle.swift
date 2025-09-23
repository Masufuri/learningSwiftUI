//
//  LabelLabelStyle.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 23/9/25.
//

import SwiftUI

struct LabelLabelStyle: View {
    var body: some View {
        VStack {
            Label("Pick a Colour", systemImage: "paintpalette")
            Label("hello", image: "tasbih_ball_1")
            Link(destination: URL(string: "http://google.com")!) {
                Label {
                    Text("Hello")
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .font(.system(size: 19, weight: .bold))
                        .background(.red)
                        
                        .clipShape(Capsule())
                } icon: {
                    Image(.tasbihBall1)
                        .resizable()
                        .frame(width: 70, height: 70)
                    
                }
            }
            
            
            Label("hello", image: "tasbih_ball_1")
                .labelStyle(CapsuleStyle())
            
            Label("hello", image: "tasbih_ball_1")
                .labelStyle(StrongCapsuleStyle(color: .white))
            
            Label("hello", image: "tasbih_ball_1")
                .labelStyle(.capsule)
            
            Label("hello", image: "tasbih_ball_1")
                .labelStyle(.strongCapsule(color: .red))
            
            Label("hello", image: "tasbih_ball_1")
                .labelStyle(.strongCapsule(color: .green))
                .labelStyle(.titleOnly)

        }
    }
}

#Preview {
    LabelLabelStyle()
}
